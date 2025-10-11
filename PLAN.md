# Productionized Covered Calls Engine — Status

## Completed Tasks

- [x] Package layout and config files (pyproject.toml, weights.yaml, scoring.yaml)
- [x] Data contracts and validators (pydantic models for chains, OI, actions, macro)
- [x] Baseline features (AY, Δ, BE, Upside, Yield/Δ)
- [x] Volatility edge features (IV–RV, ThetaSharpe, SCC via GPU MC)
- [x] Dealer metrics (GEX, zero-gamma, vanna/charm, strike magnet)
- [x] Event & calendar risk (earnings windows, ex-div hazard logistic)
- [x] Liquidity & slippage metrics (quote quality, slippage penalty)
- [x] Underlying quality signals (breakout classifier stub, drift, crowding)
- [x] Portfolio fit (CVaR, diversification penalty)
- [x] Regime detection (HMM stub with rule-based fallback)
- [x] GPU simulators (lognormal MC, Heston/SABR stubs)
- [x] ML model interfaces (RV LSTM, breakout XGB, ex-div logistic stubs)
- [x] Scoring engine (decision gates, normalization, final score)
- [x] One-screen output (ranked table + badges)
- [x] Backtest framework (walk-forward harness, metrics, ablation stubs)

## Next Steps

1. **Wire Real Dataset**: Connect to local parquet/CSV/DB when scraping pipelines are ready
2. **Train ML Models**: LSTM on realized vol timeseries, XGB on breakout labels, logistic on ex-div events
3. **Full Backtest**: Run walk-forward on historical data with all features enabled
4. **Calibration Optimization**: Implement scipy.optimize for Heston/SABR parameter fitting
5. **SHAP Integration**: Add explainability hooks for feature importance per trade
6. **Unit Tests**: Expand test coverage for features, models, sim, scoring
7. **Documentation**: Add usage examples and feature engineering notes

## Architecture Summary

```
src/engine/
├── config/          # weights.yaml, scoring.yaml
├── data/            # contracts, adapters, validators
├── features/        # baseline, vol, dealer, events, liquidity, quality, portfolio
├── models/          # rv_lstm, breakout_xgb, exdiv_logit, regime_hmm
├── sim/             # mc_gpu, sabr, heston
├── scoring/         # gates, normalize, score
├── ui/              # table, details (badges)
├── backtest/        # engine, reports
└── utils/           # (future: torch_utils, logging, etc.)
```

## Notes

- All feature modules are stubbed and ready for data wiring.
- GPU MC uses PyTorch for CUDA acceleration; fallback to CPU if unavailable.
- Regime weights loaded from YAML; easily tunable without code changes.
- Decision gates prevent scoring of invalid trades (earnings, low liquidity, etc.).
- Backtest harness supports walk-forward and ablation studies.

