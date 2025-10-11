from __future__ import annotations

from dataclasses import dataclass
from typing import Dict

from ..features.events import earnings_within_tau, exdiv_hazard
from ..features.liquidity import net_ay_after_slippage
from ..data.contracts import OptionRecord


@dataclass
class GateDecision:
    passed: bool
    reason: str = ""


def run_gates(
    rec: OptionRecord,
    ay: float,
    tau_days: int,
    cfg: Dict,
    earnings_events,
    dividend_events,
) -> GateDecision:
    gates = cfg.get("gates", {})

    if gates.get("earnings_exclude", True):
        if earnings_within_tau(rec, earnings_events, tau_days):
            return GateDecision(False, "Earnings inside tau")

    net_ay = net_ay_after_slippage(ay, rec)
    if net_ay < float(gates.get("min_net_ay", 0.0)):
        return GateDecision(False, "Net AY below threshold")

    oi_floor = int(gates.get("min_open_interest", 0))
    if (rec.open_interest or 0) < oi_floor:
        return GateDecision(False, "Open interest below floor")

    if rec.bid is not None and rec.ask is not None and rec.bid >= 0 and rec.ask >= rec.bid:
        mid = rec.mid if rec.mid is not None else 0.5 * (rec.bid + rec.ask)
        spread = rec.ask - rec.bid
        if mid > 0 and spread / mid > float(gates.get("max_spread_pct_of_premium", 1.0)):
            return GateDecision(False, "Spread too wide")

    hazard_cap = float(gates.get("exdiv_hazard_cap", 1.0))
    hazard = exdiv_hazard(rec, dividend_events)
    if hazard > hazard_cap:
        return GateDecision(False, "Ex-div hazard too high")

    return GateDecision(True, "")


