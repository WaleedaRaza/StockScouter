from __future__ import annotations

from dataclasses import dataclass
from typing import Iterable, List, Optional, Tuple

import torch

from ..data.contracts import OptionRecord
from ..sim.mc_gpu import simulate_terminal_prices_lognormal


@dataclass
class CCLineSpec:
    option: OptionRecord
    contracts: int
    shares_per_contract: int = 100
    cost_basis_per_share: Optional[float] = None
    rv_hat_annualized: Optional[float] = None
    tau_days: Optional[int] = None


def _covered_call_terminal_pnl_paths(
    spec: CCLineSpec,
    n_paths: int = 16384,
    device: Optional[str] = None,
) -> torch.Tensor:
    o = spec.option
    S0 = float(o.underlying_price)
    rv = float(spec.rv_hat_annualized or (o.iv or 0.0))
    tau_days = int(spec.tau_days or 21)
    ST = simulate_terminal_prices_lognormal(
        spot=S0, sigma_annualized=rv, tau_days=tau_days, n_paths=n_paths, device=device
    )

    # Option leg: short call PnL = premium - payoff
    premium = o.mid if o.mid is not None else (o.bid or 0.0)
    payoff = torch.clamp(ST - o.strike, min=0.0)
    call_short_pnl = premium - payoff

    # Underlying leg: shares long PnL = (S_T - cost_basis) * shares
    shares = spec.contracts * spec.shares_per_contract
    cost_basis = spec.cost_basis_per_share if spec.cost_basis_per_share is not None else S0
    underlying_pnl = (ST - cost_basis) * shares

    # Combine; note option premium/payoff is per share unit, multiply by shares per contract
    option_total = call_short_pnl * (spec.contracts * spec.shares_per_contract)
    total_pnl = underlying_pnl + option_total
    return total_pnl


def compute_cvar(pnl_paths: torch.Tensor, alpha: float = 0.95) -> float:
    """Compute CVaR (Expected Shortfall) at level alpha, for losses (negative PnL)."""
    losses = -pnl_paths
    q = torch.quantile(losses, torch.tensor(alpha, device=losses.device))
    tail = losses[losses >= q]
    if tail.numel() == 0:
        return 0.0
    return float(torch.mean(tail).cpu())


def compute_portfolio_cvar(
    lines: Iterable[CCLineSpec], alpha: float = 0.95, n_paths: int = 16384, device: Optional[str] = None
) -> Tuple[float, torch.Tensor]:
    """Return (CVaR, total PnL paths) for a set of covered-call lines under joint lognormal.

    Assumes independent idiosyncratic shocks absent correlation structure; a more advanced
    implementation can inject correlated shocks via a covariance matrix.
    """
    paths_sum: Optional[torch.Tensor] = None
    for spec in lines:
        pnl = _covered_call_terminal_pnl_paths(spec, n_paths=n_paths, device=device)
        paths_sum = pnl if paths_sum is None else (paths_sum + pnl)
    if paths_sum is None:
        return 0.0, torch.zeros(n_paths)
    cvar = compute_cvar(paths_sum, alpha=alpha)
    return cvar, paths_sum


def diversification_penalty(candidate_paths: torch.Tensor, book_paths: torch.Tensor) -> float:
    """Penalty in [0,1] based on correlation of candidate with existing book.

    Positive correlation increases risk; penalty = max(corr, 0).
    """
    c = _corrcoef(candidate_paths, book_paths)
    return max(c, 0.0)


def _corrcoef(x: torch.Tensor, y: torch.Tensor) -> float:
    x = x - torch.mean(x)
    y = y - torch.mean(y)
    denom = torch.sqrt(torch.sum(x * x)) * torch.sqrt(torch.sum(y * y)) + 1e-12
    if float(denom) == 0.0:
        return 0.0
    corr = torch.sum(x * y) / denom
    return float(corr.cpu())


