# Data Sources Module

Complete data infrastructure for the Covered Call Analyzer with support for multiple providers, caching, retry logic, and computed metrics.

## 📁 Structure

```
src/data_sources/
├── config.yaml          # All API endpoints and configuration
├── adapter.py           # Main data adapter with retry/cache
├── cache.py             # In-memory TTL cache
├── models.py            # Data models (StockPrice, OptionsChain, etc.)
├── compute.py           # Derived metric calculations
└── README.md            # This file
```

## 🔧 Setup

### 1. Install Dependencies

```bash
pip install requests pyyaml numpy
```

### 2. Set Environment Variables

Create a `.env` file or set these in your environment:

```bash
export POLYGON_API_KEY="your_polygon_key"
export FINNHUB_API_KEY="your_finnhub_key"
export BENZINGA_API_KEY="your_benzinga_key"
export UW_API_TOKEN="your_unusualwhales_token"
export INTRINIO_API_KEY="your_intrinio_key"
export ORATS_API_KEY="your_orats_key"
```

### 3. Basic Usage

```python
from src.data_sources import DataAdapter

# Initialize adapter
adapter = DataAdapter()

# Get stock price
price = adapter.get_stock_price("AAPL")
print(f"AAPL: ${price.price:.2f} ({price.daily_change_pct:+.2f}%)")

# Get options chain
chain = adapter.get_options_chain("AAPL")
print(f"Found {len(chain.contracts)} contracts")

# Filter calls expiring in 30 days
calls_30d = [c for c in chain.filter_calls() if c.dte <= 35]

# Get market context
context = adapter.get_market_context()
print(f"VIX: {context.vix:.2f}, SPY: {context.spy_change_pct:+.2f}%")
```

## 📊 Available Metrics

### Core Real-Time Data
- `current_price` - Latest trade price
- `bid_ask` - NBBO with sizes
- `daily_prev_ohlcv` - Previous day bars
- `market_cap` - Market capitalization

### Options Chain
- `options_chain_snapshot` - All strikes/expiries with Greeks
- `option_contract_snapshot` - Single contract details
- `option_quotes_history` - Historical quotes
- `option_trades_last` - Last trade

### Historical Data
- `historical_prices_daily` - Daily OHLCV (1-3 years)
- `historical_volume_daily` - Volume history
- `realized_volatility` - Computed HV from returns

### Market Context
- `vix_index_level` - CBOE VIX
- `vix_term_structure` - VX futures
- `spy_price_change` - SPY daily change
- `qqq_price_change` - QQQ daily change
- `put_call_ratio_market` - Market PCR
- `market_gex` - Computed dealer GEX

### Corporate Events
- `earnings_calendar` - Upcoming earnings
- `dividends_history` - Dividend history
- `stock_splits_history` - Split history

### Fundamentals
- `fundamentals_basic` - P/E, beta, etc.
- `avg_volume_30d` - 30-day average volume
- `institutional_ownership` - 13F holdings
- `short_interest` - Short interest
- `analyst_ratings` - Analyst recommendations

## 🎯 Integration with GUI

### Replace Mock Data Generator

**Old (mock data):**
```python
from src.gui.mock_data_enhanced import generate_enhanced_chain

chain, spot, iv = generate_enhanced_chain(ticker)
```

**New (real data):**
```python
from src.data_sources import DataAdapter

adapter = DataAdapter()
chain = adapter.get_options_chain(ticker)
price = adapter.get_stock_price(ticker)
```

### Update Ticker Input Page

```python
# In src/gui_v2/pages/ticker_input.py
def load_ticker(self, ticker):
    adapter = DataAdapter()
    
    # Get real price data
    price_data = adapter.get_stock_price(ticker)
    
    # Get market context
    context = adapter.get_market_context()
    
    self.ticker_data = {
        'ticker': ticker,
        'spot': price_data.price,
        'change_pct': price_data.daily_change_pct,
        'volume': price_data.volume,
        'vix': context.vix,
        'spy_change': context.spy_change_pct
    }
```

### Update Chain Browser

```python
# In src/gui_v2/pages/chain_browser.py
def _load_chain(self):
    adapter = DataAdapter()
    
    # Get real options chain
    chain = adapter.get_options_chain(self.app.ticker)
    
    # Convert to GUI format
    for contract in chain.contracts:
        self._create_row(contract)
```

## ⚡ Caching Strategy

The adapter uses intelligent caching with different TTLs:

