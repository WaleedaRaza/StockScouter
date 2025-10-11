from datetime import datetime, date
from engine.data.contracts import OptionRecord, Greeks, OptionType
from engine.features.baseline import annualized_yield, breakeven, upside_potential, yield_over_delta, compute_baseline_metrics


def test_annualized_yield():
    ay = annualized_yield(premium=5.0, spot=100.0, days=30)
    expected = (5.0 / 100.0) * (365.0 / 30.0)
    assert abs(ay - expected) < 1e-9


def test_breakeven():
    be = breakeven(cost_basis=100.0, premium=5.0)
    assert be == 95.0


def test_upside_potential():
    up = upside_potential(strike=105.0, spot=100.0, premium=5.0)
    assert abs(up - 0.10) < 1e-9


def test_yield_over_delta():
    yod = yield_over_delta(annualized_yield_value=0.5, delta=0.3)
    assert abs(yod - (0.5 / 0.3)) < 1e-9


def test_compute_baseline_metrics():
    rec = OptionRecord(
        ticker="TEST",
        asof=datetime(2025, 1, 1),
        expiry=date(2025, 1, 31),
        strike=105.0,
        option_type=OptionType.CALL,
        bid=4.8,
        ask=5.2,
        mid=5.0,
        open_interest=1000,
        iv=0.25,
        greeks=Greeks(delta=0.30, gamma=0.02, theta=-0.05, vega=0.10),
        underlying_price=100.0,
    )
    cost_basis = 100.0
    metrics = compute_baseline_metrics(rec, cost_basis)
    assert metrics.ay > 0
    assert metrics.delta == 0.30
    assert metrics.breakeven == 95.0
    assert metrics.yield_over_delta > 0
    assert metrics.upside_potential > 0

