from __future__ import annotations

from typing import Dict, Optional, Tuple

from ..data.contracts import OptionChain, OptionRecord, OptionType


def compute_gex(
    chain: OptionChain,
    contract_size: int = 100,
    assume_customer_long: bool = True,
) -> float:
    """Dealer Gamma Exposure (GEX) in dollar terms at current spot.

    Heuristic: assume customers are net long OI; dealers short → sign negative of gamma sum.
    Sum OI * gamma * S^2 * contract_size across options with available greeks.
    """
    if not chain.records:
        return 0.0
    spot = float(chain.records[0].underlying_price)
    total = 0.0
    for rec in chain.records:
        if rec.greeks is None or rec.greeks.gamma is None or not rec.open_interest:
            continue
        gamma_dollar = rec.greeks.gamma * (spot ** 2) * contract_size * float(rec.open_interest)
        total += gamma_dollar
    sign = -1.0 if assume_customer_long else 1.0
    return sign * total


def estimate_zero_gamma_strike(
    chain: OptionChain,
    contract_size: int = 100,
    assume_customer_long: bool = True,
) -> Optional[float]:
    """Approximate zero-gamma level by strike using a calls-minus-puts gamma density.

    Aggregate by strike: sum(sign_type * OI * gamma * S^2 * contract_size).
    Find strike where cumulative sum crosses zero; return interpolated strike.
    """
    if not chain.records:
        return None
    spot = float(chain.records[0].underlying_price)
    by_strike: Dict[float, float] = {}
    for rec in chain.records:
        if rec.greeks is None or rec.greeks.gamma is None or not rec.open_interest:
            continue
        type_sign = 1.0 if rec.option_type == OptionType.CALL else -1.0
        gamma_dollar = rec.greeks.gamma * (spot ** 2) * contract_size * float(rec.open_interest)
        contrib = type_sign * gamma_dollar
        by_strike[rec.strike] = by_strike.get(rec.strike, 0.0) + contrib

    if not by_strike:
        return None
    items = sorted(by_strike.items(), key=lambda kv: kv[0])
    cum = 0.0
    prev_strike = items[0][0]
    prev_cum = 0.0
    # Dealer sign: invert if customers long
    dealer_sign = -1.0 if assume_customer_long else 1.0
    for strike, val in items:
        cum += dealer_sign * val
        if prev_cum == 0.0:
            prev_cum = cum
            prev_strike = strike
            continue
        if cum == 0.0:
            return strike
        if (prev_cum < 0.0 and cum > 0.0) or (prev_cum > 0.0 and cum < 0.0):
            # Linear interpolation between prev and current
            w = abs(prev_cum) / (abs(prev_cum) + abs(cum))
            return prev_strike * (1 - w) + strike * w
        prev_cum = cum
        prev_strike = strike
    return None


def compute_vanna_charm_proxies(chain: OptionChain) -> Tuple[float, float]:
    """Return (vanna_proxy, charm_proxy) using available greeks as proxies.

    vanna_proxy ≈ sum OI * vega * sign(delta)
    charm_proxy ≈ sum OI * theta * sign(delta)
    """
    vanna_proxy = 0.0
    charm_proxy = 0.0
    for rec in chain.records:
        if rec.open_interest is None or rec.greeks is None:
            continue
        delta = rec.greeks.delta if rec.greeks.delta is not None else 0.0
        vega = rec.greeks.vega if rec.greeks.vega is not None else 0.0
        theta = rec.greeks.theta if rec.greeks.theta is not None else 0.0
        sgn = 1.0 if delta >= 0 else -1.0
        vanna_proxy += float(rec.open_interest) * vega * sgn
        charm_proxy += float(rec.open_interest) * theta * sgn
    return vanna_proxy, charm_proxy


def strike_magnet_index(
    chain: OptionChain, target_strike: float, pct_band: float = 0.01
) -> float:
    """OI-weighted concentration around target_strike within ±pct_band * spot.

    Returns ratio in [0,1]: OI within band / total OI.
    """
    if not chain.records:
        return 0.0
    spot = float(chain.records[0].underlying_price)
    band_abs = pct_band * spot
    total_oi = 0.0
    in_band_oi = 0.0
    for rec in chain.records:
        oi = float(rec.open_interest or 0.0)
        total_oi += oi
        if abs(rec.strike - target_strike) <= band_abs:
            in_band_oi += oi
    if total_oi <= 0:
        return 0.0
    return in_band_oi / total_oi


