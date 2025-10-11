from __future__ import annotations

from dataclasses import dataclass
from typing import Dict, Optional


Regime = str  # one of: "Calm", "Choppy", "TrendUp", "TrendDown", "Event"


@dataclass
class RegimeDetector:
    """Regime detector with HMM hook and rule-based fallback.

    If an HMM model is not yet trained, use simple thresholds on VIX level/slope and IV–RV gap.
    """

    hmm_model: Optional[object] = None

    def predict(self, features: Dict[str, float]) -> Regime:
        # HMM path (placeholder)
        if self.hmm_model is not None:
            # Expect a vectorized feature input; user will wire later
            try:
                return str(self.hmm_model.predict([list(features.values())])[0])
            except Exception:
                pass

        # Rule-based fallback
        vix = float(features.get("vix_level") or 0.0)
        vix_slope = float(features.get("vix_slope") or 0.0)
        iv_rv_gap = float(features.get("iv_rv_edge") or 0.0)
        breadth = float(features.get("breadth") or 0.0)  # optional external input
        event_flag = bool(features.get("event_flag") or False)

        if event_flag:
            return "Event"

        if vix <= 15 and abs(vix_slope) < 1 and iv_rv_gap >= 0:
            return "Calm"

        if vix >= 25 or abs(vix_slope) > 3:
            return "Choppy"

        # Direction via breadth / iv-rv sign as a proxy
        if breadth > 0 and iv_rv_gap >= 0:
            return "TrendUp"
        if breadth < 0:
            return "TrendDown"

        return "Choppy"


