#!/usr/bin/env python3
"""
Example runner demonstrating the full covered-call scoring pipeline.

This script shows how to:
1. Load option chains and corporate actions
2. Compute all feature components
3. Run decision gates
4. Score candidates by regime
5. Generate ranked output table with badges
"""

from datetime import datetime, date
from typing import List

from src.engine.data.contracts import (
    OptionRecord,
    OptionChain,
    OptionType,
    Greeks,
    EarningsEvent,
    DividendEvent,
    MacroInputs,
)
from src.engine.features.baseline import compute_baseline_metrics
from src.engine.features.vol import compute_iv_rv_edge, compute_theta_sharpe, compute_short_convexity_cost
from src.engine.features.dealer import compute_gex, estimate_zero_gamma_strike
from src.engine.features.events import earnings_within_tau, exdiv_hazard, macro_regime_inputs
from src.engine.features.liquidity import quote_quality_score, slippage_penalty, net_ay_after_slippage
from src.engine.features.quality import compute_breakout_prob, crowding_proxy
from src.engine.scoring.gates import run_gates
from src.engine.scoring.score import compute_final_score, load_weights
from src.engine.models.regime_hmm import RegimeDetector
from src.engine.ui.table import RankedRow, format_table, export_csv
from src.engine.ui.details import generate_badges
import yaml


def create_sample_chain() -> OptionChain:
    """Create a sample option chain for demonstration."""
    records = [
        OptionRecord(
            ticker="AAPL",
            asof=datetime(2025, 1, 15, 16, 0),
            expiry=date(2025, 2, 21),
            strike=185.0,
            option_type=OptionType.CALL,
            bid=4.80,
            ask=5.20,
            mid=5.00,
            open_interest=5000,
            volume=1200,
            iv=0.28,
            greeks=Greeks(delta=0.32, gamma=0.015, theta=-0.08, vega=0.12),
            underlying_price=180.0,
        ),
        OptionRecord(
            ticker="AAPL",
            asof=datetime(2025, 1, 15, 16, 0),
            expiry=date(2025, 2, 21),
            strike=190.0,
            option_type=OptionType.CALL,
            bid=2.90,
            ask=3.10,
            mid=3.00,
            open_interest=8000,
            volume=2500,
            iv=0.26,
            greeks=Greeks(delta=0.25, gamma=0.018, theta=-0.06, vega=0.14),
            underlying_price=180.0,
        ),
    ]
    return OptionChain(records=records)


def main():
    print("=" * 80)
    print("Covered Calls Engine - Example Runner")
    print("=" * 80)
    print()

    # 1. Load sample data
    chain = create_sample_chain()
    earnings_events: List[EarningsEvent] = []  # No earnings in tau for this example
    dividend_events: List[DividendEvent] = []
    macro = MacroInputs(vix_spot=16.5, vix_1m=17.0, vix_3m=18.5)

    # 2. Load configs
    with open("src/engine/config/scoring.yaml", "r") as f:
        scoring_cfg = yaml.safe_load(f)
    weights = load_weights("src/engine/config/weights.yaml")

    # 3. Detect regime
    regime_features = macro_regime_inputs(macro)
    regime_features["iv_rv_edge"] = 0.03  # placeholder
    regime_detector = RegimeDetector()
    regime = regime_detector.predict(regime_features)
    print(f"Detected Regime: {regime}")
    print()

    # 4. Score each option
    rows: List[RankedRow] = []
    for rec in chain.records:
        tau_days = (rec.expiry - rec.asof.date()).days

        # Baseline
        cost_basis = rec.underlying_price
        baseline = compute_baseline_metrics(rec, cost_basis)

        # Gates
        gate_result = run_gates(rec, baseline.ay, tau_days, scoring_cfg, earnings_events, dividend_events)
        if not gate_result.passed:
            print(f"❌ {rec.ticker} ${rec.strike} rejected: {gate_result.reason}")
            continue

        # Feature components (normalized placeholders; wire to historical stats for real z-scores)
        rv_hat = 0.25  # placeholder RV forecast
        iv_rv_edge = compute_iv_rv_edge(rec, rv_hat)
        theta_sharpe = compute_theta_sharpe(rec, rv_hat, tau_days, n_paths=2048)
        scc = compute_short_convexity_cost(rec, rv_hat, tau_days, n_paths=2048)
        gex = compute_gex(chain)
        liquidity = quote_quality_score(rec)
        exdiv_hz = exdiv_hazard(rec, dividend_events)
        breakout_prob = compute_breakout_prob(features_vector=[0.0] * 10)  # placeholder features

        components = {
            "iv_rv_edge": iv_rv_edge,
            "theta_sharpe": theta_sharpe,
            "scc": scc,
            "skew_tax": 0.0,
            "gex_score": gex / 1e9 if gex != 0 else 0.0,  # normalize
            "event_hazard": exdiv_hz,
            "slippage_penalty": slippage_penalty(rec),
            "liquidity": liquidity,
            "breakout_prob": breakout_prob,
            "portfolio_fit": 0.0,  # placeholder
        }

        # Final score
        score = compute_final_score(components, weights, regime)

        # Net AY
        net_ay = net_ay_after_slippage(baseline.ay, rec)

        # Badges
        badges = generate_badges(components, scoring_cfg)

        row = RankedRow(
            ticker=rec.ticker,
            strike=rec.strike,
            expiry=str(rec.expiry),
            net_ay=net_ay,
            delta=baseline.delta or 0.0,
            iv_rv_edge=iv_rv_edge,
            theta_sharpe=theta_sharpe,
            scc=scc,
            gex=gex,
            liquidity=liquidity,
            exdiv_hazard=exdiv_hz,
            score=score,
            badges=badges,
        )
        rows.append(row)

    # 5. Rank and display
    rows.sort(key=lambda r: r.score, reverse=True)
    print(format_table(rows))
    print()

    # 6. Export to CSV
    export_csv(rows, "ranked_covered_calls.csv")
    print("✅ Exported to ranked_covered_calls.csv")
    print()
    print("=" * 80)
    print("Pipeline complete. All features computed, scored, and ranked.")
    print("=" * 80)


if __name__ == "__main__":
    main()

