from __future__ import annotations

import yaml


def load_weights(path: str) -> dict:
    with open(path, "r", encoding="utf-8") as f:
        return yaml.safe_load(f)


def compute_final_score(components: dict, weights: dict, regime: str) -> float:
    w = weights.get(regime, {})
    # Score = w1*IV–RV + w2*ThetaSharpe - w3*SCC - w4*SkewTax + w5*GEX - w6*EventHazard - w7*Slippage + w8*Liquidity - w9*Breakout + w10*PortfolioFit
    score = 0.0
    score += float(w.get("iv_rv_edge", 0.0)) * float(components.get("iv_rv_edge", 0.0))
    score += float(w.get("theta_sharpe", 0.0)) * float(components.get("theta_sharpe", 0.0))
    score -= float(w.get("scc", 0.0)) * float(components.get("scc", 0.0))
    score -= float(w.get("skew_tax", 0.0)) * float(components.get("skew_tax", 0.0))
    score += float(w.get("gex_score", 0.0)) * float(components.get("gex_score", 0.0))
    score -= float(w.get("event_hazard", 0.0)) * float(components.get("event_hazard", 0.0))
    score -= float(w.get("slippage_penalty", 0.0)) * float(components.get("slippage_penalty", 0.0))
    score += float(w.get("liquidity", 0.0)) * float(components.get("liquidity", 0.0))
    score -= float(w.get("breakout_prob", 0.0)) * float(components.get("breakout_prob", 0.0))
    score += float(w.get("portfolio_fit", 0.0)) * float(components.get("portfolio_fit", 0.0))
    # Normalize to 0-100 by a logistic squashing + scaling heuristic
    import math

    norm = 100.0 / (1.0 + math.exp(-score))
    return float(norm)


