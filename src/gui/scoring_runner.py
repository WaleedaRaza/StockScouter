"""Scoring runner that connects the engine to the UI."""

import sys
import os
from typing import List, Dict, Any

# Add parent to path
sys.path.insert(0, os.path.join(os.path.dirname(__file__), "../.."))

from src.gui.mock_data import generate_mock_earnings, generate_mock_dividends
from src.gui.mock_data_enhanced import generate_enhanced_chain, generate_macro_data, TICKER_PROFILES
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


def detect_regime(macro_data: Dict) -> str:
    """Detect market regime from macro data."""
    from engine.models.regime_hmm import RegimeDetector
    detector = RegimeDetector()
    features = {
        "vix_level": macro_data.get("vix", 15.0),
        "vix_slope": macro_data.get("vix_change", 0) * 100,
        "iv_rv_edge": 0.03,
    }
    return detector.predict(features)


def run_scoring_pipeline(tickers: List[str]) -> List[Dict[str, Any]]:
    """Run the full scoring pipeline and return ranked results."""
    results = []
    
    # Load configs
    config_dir = os.path.join(os.path.dirname(__file__), "../engine/config")
    with open(os.path.join(config_dir, "scoring.yaml"), "r") as f:
        scoring_cfg = yaml.safe_load(f)
    weights = load_weights(os.path.join(config_dir, "weights.yaml"))
    
    # Generate enhanced mock data
    macro_dict = generate_macro_data()
    from engine.data.contracts import MacroInputs
    macro = MacroInputs(
        vix_spot=macro_dict["vix"],
        vix_1m=macro_dict["vix"] + 0.5,
        vix_3m=macro_dict["vix"] + 1.2,
        move=random.uniform(90, 115),
        credit_spread_proxy=random.uniform(0.6, 1.5)
    )
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
    import random
    for ticker in tickers:
        if ticker not in TICKER_PROFILES:
            continue
        chain, spot, avg_iv = generate_enhanced_chain(ticker)
        
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
            
            # Calculate %OTM
            pct_otm = ((rec.strike - rec.underlying_price) / rec.underlying_price) * 100
            
            results.append({
                "rank": 0,  # Will be set after sorting
                "ticker": rec.ticker,
                "price": rec.underlying_price,
                "strike": rec.strike,
                "pct_otm": pct_otm,
                "expiry": str(rec.expiry),
                "volume": rec.volume or 0,
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
                "iv": rec.iv,
                "gamma": rec.greeks.gamma if rec.greeks else 0,
                "theta": rec.greeks.theta if rec.greeks else 0,
                "vega": rec.greeks.vega if rec.greeks else 0,
                "bid": rec.bid,
                "ask": rec.ask,
                "oi": rec.open_interest or 0,
            })
    
    # Sort by score and add ranks
    results.sort(key=lambda x: x["score"], reverse=True)
    for idx, result in enumerate(results):
        result["rank"] = idx + 1
    
    return results

