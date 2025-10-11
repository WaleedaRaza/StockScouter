from __future__ import annotations

from typing import List, Dict


def generate_badges(components: Dict[str, float], config: Dict) -> List[str]:
    badges = []
    badge_cfg = config.get("badges", {})

    # Event Risk badge
    event_cfg = badge_cfg.get("event_risk", {})
    if components.get("event_hazard", 0.0) > float(event_cfg.get("threshold", 0.5)):
        badges.append("Event Risk")

    # Low Liquidity badge
    liq_cfg = badge_cfg.get("low_liquidity", {})
    if components.get("liquidity", 1.0) < float(liq_cfg.get("threshold", 0.3)):
        badges.append("Low Liquidity")

    # Skew Trap badge
    skew_cfg = badge_cfg.get("skew_trap", {})
    if components.get("skew_tax", 0.0) > float(skew_cfg.get("skew_z_above", 1.5)):
        badges.append("Skew Trap")

    # Squeeze Risk badge
    squeeze_cfg = badge_cfg.get("squeeze_risk", {})
    if components.get("zero_gamma_distance", 1.0) < float(squeeze_cfg.get("near_zero_gamma_pct", 0.02)):
        badges.append("Squeeze Risk")

    return badges

