from __future__ import annotations

from dataclasses import dataclass
from datetime import datetime
from typing import Dict, Optional

from ..data.contracts import OptionRecord, OptionChain, OptionType


def _days_between(asof: datetime, expiry_date) -> float:
    return max((expiry_date - asof.date()).days, 1)


def annualized_yield(premium: float, spot: float, days: float) -> float:
    if spot <= 0 or days <= 0:
        return 0.0
    return (premium / spot) * (365.0 / days)


def breakeven(cost_basis: float, premium: float) -> float:
    return cost_basis - premium


def upside_potential(strike: float, spot: float, premium: float) -> float:
    if spot <= 0:
        return 0.0
    return (strike - spot + premium) / spot


def yield_over_delta(annualized_yield_value: float, delta: Optional[float]) -> float:
    if delta is None or delta == 0:
        return 0.0
    return annualized_yield_value / abs(delta)


@dataclass
class BaselineMetrics:
    ay: float
    delta: Optional[float]
    breakeven: float
    yield_over_delta: float
    upside_potential: float


def compute_baseline_metrics(
    rec: OptionRecord, cost_basis: float
) -> BaselineMetrics:
    days = _days_between(rec.asof, rec.expiry)
    premium = rec.mid if rec.mid is not None else (rec.bid or 0.0)
    spot = rec.underlying_price

    ay = annualized_yield(premium=premium, spot=spot, days=days)
    delta = rec.greeks.delta if rec.greeks else None
    be = breakeven(cost_basis=cost_basis, premium=premium)
    yod = yield_over_delta(ay, delta)
    up = upside_potential(strike=rec.strike, spot=spot, premium=premium)

    return BaselineMetrics(ay=ay, delta=delta, breakeven=be, yield_over_delta=yod, upside_potential=up)


def compute_baseline_for_chain(
    chain: OptionChain, cost_basis_by_ticker: Dict[str, float]
) -> Dict[int, BaselineMetrics]:
    out: Dict[int, BaselineMetrics] = {}
    for idx, rec in enumerate(chain.records):
        cost_basis = cost_basis_by_ticker.get(rec.ticker, rec.underlying_price)
        out[idx] = compute_baseline_metrics(rec, cost_basis)
    return out

