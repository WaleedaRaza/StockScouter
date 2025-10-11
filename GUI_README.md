# Covered Calls Engine - GUI Documentation

## 🎨 Professional Desktop Interface

Native Windows desktop application built with CustomTkinter, providing an intuitive interface for the covered calls scoring engine.

---

## 🚀 Quick Start

### Installation

**Using UV (Recommended - 10x faster):**
```bash
# Install UV
pip install uv

# Install project
uv pip install -e .

# With all optional dependencies
uv pip install -e ".[ml,sim,stats]"
```

**Or using pip:**
```bash
pip install -e ".[ml,sim,stats]"
```

📖 See [INSTALL.md](INSTALL.md) for detailed guide.

### Launch

```bash
python run_gui.py
```

---

## 📱 Interface Overview

### Main Window Layout

```
┌─────────────────────────────────────────────────────────────────────┐
│  ⚡ Covered Calls Engine                                             │
├──────────┬──────────────────────────────────────┬──────────────────┤
│          │                                      │                  │
│ Watchlist│         Ranked Opportunities        │     Details      │
│   Panel  │                                      │      Panel       │
│          │  Sortable results table with:       │                  │
│  • Add   │  - Ticker, Strike, Expiry           │  Selected row    │
│  • Remove│  - Net AY, Delta, IV-RV             │  metrics and     │
│  • List  │  - Theta Sharpe, SCC                │  charts          │
│          │  - Liquidity, Score                  │                  │
│ Scoring  │                                      │  • Baseline      │
│  Panel   │  Color-coded scores:                │  • Vol Edge      │
│          │  🟢 70+ (Excellent)                 │  • Dealer Flow   │
│  • Regime│  🟡 50-69 (Good)                    │  • Risk Badges   │
│  • Tau   │  🔴 <50 (Poor)                      │                  │
│  • Delta │                                      │                  │
│  • [Run] │                                      │                  │
│          │                                      │                  │
├──────────┴──────────────────────────────────────┴──────────────────┤
│  Status: Ready                              12:34:56 PM            │
└─────────────────────────────────────────────────────────────────────┘
```

---

## 🎯 Features

### 1. Watchlist Management
- **Add Tickers**: Enter symbol and press Enter or click +
- **Remove Tickers**: Click ✕ next to any ticker
- **Persistent List**: Watchlist maintained during session

### 2. Scoring Controls
- **Regime Display**: Shows current market regime (Calm/Choppy/TrendUp/TrendDown/Event)
- **Days to Expiry**: Select 14, 21, or 30 days
- **Delta Range**: Configure min/max delta bounds (default: 0.25-0.35)
- **Run Button**: Execute scoring engine on watchlist

### 3. Results Table
- **Sortable Columns**: Click any header to sort
- **Color-Coded Scores**:
  - 🟢 Green (70-100): Excellent opportunities
  - 🟡 Yellow (50-69): Good opportunities
  - 🔴 Red (0-49): Poor opportunities
- **Click Row**: View detailed metrics in right panel

### 4. Details Panel
- **Header**: Ticker, strike, expiry
- **Score Highlight**: Large, color-coded score display
- **Metrics Sections**:
  - 📊 Baseline: AY, Delta, Breakeven, Upside
  - ⚡ Volatility Edge: IV-RV, Theta Sharpe, SCC
  - 🏦 Dealer & Flow: GEX, Liquidity
  - ⚠️ Risk Indicators: Ex-div hazard, Breakout prob
- **Badges**: Risk warnings (Event Risk, Low Liquidity, Skew Trap, Squeeze Risk)

### 5. Status Bar
- **Messages**: Real-time feedback on actions
- **Clock**: Current time display
- **Error Handling**: Red text for errors

---

## 🎨 Design Principles

### Visual Hierarchy
- **Primary Action**: Large "Run Scoring" button in sidebar
- **Results First**: Center table takes majority of space
- **Details on Demand**: Right panel shows selected row details

### Color System
- **Dark Theme**: Professional, easy on eyes for long sessions
- **Semantic Colors**:
  - Blue: Primary actions, interactive elements
  - Green: Positive metrics, high scores
  - Yellow: Neutral/warning metrics
  - Red: Risk indicators, low scores
  - Gray: Secondary text, borders

