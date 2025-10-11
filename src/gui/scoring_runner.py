"""Scoring runner that connects the engine to the UI."""

import sys
import os
from typing import List, Dict, Any

# Add parent to path
sys.path.insert(0, os.path.join(os.path.dirname(__file__), "../.."))

from src.gui.mock_data import (
    generate_mock_chain,
    generate_mock_macro,
    generate_mock_earnings,
    generate_mock_dividends,
)
from src.engine.features.baseline import compute_baseline_metrics
from src.engine.features.vol import compute_iv_rv_edge, compute_theta_sharpe, compute_short_convexity_cost
from src.engine.features.dealer import compute_gex
from src.engine.features.events import exdiv_hazard
from src.engine.features.liquidity import quote_quality_score, net_ay_after_slippage
from src.engine.scoring.gates import run_gates
from src.engine.scoring.score import compute_final_score, load_weights
from src.engine.models.regime_hmm import RegimeDetector
from src.engine.ui.details import generate_badges
import yaml


def run_scoring_pipeline(tickers: List[str]) -> List[Dict[str, Any]]:
    """Run the full scoring pipeline and return ranked results."""
    results = []
    
    # Load configs
    config_dir = os.path.join(os.path.dirname(__file__), "../engine/config")
    with open(os.path.join(config_dir, "scoring.yaml"), "r") as f:
        scoring_cfg = yaml.safe_load(f)
    weights = load_weights(os.path.join(config_dir, "weights.yaml"))
    
    # Generate mock data
    macro = generate_mock_macro()
    earnings_events = generate_mock_earnings(tickers)
    dividend_events = generate_mock_dividends(tickers)
    
    # Detect regime
    regime_detector = RegimeDetector()
    regime = regime_detector.predict({
        "vix_level": macro.vix_spot or 15.0,
        "vix_slope": (macro.vix_3m or 16.0) - (macro.vix_spot or 15.0),
        "iv_rv_edge": 0.03,
    })
    
    # Score each ticker
    for ticker in tickers:
        chain = generate_mock_chain(ticker)
        
        for rec in chain.records:
            tau_days = (rec.expiry - rec.asof.date()).days
            
            # Baseline
            cost_basis = rec.underlying_price
            baseline = compute_baseline_metrics(rec, cost_basis)
            
            # Gates
            gate_result = run_gates(rec, baseline.ay, tau_days, scoring_cfg, earnings_events, dividend_events)
            if not gate_result.passed:
                continue
                
            # Feature components
            rv_hat = 0.25
            iv_rv_edge = compute_iv_rv_edge(rec, rv_hat)
            theta_sharpe = compute_theta_sharpe(rec, rv_hat, tau_days, n_paths=1024)
            scc = compute_short_convexity_cost(rec, rv_hat, tau_days, n_paths=1024)
            gex = compute_gex(chain)
            liquidity = quote_quality_score(rec)
            exdiv_hz = exdiv_hazard(rec, dividend_events)
            
            components = {
                "iv_rv_edge": iv_rv_edge,
                "theta_sharpe": theta_sharpe,
                "scc": scc,
                "skew_tax": 0.0,
                "gex_score": gex / 1e9 if gex != 0 else 0.0,
                "event_hazard": exdiv_hz,
                "slippage_penalty": 0.01,
                "liquidity": liquidity,
                "breakout_prob": 0.05,
                "portfolio_fit": 0.0,
            }
            
            # Final score
            score = compute_final_score(components, weights, regime)
            net_ay = net_ay_after_slippage(baseline.ay, rec)
            badges = generate_badges(components, scoring_cfg)
            
            results.append({
                "ticker": rec.ticker,
                "strike": rec.strike,
                "expiry": str(rec.expiry),
                "net_ay": net_ay,
                "delta": baseline.delta or 0.0,
                "iv_rv_edge": iv_rv_edge,
                "theta_sharpe": theta_sharpe,
                "scc": scc,
                "gex": gex,
                "liquidity": liquidity,
                "exdiv_hazard": exdiv_hz,
                "score": score,
                "badges": badges,
                "breakeven": baseline.breakeven,
                "upside_potential": baseline.upside_potential,
                "breakout_prob": 0.05,
            })
    
    return results

