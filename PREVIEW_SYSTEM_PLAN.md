# Preview & Placeholder System - Design Plan

## 🎯 Overview

Create a comprehensive preview/placeholder system that showcases the Covered Calls Engine's capabilities with realistic mock data, guided tours, and professional UI previews.

---

## 📐 Architecture

### 1. **Enhanced Mock Data System**

#### Current State
- Basic mock data generator in `src/gui/mock_data.py`
- Random but plausible option pricing
- Simple earnings/dividend events

#### Enhanced Features Needed
```python
src/gui/mock_data_enhanced.py
├── Scenario-based generation
│   ├── Bull market scenario
│   ├── Bear market scenario
│   ├── High volatility scenario
│   └── Earnings week scenario
├── Historical pattern simulation
│   ├── Trending stocks (AAPL, NVDA, TSLA)
│   ├── Stable dividend payers (KO, JNJ, PG)
│   ├── High IV tech (TSLA, AMD, PLTR)
│   └── Low IV blue chips (SPY, QQQ, DIA)
├── Realistic scoring distributions
│   ├── 10% excellent (score 70-100)
│   ├── 30% good (score 50-69)
│   ├── 40% mediocre (score 30-49)
│   └── 20% poor (score 0-29)
└── Time-series consistency
    ├── IV term structure
    ├── Skew patterns
    └── Volume/OI relationships
```

### 2. **Preview Components**

#### A. Welcome Screen with Demo Mode
```
┌─────────────────────────────────────────────┐
│  🎯 Covered Calls Engine                    │
│                                             │
│  Professional Options Analytics Platform    │
│                                             │
│  [🚀 Launch Demo Mode]                      │
│  [📊 Load Your Data]                        │
│  [📖 View Documentation]                    │
│                                             │
│  Demo includes:                             │
│  ✓ 10 pre-loaded tickers                   │
│  ✓ 150+ ranked opportunities                │
│  ✓ Full feature showcase                    │
│  ✓ Interactive guided tour                  │
└─────────────────────────────────────────────┘
```

#### B. Placeholder States
```python
# Empty state placeholders
watchlist_empty = {
    "icon": "📋",
    "title": "No tickers yet",
    "message": "Add tickers like AAPL, MSFT, GOOGL to get started",
    "action": "Type a ticker above and press Enter"
}

results_empty = {
    "icon": "📊",
    "title": "Ready to score",
    "message": "Click 'Run Scoring' to analyze your watchlist",
    "action": "Add tickers first, then run scoring"
}

details_empty = {
    "icon": "📈",
    "title": "Select an opportunity",
    "message": "Click any row in the table to view full metrics",
    "preview": "Score, Greeks, Risk Badges, and more"
}
```

#### C. Loading States
```python
# Animated loading placeholders
scoring_loading = {
    "animation": "spinner",
    "messages": [
        "🔍 Analyzing option chains...",
        "📊 Computing baseline metrics...",
        "⚡ Running volatility models...",
        "🏦 Calculating dealer metrics...",
        "🎯 Scoring opportunities...",
        "✅ Ranking results..."
    ],
    "progress_bar": True
}
```

#### D. Preview Cards
```python
# Feature preview cards
preview_cards = [
    {
        "title": "Baseline Metrics",
        "icon": "📊",
        "metrics": ["AY: 12.5%", "Δ: 0.28", "BE: $178.50"],
        "badge": "Core"
    },
    {
        "title": "Volatility Edge",
        "icon": "⚡",
        "metrics": ["IV-RV: +0.03", "Θ Sharpe: 0.45", "SCC: 0.12"],
        "badge": "Advanced"
    },
    {
        "title": "Dealer Flow",
        "icon": "🏦",
        "metrics": ["GEX: +2.5M", "Zero-γ: $182", "Magnet: 0.15"],
        "badge": "Pro"
    }
]
```

### 3. **Demo Mode System**