| Metric | TTL | Reason |
|--------|-----|--------|
| `current_price` | 1s | Real-time |
| `options_chain_snapshot` | 5s | Near real-time |
| `historical_prices_daily` | 1 day | Static historical data |
| `earnings_calendar` | 1 hour | Infrequent updates |
| `market_gex` | 5 min | Computed, changes with chain |

**Clear cache:**
```python
adapter.cache.clear()
```

**Cache stats:**
```python
stats = adapter.cache.get_stats()
print(f"Active: {stats['active_entries']}, Expired: {stats['expired_entries']}")
```

## 🔄 Retry Logic

All API calls use exponential backoff:
- **Retries:** 2 attempts (configurable in `config.yaml`)
- **Backoff:** 0.4s base, exponential (0.4s, 0.8s, 1.6s...)
- **Timeout:** 6 seconds per request

**Override for specific calls:**
```python
# Skip cache and retry
data = adapter.get_metric('current_price', use_cache=False, ticker='AAPL')
```

## 🧮 Computed Metrics

Some metrics are calculated locally from raw data:

### Realized Volatility
```python
from src.data_sources.compute import compute_realized_volatility

price_data = adapter.get_metric('historical_prices_daily', ticker='AAPL')
rv = compute_realized_volatility(price_data, window=30)
print(f"30-day HV: {rv['realized_volatility']*100:.2f}%")
```

### Market GEX
```python
from src.data_sources.compute import compute_market_gex

chain_data = adapter.get_metric('options_chain_snapshot', underlying='AAPL')
gex = compute_market_gex(chain_data)
print(f"Total GEX: ${gex['total_gex_billions']:.2f}B")
print(f"Zero-gamma strike: ${gex['zero_gamma_strike']:.2f}")
```

### IV Percentile
```python
from src.data_sources.compute import compute_iv_percentile

current_iv = 0.35
iv_history = [0.25, 0.30, 0.28, 0.32, 0.40, ...]  # Get from API
percentile = compute_iv_percentile(current_iv, iv_history)
print(f"IV Rank: {percentile:.1f}th percentile")
```

## 🚨 Error Handling

All methods gracefully handle errors:

```python
# Returns None on failure
price = adapter.get_stock_price('INVALID_TICKER')
if price is None:
    print("Failed to fetch price")

# Computed metrics return error dict
rv = compute_realized_volatility(bad_data)
if 'error' in rv:
    print(f"Computation failed: {rv['error']}")
```

## 🔐 API Key Management

**Best practice:**
1. **Never commit API keys** to version control
2. Use `.env` file (add to `.gitignore`)
3. Use environment variables in production

**Load from .env file:**
```python
from dotenv import load_dotenv
load_dotenv()  # Loads .env into environment

adapter = DataAdapter()  # Will read from env
```

## 📈 Performance Tips

1. **Batch requests** when possible (e.g., get full chain vs individual contracts)
2. **Use caching** for repeated queries
3. **Clean up expired cache** periodically:
   ```python
   adapter.cache.cleanup_expired()
   ```
4. **Avoid real-time data** for non-critical displays (use 5s cache)

## 🔄 Migration from Mock Data

### Step-by-Step Migration

1. **Keep mock data as fallback:**
   ```python
   try:
       adapter = DataAdapter()
       chain = adapter.get_options_chain(ticker)
   except Exception as e:
       print(f"Using mock data: {str(e)}")
       chain = generate_enhanced_chain(ticker)
   ```

2. **Test with one ticker first** (AAPL is most reliable)

3. **Monitor API rate limits** (Polygon free tier = 5 calls/min)

4. **Gradually replace** mock data page by page

## 📝 Adding New Data Sources

To add a new provider:

1. **Add to `config.yaml`:**
   ```yaml
   vendors:
     new_provider:
       base: "https://api.newprovider.com"
   
   metrics:
     new_metric:
       provider: new_provider
       path: "/endpoint/{ticker}"
   ```

2. **Add API key** to environment
3. **Add header** template in config
4. **Use immediately:**
   ```python
   data = adapter.get_metric('new_metric', ticker='AAPL')
   ```

## 🎯 Next Steps

1. ✅ **Test with real API keys** - Start with Polygon.io (free tier)
2. ✅ **Replace ticker input page** - Use `adapter.get_stock_price()`
3. ✅ **Replace chain browser** - Use `adapter.get_options_chain()`
4. ✅ **Populate charts** - Use historical data for IV history, HV, etc.
5. ✅ **Add error displays** - Show user when API fails vs cached data

---

**Data is the foundation. Everything else is just presentation.**

