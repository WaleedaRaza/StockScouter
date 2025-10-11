# Covered Calls Engine

**Productionized covered-call scoring engine with GPU Monte Carlo, dealer flow metrics, and ML forecasts.**

## Overview

This engine ranks covered-call opportunities using:

- **Baseline Metrics**: Annualized Yield (AY), Delta, Breakeven, Upside Potential
- **Volatility Edge**: IV–RV gap, Theta Sharpe, Short Convexity Cost (SCC), Skew Tax
- **Dealer/Flow**: GEX, zero-gamma level, vanna/charm, strike magnet
- **Event Risk**: Earnings windows, ex-dividend hazard
- **Liquidity**: Quote quality, slippage penalty
- **Underlying Quality**: Breakout probability (ML), drift context, crowding proxy
- **Portfolio Fit**: CVaR, diversification penalty
- **Regime Detection**: HMM-based (or rule-based fallback) to weight features dynamically

## Features

1. **GPU Monte Carlo** (PyTorch/CUDA): Simulate price paths under lognormal, Heston, or SABR for SCC and CVaR estimation.
2. **ML Models**: LSTM for realized volatility forecasts, XGBoost for breakout classification, logistic for early assignment hazard.
3. **Decision Gates**: Hard filters on earnings, liquidity, ex-div hazard before scoring.
4. **Regime-Aware Scoring**: Weights adapt to market conditions (Calm/Choppy/TrendUp/TrendDown/Event).
5. **Backtest Framework**: Walk-forward daily re-score with slippage, fees, and early assignment logic.
6. **One-Screen Output**: Ranked table with badges (Event Risk, Low Liquidity, Skew Trap, Squeeze Risk).

## Installation

### Using UV (Recommended - 10x faster)

```bash
# Install UV first
pip install uv

# Install project
uv pip install -e .

# For ML models and GPU support:
uv pip install -e ".[ml,sim,stats]"
uv pip install cupy-cuda12x  # Match your CUDA version
```

**Or using pip:**
```bash
pip install -e ".[ml,sim,stats]"
```

📖 See [INSTALL.md](INSTALL.md) for detailed installation guide.

## Quick Start

```python
from engine.data import OptionChain, OptionRecord
from engine.features.baseline import compute_baseline_metrics
from engine.scoring import run_gates, compute_final_score, load_weights
from engine.models.regime_hmm import RegimeDetector

# Load your options chain (wire to your dataset)
chain = OptionChain(records=[...])

# Compute features, score, rank
# (see examples/ for full pipeline)
```

## Configuration

- `src/engine/config/weights.yaml`: Regime-specific feature weights
- `src/engine/config/scoring.yaml`: Decision gates, thresholds, defaults

## Data Contract

Expected inputs:

- **Option Chains**: bid/ask/greeks/OI per strike/expiry
- **Corporate Actions**: earnings dates, dividends
- **Macro Inputs**: VIX term structure, MOVE, credit spread proxy
- **Borrow Data**: short interest, borrow fee

(Scraping pipelines to be wired later; module is data-source agnostic.)

## Testing

```bash
pytest tests/
```

## Roadmap

- [x] Baseline + volatility features
- [x] Dealer metrics
- [x] Event risk + ex-div hazard
- [x] Liquidity & slippage
- [x] Portfolio CVaR
- [x] Regime detection stubs
- [x] GPU MC stubs (Heston/SABR)
- [x] Scoring engine + UI table
- [x] Backtest harness
- [ ] Train ML models on real dataset
- [ ] Wire scraping pipelines
- [ ] Full backtest on historical data
- [ ] SHAP explainability integration
- [ ] Advanced calibration (Heston/SABR optimization)

## License

MIT

