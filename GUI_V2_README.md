# Covered Call Analyzer V2 - Deep Research Terminal

## 🎯 Philosophy

**Nuclear Bomb vs. Coughing Baby** - This is NOT a market screener. This is a **microscopic deep-dive tool** for analyzing ONE ticker at a time with surgical precision.

## 🚀 Quick Start

### Windows (PowerShell)
```powershell
.\START_GUI_V2.ps1
```

### Direct Python
```bash
python run_gui_v2.py
```

---

## 📊 Workflow: From Ticker to Decision

### **Page 1: Ticker Input Dashboard**
- Enter a single ticker (e.g., `AAPL`)
- See market context (VIX, SPY, QQQ)
- Click "ANALYZE TICKER" →

### **Page 2: Options Chain Browser**
- View ALL strikes and expiries in one table
- Bloomberg-style data-dense layout
- **Every option displayed** - full transparency
- Click "ANALYZE" on any option →

### **Page 3: Deep Analytics (Multi-Tab System)**

#### **Tab 1: Overview**
- Position structure (buy stock + sell call)
- Key metrics: AY%, breakeven, upside potential
- Greeks snapshot
- **Fast, always computed**

#### **Tab 2: Greeks**
- Detailed Greeks table with interpretations
- Delta, Gamma, Theta, Vega explained
- Risk analysis for covered call position
- **Fast, always computed**

#### **Tab 3: Volatility**
- IV display and interpretation
- **Interactive:** IV-RV edge calculator
  - Enter your RV forecast
  - Click "CALCULATE EDGE"
  - See if you have positive/negative edge
- **Lazy computation** - only calculates when you interact

#### **Tab 4: Probability**
- Basic probabilities (Delta-based)
- **Interactive:** Monte Carlo Simulation
  - Choose # of paths (100 - 100,000)
  - Click "RUN SIMULATION" ⚡ (HEAVY COMPUTE)
  - See Theta Sharpe and Convexity Cost
- **Lazy computation** - simulation only runs when you click

#### **Tab 5: Dealer/GEX**
- Dealer gamma exposure explanation
- **Interactive:** Click "CALCULATE GEX"
  - Computes total GEX for chain
  - Finds zero-gamma strike
  - Tells you dealer positioning
- **Lazy computation** - only when requested

#### **Tab 6: Events**
- Earnings announcement check
- Ex-dividend risk analysis
- Assignment hazard calculation
- **Fast, always computed**

---

## 🎨 Design Philosophy

### **Bloomberg Terminal Aesthetic**
- Dark mode (`#0A0E27` background)
- Monospace fonts (Consolas)
- Data-dense, minimal decoration
- Green/red for up/down
- Cyan for highlights/links
- Amber for warnings

### **Progressive Disclosure**
- Start simple (ticker input)
- Reveal complexity incrementally
- User controls the depth

### **Lazy Computation**
- Light calculations always run (Greeks, basic stats)
- Heavy simulations (Monte Carlo, GEX) behind buttons
- You decide when to pay the computational cost

---

## 🔬 What Makes This Different from GUI v1?

| Feature | GUI v1 (Old) | GUI v2 (New) |
|---------|--------------|--------------|
| **Focus** | Screen 15 tickers at once | Deep dive on ONE ticker |
| **Computation** | Auto-runs on startup (crashes) | Lazy, on-demand |
| **Navigation** | Single dashboard | Multi-page flow |
| **Control** | Batch processing | Step-by-step progression |
| **Data** | Ranked list | Full chain transparency |
| **Simulations** | Forced for all 600 options | Optional, user-triggered |
| **Use Case** | Market screening | Research & decision-making |

---

## 🧪 Current Data Source

**Mock Data** - Uses `TICKER_PROFILES` from `src/gui/mock_data_enhanced.py`

Available tickers:
- **Mega-cap tech:** AAPL, MSFT, GOOGL, AMZN
- **High-vol tech:** NVDA, META, AMD, TSLA
- **Indices:** SPY, QQQ
- **Others:** NFLX, DIS, BA, GS, JPM

