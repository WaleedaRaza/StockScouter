from __future__ import annotations

from typing import Iterable, List

from .contracts import OptionRecord, OptionChain


def load_chain_from_records(records: Iterable[OptionRecord]) -> OptionChain:
    return OptionChain(records=list(records))


def infer_mid_prices(chain: OptionChain) -> OptionChain:
    for r in chain.records:
        if r.mid is None and r.bid is not None and r.ask is not None:
            r.mid = 0.5 * (r.bid + r.ask)
    return chain

