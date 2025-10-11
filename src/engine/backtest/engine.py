from __future__ import annotations

from dataclasses import dataclass
from typing import List, Callable, Optional


@dataclass
class Trade:
    date: str
    ticker: str
    strike: float
    expiry: str
    premium: float
    contracts: int
    exit_date: Optional[str] = None
    exit_pnl: Optional[float] = None
    assigned: bool = False


class BacktestEngine:
    def __init__(self, scoring_fn: Callable, slippage_bps: float = 5.0):
        self.scoring_fn = scoring_fn
        self.slippage_bps = slippage_bps
        self.trades: List[Trade] = []

    def run_walk_forward(self, dates, data_loader_fn):
        for date in dates:
            chains = data_loader_fn(date)
            candidates = self.scoring_fn(chains, date)
            # Select top-ranked; open trade
            if candidates:
                top = candidates[0]
                trade = Trade(
                    date=str(date),
                    ticker=top["ticker"],
                    strike=top["strike"],
                    expiry=top["expiry"],
                    premium=top["premium"],
                    contracts=1,
                )
                self.trades.append(trade)
        return self.trades

    def apply_slippage_and_fees(self):
        for t in self.trades:
            net_premium = t.premium * (1.0 - self.slippage_bps / 1e4)
            t.premium = net_premium

    def mark_assignments(self, assignment_logic_fn):
        for t in self.trades:
            if assignment_logic_fn(t):
                t.assigned = True