#### Interactive Guided Tour
```python
demo_tour_steps = [
    {
        "step": 1,
        "target": "watchlist_panel",
        "title": "Watchlist Management",
        "message": "Add and remove tickers here. We've pre-loaded 10 popular stocks.",
        "highlight": True,
        "auto_advance": 3000  # ms
    },
    {
        "step": 2,
        "target": "scoring_panel",
        "title": "Scoring Controls",
        "message": "Configure tau (days to expiry) and delta range, then run scoring.",
        "highlight": True,
        "action": "Click 'Run Scoring' to continue"
    },
    {
        "step": 3,
        "target": "results_table",
        "title": "Ranked Opportunities",
        "message": "Results sorted by score. Green = excellent, Yellow = good, Red = poor.",
        "highlight": True,
        "auto_advance": 5000
    },
    {
        "step": 4,
        "target": "details_panel",
        "title": "Deep Metrics",
        "message": "Click any row to see full analysis with badges and risk indicators.",
        "highlight": True,
        "action": "Click a row to continue"
    },
    {
        "step": 5,
        "target": "status_bar",
        "title": "Status Updates",
        "message": "Watch for real-time feedback on all actions here.",
        "highlight": True,
        "auto_advance": 2000
    }
]
```

#### Pre-loaded Demo Scenarios
```python
demo_scenarios = {
    "bull_market": {
        "name": "Bull Market Rally",
        "tickers": ["AAPL", "MSFT", "NVDA", "GOOGL", "AMZN"],
        "characteristics": {
            "iv_rv_edge": -0.02,  # IV < RV (cheap premium)
            "gex": "high_positive",  # Dampened moves
            "regime": "TrendUp"
        }
    },
    "earnings_week": {
        "name": "Earnings Season",
        "tickers": ["TSLA", "META", "NFLX", "AMD", "PLTR"],
        "characteristics": {
            "iv_rv_edge": +0.05,  # IV > RV (expensive premium)
            "event_hazard": 0.8,
            "regime": "Event"
        }
    },
    "dividend_harvest": {
        "name": "Dividend Capture",
        "tickers": ["KO", "JNJ", "PG", "T", "VZ"],
        "characteristics": {
            "exdiv_hazard": 0.3,
            "upside_potential": 0.08,
            "regime": "Calm"
        }
    }
}
```

### 4. **Preview Screenshots System**

#### Automated Screenshot Generation
```python
# Using Playwright or Selenium
screenshot_targets = [
    {
        "name": "main_dashboard",
        "viewport": (1600, 900),
        "state": "demo_loaded",
        "output": "docs/screenshots/dashboard.png"
    },
    {
        "name": "results_table",
        "viewport": (1200, 800),
        "state": "scored_results",
        "output": "docs/screenshots/results.png"
    },
    {
        "name": "details_panel",
        "viewport": (400, 800),
        "state": "row_selected",
        "output": "docs/screenshots/details.png"
    }
]
```

---

## 🎨 UI/UX Enhancements

### 1. **Skeleton Loaders**
```python
# Shimmer effect placeholders
class SkeletonLoader:
    def render_table_skeleton(rows=10):
        # Animated shimmer for table rows
        pass
    
    def render_card_skeleton():
        # Animated shimmer for metric cards
        pass
    
    def render_chart_skeleton():
        # Animated shimmer for charts
        pass
```

### 2. **Tooltips & Help System**
```python
tooltips = {
    "ay": "Annualized Yield: Premium income as % of stock price per year",
    "delta": "Delta: Probability of option finishing in-the-money (~assignment risk)",
    "iv_rv_edge": "IV-RV Edge: Implied vol minus realized vol forecast (positive = overpaid)",
    "theta_sharpe": "Theta Sharpe: Expected premium decay per unit of PnL volatility",
    "scc": "Short Convexity Cost: Expected gamma loss from price movement",
    "gex": "Gamma Exposure: Dealer hedging pressure (positive = dampens moves)",
}
```

