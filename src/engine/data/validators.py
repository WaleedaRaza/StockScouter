from __future__ import annotations

from typing import Iterable

from pydantic import ValidationError

from .contracts import OptionChain


def validate_chain(chain: OptionChain) -> None:
    # basic checks: non-empty, bids/asks positive, expiries >= asof date, strikes > 0
    records = chain.records
    if not records:
        raise ValidationError([{"loc": ("records",), "msg": "empty chain", "type": "value_error"}], OptionChain)

    asof = records[0].asof
    for rec in records:
        if rec.bid is not None and rec.bid < 0:
            raise ValueError("negative bid")
        if rec.ask is not None and rec.ask < 0:
            raise ValueError("negative ask")
        if rec.strike <= 0:
            raise ValueError("non-positive strike")
        if rec.expiry < asof.date():
            raise ValueError("expired option in chain as of date")


def ensure_sorted_unique_strikes(chain: OptionChain) -> None:
    strikes = [rec.strike for rec in chain.records]
    if sorted(strikes) != strikes:
        chain.records.sort(key=lambda r: r.strike)

