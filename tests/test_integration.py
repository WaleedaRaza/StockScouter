"""Integration test for the full pipeline."""

from datetime import datetime, date
from src.engine.data.contracts import OptionRecord, OptionChain, OptionType, Greeks
from src.engine.features.baseline import compute_baseline_metrics
from src.engine.features.vol import compute_iv_rv_edge
from src.engine.features.dealer import compute_gex
from src.engine.features.liquidity import quote_quality_score
from src.engine.scoring.gates import run_gates, GateDecision
from src.engine.scoring.score import compute_final_score
from src.engine.models.regime_hmm import RegimeDetector


def test_full_pipeline():
    """Test the complete scoring pipeline end-to-end."""
    # Create sample option
    rec = OptionRecord(
        ticker="TEST",
        asof=datetime(2025, 1, 15),
        expiry=date(2025, 2, 15),
        strike=105.0,
        option_type=OptionType.CALL,
        bid=4.8,
        ask=5.2,
        mid=5.0,
        open_interest=5000,
        iv=0.30,
        greeks=Greeks(delta=0.30, gamma=0.02, theta=-0.08, vega=0.12),
        underlying_price=100.0,
    )
    chain = OptionChain(records=[rec])

    # Baseline
    baseline = compute_baseline_metrics(rec, cost_basis=100.0)
    assert baseline.ay > 0

    # Gates (should pass with no earnings)
    cfg = {"gates": {"earnings_exclude": True, "min_net_ay": 0.0, "min_open_interest": 100}}
    gate = run_gates(rec, baseline.ay, tau_days=31, cfg=cfg, earnings_events=[], dividend_events=[])
    assert gate.passed

    # Features
    iv_rv = compute_iv_rv_edge(rec, rv_hat_annualized=0.25)
    assert isinstance(iv_rv, float)

    gex = compute_gex(chain)
    assert isinstance(gex, float)

    liq = quote_quality_score(rec)
    assert 0 <= liq <= 1

    # Regime
    detector = RegimeDetector()
    regime = detector.predict({"vix_level": 15.0, "vix_slope": 0.5, "iv_rv_edge": iv_rv})
    assert regime in ["Calm", "Choppy", "TrendUp", "TrendDown", "Event"]

    # Score
    components = {
        "iv_rv_edge": iv_rv,
        "theta_sharpe": 0.5,
        "scc": 0.1,
        "skew_tax": 0.0,
        "gex_score": 0.0,
        "event_hazard": 0.0,
        "slippage_penalty": 0.01,
        "liquidity": liq,
        "breakout_prob": 0.05,
        "portfolio_fit": 0.0,
    }
    weights = {
        "Calm": {
            "iv_rv_edge": 0.2,
            "theta_sharpe": 0.2,
            "scc": 0.1,
            "skew_tax": 0.05,
            "gex_score": 0.1,
            "event_hazard": 0.05,
            "slippage_penalty": 0.05,
            "liquidity": 0.1,
            "breakout_prob": 0.05,
            "portfolio_fit": 0.1,
        }
    }
    score = compute_final_score(components, weights, regime)
    assert 0 <= score <= 100

    print(f"✅ Integration test passed. Final score: {score:.2f}")