### Next Step: Connect Real Data
When you're ready to scrape real market data:
1. Build data adapter in `src/gui_v2/data_adapter.py`
2. Replace `generate_enhanced_chain()` calls
3. Implement live price feeds
4. Add historical IV/HV data

---

## 🧠 Simulation Details

### Monte Carlo (Probability Tab)
- **What it does:** Simulates thousands of price paths to estimate:
  - **Theta Sharpe:** Risk-adjusted theta efficiency
  - **Short Convexity Cost:** Expected cost from gamma exposure
- **Paths:** 1,024 for theta sharpe, 16,384 for convexity (default)
- **Time:** ~3-10 seconds depending on CPU/GPU
- **When to run:** When you want precise risk metrics

### GEX Calculation (Dealer Tab)
- **What it does:** Sums gamma exposure across all strikes
- **Output:** Total GEX, zero-gamma strike
- **Time:** < 1 second
- **When to run:** To understand market maker positioning

---

## 📁 File Structure

```
src/
├── gui_v2/                 # New GUI (single-ticker deep dive)
│   ├── app.py             # Main app with page navigation
│   ├── theme.py           # Bloomberg color palette
│   ├── pages/             # Page components
│   │   ├── ticker_input.py    # Page 1: Ticker entry
│   │   ├── chain_browser.py   # Page 2: Full chain table
│   │   └── analytics.py       # Page 3: Tab container
│   └── tabs/              # Analytics tabs
│       ├── overview.py        # Quick stats
│       ├── greeks.py          # Greeks breakdown
│       ├── volatility.py      # IV-RV edge
│       ├── probability.py     # Monte Carlo
│       ├── dealer.py          # GEX analysis
│       └── events.py          # Earnings/dividends
│
├── gui/                    # Old GUI (market screener)
│   └── ...                # Kept for reference
│
└── engine/                # Shared math/logic
    ├── features/          # All features work with both GUIs
    ├── models/            # ML models
    ├── scoring/           # Scoring logic
    └── sim/               # Monte Carlo simulations
```

---

## 🛠 Customization

### Adjust Simulation Paths
In `probability.py`, line 89:
```python
self.paths_entry.insert(0, "10000")  # Change default
```

### Change Color Theme
In `theme.py`, modify `COLORS` dict:
```python
"accent_green": "#00FF41",  # Matrix green
"accent_cyan": "#58A6FF",   # Links
```

### Add New Analytics Tab
1. Create `src/gui_v2/tabs/your_tab.py`
2. Add to `tabs/__init__.py`
3. Register in `analytics.py` tab_classes

---

## 🐛 Troubleshooting

### "Ticker not found"
- You entered a ticker not in mock database
- Check available tickers in Page 1 footer
- Or add to `src/gui/mock_data_enhanced.py` TICKER_PROFILES

### Simulation freezes
- Normal for large path counts
- Wait 10-30 seconds
- Don't click during computation

### Import errors
- Make sure in correct directory: `cd C:\Users\Waleed\Desktop\Stocks`
- Verify venv activated: `F:\.venv-stocks\Scripts\Activate.ps1`
- Check dependencies: `uv pip list`

---

## 🎯 Next Steps

1. **Test the workflow:**
   - Enter AAPL → Browse chain → Analyze $180 call → Try each tab
   
2. **Run simulations:**
   - Probability tab → Run Monte Carlo with 10,000 paths
   - Dealer tab → Calculate GEX
   
3. **Connect real data:**
   - Build scraper for live options data
   - Integrate with GUI v2 data flow
   
4. **Add more analytics:**
   - Backtest tab (simulate historical trades)
   - Portfolio manager (track multiple positions)
   - Risk simulator (stress testing)

---

## 💡 Philosophy Reminder

> "When I do research on a stock and think I want to make a covered call, I will gather data and input it here to get every possible insight. We must have diverse yet targeted features and build strong."

This tool is your **decision support system**. It doesn't tell you what to do—it gives you **every lens** to see the trade from every angle. Then YOU decide.

---

**Built with surgical precision for deep analysis. Not a screening tool. A research terminal.**

