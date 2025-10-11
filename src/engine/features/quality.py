from __future__ import annotations

from typing import Optional

from ..data.contracts import OptionRecord
from ..models.breakout_xgb import BreakoutModel


def compute_breakout_prob(features_vector, model: Optional[BreakoutModel] = None) -> float:
    if model is None:
        model = BreakoutModel.load(path="")
    return float(model.predict_proba(features_vector))


def drift_context_alpha(simple_alpha_signal: float) -> float:
    # Placeholder passthrough; positive drift increases upside risk when selling calls
    return float(simple_alpha_signal or 0.0)


def crowding_proxy(short_interest_pct: float, borrow_fee: float, retail_flow_velocity: float = 0.0) -> float:
    # Higher crowding → higher gap risk; simple scaled sum
    sip = max(short_interest_pct or 0.0, 0.0)
    bf = max(borrow_fee or 0.0, 0.0)
    rv = max(retail_flow_velocity or 0.0, 0.0)
    return 0.5 * sip + 0.4 * bf + 0.1 * rv