### 3. **Onboarding Flow**
```python
onboarding_steps = [
    {
        "screen": "welcome",
        "content": "Welcome to Covered Calls Engine",
        "actions": ["Start Demo", "Skip to App"]
    },
    {
        "screen": "features",
        "content": "Key Features Overview",
        "cards": preview_cards
    },
    {
        "screen": "demo_choice",
        "content": "Choose a demo scenario",
        "scenarios": demo_scenarios
    }
]
```

---

## 📊 Mock Data Specifications

### Realistic Distributions

#### Score Distribution
```
Excellent (70-100): 10% of results
Good (50-69):      30% of results
Mediocre (30-49):  40% of results
Poor (0-29):       20% of results
```

#### Ticker Characteristics
```python
ticker_profiles = {
    "AAPL": {
        "spot_range": (170, 190),
        "iv_range": (0.22, 0.28),
        "liquidity": "excellent",
        "typical_score": (55, 75)
    },
    "TSLA": {
        "spot_range": (200, 300),
        "iv_range": (0.45, 0.65),
        "liquidity": "good",
        "typical_score": (40, 60)
    },
    # ... more profiles
}
```

### Time-Series Consistency
- IV term structure: upward sloping
- Skew: call wing > ATM > put wing
- Volume/OI: realistic ratios
- Bid/ask spreads: based on liquidity tier

---

## 🚀 Implementation Priority

### Phase 1: Core Previews (This Session)
1. ✅ Enhanced mock data generator
2. ✅ Welcome screen with demo mode
3. ✅ Placeholder states (empty/loading)
4. ✅ Pre-loaded demo scenarios

### Phase 2: Interactive Tour (Next)
5. ⏳ Guided tour system
6. ⏳ Tooltips and help overlays
7. ⏳ Onboarding flow

### Phase 3: Visual Assets (Later)
8. ⏳ Screenshot generation
9. ⏳ GIF recordings
10. ⏳ Video walkthrough

---

## 📁 File Structure

```
src/gui/
├── mock_data_enhanced.py       # Enhanced mock data
├── components/
│   ├── welcome_screen.py       # Welcome/demo launcher
│   ├── placeholder_states.py   # Empty/loading states
│   ├── skeleton_loader.py      # Shimmer animations
│   ├── demo_tour.py            # Guided tour system
│   └── preview_cards.py        # Feature preview cards
├── demo/
│   ├── scenarios.py            # Pre-built scenarios
│   ├── tour_steps.py           # Tour configuration
│   └── onboarding.py           # Onboarding flow
└── assets/
    ├── screenshots/            # UI screenshots
    ├── icons/                  # Custom icons
    └── animations/             # Loading animations
```

---

## 🎯 Success Criteria

### User Experience
- ✅ First-time users can explore features in <2 minutes
- ✅ Demo mode loads instantly with realistic data
- ✅ Every UI state has appropriate placeholder
- ✅ Guided tour explains all major features

### Visual Quality
- ✅ Professional skeleton loaders
- ✅ Smooth transitions and animations
- ✅ Consistent color-coding and badges
- ✅ High-quality screenshots for docs

### Technical Quality
- ✅ Mock data indistinguishable from real data
- ✅ No errors in demo mode
- ✅ Fast loading (<1 second for demo)
- ✅ Memory efficient (no leaks)

---

## 📝 Documentation Updates

### README.md Additions
- Screenshots of main dashboard
- GIF of demo mode in action
- Feature preview cards
- Quick start with demo mode

### New Docs
- `DEMO_MODE.md` - How to use demo mode
- `MOCK_DATA.md` - Mock data specifications
- `UI_COMPONENTS.md` - Component library

---

**Next Steps:**
1. Implement enhanced mock data generator
2. Create welcome screen component
3. Add placeholder states to all panels
4. Build demo scenario loader
5. Generate screenshots
6. Commit to StockScouter repo

---

*This plan ensures a professional, polished preview system that showcases the engine's capabilities effectively.*