### Typography
- **Headers**: Bold, larger size (16-24pt)
- **Body**: Regular, readable (11-13pt)
- **Data**: Monospace-like spacing for alignment

### Spacing
- **Consistent Padding**: 5-10px for tight groups, 15-20px for sections
- **Breathing Room**: Empty states have generous padding
- **Table Density**: Optimized for scanning 20+ rows

---

## 🔧 Customization

### Theme
```python
# In src/gui/app.py
ctk.set_appearance_mode("dark")  # or "light", "system"
ctk.set_default_color_theme("blue")  # or "green", "dark-blue"
```

### Window Size
```python
# In src/gui/app.py, __init__
self.geometry("1600x900")  # Default
# Recommended minimum: 1280x720
```

### Columns
Edit `src/gui/components/results_table.py`:
```python
self.columns = [
    ("ticker", "Ticker", 80),  # (id, display_name, width_px)
    # Add or remove columns here
]
```

---

## 🧪 Demo Mode

The GUI runs in **demo mode** by default, using mock data generated on the fly.

### Mock Data Features
- Realistic option pricing (intrinsic + time value)
- Random but plausible greeks
- Variable liquidity and open interest
- Occasional earnings/dividend events
- Dynamic macro conditions (VIX, etc.)

### Switching to Real Data
1. Wire your data pipeline to `src/engine/data/adapters.py`
2. Update `src/gui/scoring_runner.py`:
   ```python
   # Replace mock_data imports with:
   from engine.data.adapters import load_chain_from_source
   ```

---

## ⌨️ Keyboard Shortcuts

| Key | Action |
|-----|--------|
| Enter (in ticker input) | Add ticker to watchlist |
| Click row | View details |
| Click column header | Sort by column |

---

## 🐛 Troubleshooting

### GUI Won't Launch
```bash
# Check dependencies
uv pip install customtkinter pillow matplotlib

# Try explicit launch
python -m src.gui.app
```

### ImportError
```bash
# Ensure src is in path
export PYTHONPATH="${PYTHONPATH}:$(pwd)"
```

### Scoring Takes Too Long
In `src/gui/scoring_runner.py`, reduce MC paths:
```python
theta_sharpe = compute_theta_sharpe(rec, rv_hat, tau_days, n_paths=512)  # was 1024
scc = compute_short_convexity_cost(rec, rv_hat, tau_days, n_paths=512)
```

### Display Issues
- **Blurry Text**: Enable DPI scaling in Windows settings
- **Clipped Text**: Increase column widths in `results_table.py`
- **Slow Scrolling**: Reduce watchlist size or filter results

---

## 📊 Performance

### Typical Latencies (Demo Mode, CPU)
- Add/remove ticker: <10ms
- Run scoring (5 tickers, 75 strikes): 2-5 seconds
- Sort table: <50ms
- Update details panel: <10ms

### GPU Acceleration
- Monte Carlo simulations use CUDA if available
- Fallback to CPU if no GPU detected
- Speed improvement: ~10-50x for large MC paths

---

## 🎓 Usage Tips

1. **Start Small**: Add 2-3 tickers first to test
2. **Experiment with Tau**: Try 14/21/30 days to see yield vs risk trade-offs
3. **Sort by Score**: Click "Score" column header to see best opportunities first
4. **Check Badges**: Red badges in details = elevated risk
5. **Delta Range**: Tighten (0.28-0.32) for conservative, widen (0.20-0.40) for aggressive

---

## 🔮 Future Enhancements

- [ ] Settings panel for thresholds
- [ ] Export results to CSV/Excel
- [ ] Charts: payoff diagram, historical score
- [ ] Alerts: notify when score > threshold
- [ ] Multi-workspace tabs
- [ ] Portfolio view with CVaR heatmap
- [ ] Real-time data refresh (websocket)
- [ ] Backtest results viewer

---

## 🤝 Contributing UI Improvements

UI follows these principles:
- **Clarity over cleverness**: Users should never guess what a button does
- **Speed over flash**: Instant feedback > fancy animations
- **Data density**: Show maximum useful info without clutter
- **Professional tone**: Mature styling, no juvenile colors/fonts

---

**Built with ❤️ using CustomTkinter**

