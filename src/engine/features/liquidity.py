from __future__ import annotations

from typing import Optional

from ..data.contracts import OptionRecord


def quote_quality_score(rec: OptionRecord) -> float:
    """Score in [0,1] combining spread tightness, open interest, and prints availability.

    Heuristic: higher when spread small vs mid and OI large.
    """
    bid = rec.bid if rec.bid is not None else 0.0
    ask = rec.ask if rec.ask is not None else 0.0
    mid = rec.mid if rec.mid is not None and rec.mid > 0 else (0.5 * (bid + ask) if bid > 0 and ask > 0 else 0.0)
    oi = float(rec.open_interest or 0.0)

    if mid <= 0.0 or ask <= 0.0 or bid < 0.0 or ask < bid:
        return 0.0
    spread = ask - bid
    spread_pct = spread / max(mid, 1e-12)

    # Map spread_pct to [0,1] decreasing, and OI to [0,1] increasing with log-like scaling
    spread_component = max(0.0, min(1.0, 1.0 - spread_pct))
    oi_component = max(0.0, min(1.0, (oi / (oi + 200.0))))
    return 0.6 * spread_component + 0.4 * oi_component


def slippage_penalty(rec: OptionRecord, impact_bps: float = 5.0) -> float:
    """Estimate slippage penalty as fraction of premium due to crossing and impact.

    penalty ≈ half-spread + impact; returned as a fraction of premium.
    """
    bid = rec.bid if rec.bid is not None else 0.0
    ask = rec.ask if rec.ask is not None else 0.0
    mid = rec.mid if rec.mid is not None else (0.5 * (bid + ask) if bid > 0 and ask > 0 else 0.0)
    if mid <= 0.0 or ask <= 0.0 or bid < 0.0 or ask < bid:
        return 0.0
    half_spread = 0.5 * (ask - bid)
    impact = (impact_bps / 1e4) * max(mid, 1e-12)
    return (half_spread + impact) / max(mid, 1e-12)


def net_ay_after_slippage(ay: float, rec: OptionRecord, impact_bps: float = 5.0) -> float:
    # AY reduced by slippage fraction of premium; approximate by multiplying by (1 - penalty)
    penalty = slippage_penalty(rec, impact_bps=impact_bps)
    return max(ay * (1.0 - penalty), 0.0)


