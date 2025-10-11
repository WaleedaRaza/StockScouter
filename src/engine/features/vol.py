from __future__ import annotations

from math import sqrt
from typing import Optional

import torch

from ..data.contracts import OptionRecord
from ..sim.mc_gpu import simulate_terminal_prices_lognormal, bs_call_price_torch


def rv_hat_to_daily_sigma(rv_hat_annualized: float) -> float:
    if rv_hat_annualized is None or rv_hat_annualized <= 0:
        return 0.0
    return rv_hat_annualized / sqrt(252.0)


def compute_iv_rv_edge(option: OptionRecord, rv_hat_annualized: float) -> float:
    """IV–RV edge = IV_τ - RV̂_τ (both annualized, decimals)."""
    if option.iv is None:
        return 0.0
    return float(option.iv - (rv_hat_annualized or 0.0))


def compute_theta_sharpe(
    option: OptionRecord,
    rv_hat_annualized: float,
    tau_days: int,
    n_paths: int = 4096,
    device: Optional[str] = None,
) -> float:
    """Theta Sharpe = expected_theta / stdev(MTM_PnL).

    - expected_theta: for a covered call short, approximate as (-theta_per_day) * tau_days if theta is per day for long option.
    - stdev(MTM_PnL): estimated from lognormal MC of daily mark-to-market of the covered call over τ.
    """
    if option.greeks is None or option.greeks.theta is None:
        return 0.0

    theta_per_day_for_long = option.greeks.theta
    expected_theta_for_short = -theta_per_day_for_long * float(tau_days)

    # estimate MTM variance by simulating terminal prices and proxying MTM noise via terminal PnL dispersion
    sigma_ann = rv_hat_annualized
    if sigma_ann is None or sigma_ann <= 0:
        return 0.0
    sigma_daily = rv_hat_to_daily_sigma(sigma_ann)

    S0 = float(option.underlying_price)
    ST = simulate_terminal_prices_lognormal(
        spot=S0, sigma_annualized=sigma_ann, tau_days=tau_days, n_paths=n_paths, device=device
    )

    # Price call at start and payoff at expiry as MTM proxy
    T_years = tau_days / 365.0
    call0 = bs_call_price_torch(
        torch.tensor([S0], device=ST.device),
        torch.tensor([option.strike], device=ST.device),
        torch.tensor([option.iv or sigma_ann], device=ST.device),
        torch.tensor([T_years], device=ST.device),
    )[0]
    payoff = torch.clamp(ST - option.strike, min=0.0)

    # Covered call short MTM proxy: premium - payoff
    pnl = call0 - payoff
    stdev_mtm = float(torch.std(pnl).cpu())
    if stdev_mtm == 0.0:
        return 0.0
    return float(expected_theta_for_short / stdev_mtm)


def compute_short_convexity_cost(
    option: OptionRecord,
    rv_hat_annualized: float,
    tau_days: int,
    n_paths: int = 16384,
    device: Optional[str] = None,
) -> float:
    """Short Convexity Cost (SCC): expected convexity bite over τ.

    Proxy via MC as: E[call payoff] - (intrinsic0 + delta0 * (E[S_T]-S_0))
    where delta0 is from chain if available; otherwise 0.
    """
    if rv_hat_annualized is None or rv_hat_annualized <= 0:
        return 0.0
    S0 = float(option.underlying_price)
    ST = simulate_terminal_prices_lognormal(
        spot=S0, sigma_annualized=rv_hat_annualized, tau_days=tau_days, n_paths=n_paths, device=device
    )
    payoff = torch.clamp(ST - option.strike, min=0.0)
    e_payoff = float(torch.mean(payoff).cpu())

    intrinsic0 = max(S0 - option.strike, 0.0)
    delta0 = option.greeks.delta if option.greeks and option.greeks.delta is not None else 0.0
    e_ST = float(torch.mean(ST).cpu())
    convexity_proxy = e_payoff - (intrinsic0 + float(delta0) * (e_ST - S0))
    return max(convexity_proxy, 0.0)


def compute_skew_tax_zscore(skew_series) -> float:
    """z-score of 25Δ call IV minus ATM IV versus lookback history.
    Placeholder: expects a pandas Series; returns last z-score or 0.0 if invalid.
    """
    try:
        import pandas as pd  # local import to keep base deps light

        if skew_series is None or len(skew_series) < 10:
            return 0.0
        s = pd.Series(skew_series).astype(float)
        z = (s.iloc[-1] - s.mean()) / (s.std(ddof=1) + 1e-12)
        return float(z)
    except Exception:
        return 0.0


def compute_vol_of_vol(iv_series) -> float:
    """stdev of tenor IV over lookback window as vol-of-vol penalty input."""
    try:
        import numpy as np

        if iv_series is None or len(iv_series) < 5:
            return 0.0
        arr = np.asarray(iv_series, dtype=float)
        return float(arr.std(ddof=1))
    except Exception:
        return 0.0


