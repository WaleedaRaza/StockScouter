from __future__ import annotations

from datetime import timedelta
from typing import Iterable, Optional

from ..data.contracts import (
    OptionRecord,
    EarningsEvent,
    DividendEvent,
    MacroInputs,
    OptionType,
)
from ..models.exdiv_logit import ExDivHazardModel


def earnings_within_tau(option: OptionRecord, earnings: Iterable[EarningsEvent], tau_days: int) -> bool:
    asof_d = option.asof.date()
    horizon = asof_d + timedelta(days=int(tau_days))
    for e in earnings or []:
        if e.ticker == option.ticker and asof_d <= e.announce_date <= horizon:
            return True
    return False


def extrinsic_value(mid_price: float, spot: float, strike: float, option_type: OptionType) -> float:
    intrinsic = max(spot - strike, 0.0) if option_type == OptionType.CALL else max(strike - spot, 0.0)
    if mid_price is None:
        return 0.0
    return max(mid_price - intrinsic, 0.0)


def exdiv_hazard(
    option: OptionRecord,
    dividends: Iterable[DividendEvent],
    model: Optional[ExDivHazardModel] = None,
) -> float:
    if option.option_type != OptionType.CALL:
        return 0.0
    asof_d = option.asof.date()
    ex_div = None
    amount = 0.0
    for d in dividends or []:
        if d.ticker == option.ticker and d.ex_date >= asof_d:
            ex_div = d.ex_date
            amount = max(d.amount, 0.0)
            break
    if ex_div is None:
        return 0.0

    mid = option.mid if option.mid is not None else (option.bid or 0.0)
    extrinsic = extrinsic_value(mid, option.underlying_price, option.strike, option.option_type)
    delta = option.greeks.delta if option.greeks else 0.0
    borrow_fee = option.borrow_fee or 0.0
    spread = 0.0
    if option.bid is not None and option.ask is not None and option.bid >= 0 and option.ask >= option.bid:
        spread = option.ask - option.bid

    if model is None:
        model = ExDivHazardModel.default()
    return float(model.predict_proba(dividend_minus_extrinsic=amount - extrinsic, delta=delta, borrow_fee=borrow_fee, spread=spread))


def macro_regime_inputs(macro: MacroInputs) -> dict:
    vix_slope = None
    if macro.vix_spot is not None and macro.vix_3m is not None:
        vix_slope = macro.vix_3m - macro.vix_spot
    return {
        "vix_level": macro.vix_spot,
        "vix_slope": vix_slope,
        "move": macro.move,
        "credit_spread": macro.credit_spread_proxy,
    }


