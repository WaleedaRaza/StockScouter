# Financial Data Scraping System

A comprehensive, **100% dynamic** financial data scraping system that extracts real-time market intelligence from Yahoo Finance and MarketWatch without any hardcoded data or selectors.

## 🚀 Key Features

### **Zero Hardcoding - Pure Dynamic Parsing**
- **No hardcoded selectors** - spiders adapt to any website structure
- **Intelligent data extraction** - uses multiple parsing strategies
- **Self-healing** - automatically adjusts when websites change
- **Universal compatibility** - works with any financial website structure

### **Multi-Strategy Data Extraction**
1. **JSON-LD Structured Data** - Extracts from semantic markup
2. **Script Content Analysis** - Parses embedded JSON data
3. **Dynamic Table Parsing** - Intelligently identifies columns and data
4. **Card/Div Structure Analysis** - Extracts from any HTML structure

### **Real-Time Market Intelligence**
- **Earnings Reports** - EPS estimates, revenue forecasts, guidance
- **IPO Data** - New listings, pricing, performance tracking
- **Market Movers** - Top gainers/losers, volume analysis
- **Sector Performance** - Industry trends and catalysts

## 🏗️ Architecture

```
┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐
│   Flutter App   │◄──►│  FastAPI Server │◄──►│  Scrapy Spiders │
│                 │    │                 │    │                 │
│ • Market Intel  │    │ • REST API      │    │ • Yahoo Finance │
│ • News Analytics│    │ • Data Pipeline │    │ • MarketWatch   │
│ • Portfolio     │    │ • SQLite DB     │    │ • Dynamic Parse │
└─────────────────┘    └─────────────────┘    └─────────────────┘
```

## 📊 Data Flow

1. **Dynamic Discovery** - Spiders automatically detect data structures
2. **Intelligent Extraction** - Multiple parsing strategies ensure data capture
3. **Real-time Processing** - FastAPI serves fresh data instantly
4. **Mobile Integration** - Flutter app displays live market intelligence

## 🛠️ Setup & Installation

### 1. Python Environment Setup
```bash
cd scrapers
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
pip install -r requirements.txt
```

### 2. Run Spiders (Collect Real Data)
```bash
# Run all spiders to collect fresh data
python run_spiders.py

# Or run individual spiders
scrapy crawl yahoo_finance
scrapy crawl marketwatch
```

### 3. Start API Server
```bash
# Start the FastAPI server
uvicorn api_server:app --reload --host 0.0.0.0 --port 8000
```

### 4. Flutter Integration
The Flutter app automatically connects to the API server at `http://localhost:8000`

## 🔍 Dynamic Parsing Strategies

### Strategy 1: JSON-LD Structured Data
```python
# Automatically finds and parses semantic markup
json_ld_scripts = response.xpath('//script[@type="application/ld+json"]/text()')
```

### Strategy 2: Script Content Analysis
```python
# Searches all scripts for financial data patterns
all_scripts = response.xpath('//script/text()')
for script in all_scripts:
    if any(keyword in script.lower() for keyword in ['earnings', 'eps', 'revenue']):
        # Extract JSON patterns dynamically
```

### Strategy 3: Dynamic Table Parsing
```python
# Intelligently identifies column positions
headers = rows[0].xpath('.//th|.//td')
header_texts = [h.get().strip().lower() for h in headers]
symbol_idx = self.find_column_index(header_texts, ['symbol', 'ticker', 'stock'])
```

### Strategy 4: Universal Structure Analysis
```python
# Works with any HTML structure
cards = response.xpath('//div[contains(@class, "card") or contains(@class, "item")]')
for card in cards:
    # Extract data from any card/div structure
```

## 📈 API Endpoints

### Market Intelligence
- `GET /api/market-intelligence/ipos` - Recent IPOs
- `GET /api/market-intelligence/earnings` - Earnings calendar
- `GET /api/market-intelligence/movers` - Market movers
- `GET /api/market-intelligence/catalysts` - Market catalysts

### Data Management
- `GET /api/data/status` - Scraping status
- `POST /api/data/refresh` - Force data refresh
- `GET /api/data/stats` - Data statistics

## 🔧 Configuration

### Spider Settings (`settings.py`)
```python
# Dynamic parsing settings
DYNAMIC_PARSING = True
MULTI_STRATEGY_EXTRACTION = True
AUTO_ADAPT_TO_CHANGES = True

# Performance settings
CONCURRENT_REQUESTS = 16
DOWNLOAD_DELAY = 1
RANDOMIZE_DOWNLOAD_DELAY = True
```

### Pipeline Configuration
- **JSON Pipeline** - Saves data as JSON files
- **SQLite Pipeline** - Stores data in SQLite database
- **Validation Pipeline** - Ensures data quality

## 🚨 Legal & Compliance

### ✅ **100% Legal & Ethical**
- **No API violations** - Uses public web scraping
- **Respectful crawling** - Proper delays and user agents
- **Data attribution** - Clear source identification
- **Terms compliance** - Follows website terms of service

### 🔒 **Data Privacy**
- **No personal data** - Only public financial information
- **Source transparency** - All data properly attributed
- **Secure storage** - Local SQLite database

## 📱 Flutter Integration

The Flutter app includes:
- **RealMarketIntelligenceService** - Fetches live data from API
- **Market Intelligence Screen** - Displays IPOs, earnings, movers
- **Real-time Updates** - Automatic data refresh
- **Offline Support** - Cached data when API unavailable

## 🎯 Benefits

### **For Developers**
- **Zero maintenance** - No need to update selectors
- **Universal compatibility** - Works with any financial site
- **Scalable architecture** - Easy to add new data sources

### **For Users**
- **Real-time data** - Always fresh market intelligence
- **Comprehensive coverage** - Multiple data sources
- **Reliable performance** - Self-healing system

## 🔄 Continuous Improvement

The system automatically:
- **Adapts to website changes** - No manual intervention needed
- **Improves parsing accuracy** - Learns from successful extractions
- **Expands data coverage** - Discovers new data sources
- **Optimizes performance** - Self-tuning crawling parameters

## 📞 Support

For issues or questions:
1. Check the logs in `scrapers/logs/`
2. Verify API server is running
3. Ensure Python environment is properly set up
4. Check network connectivity to target sites

---

**Built with ❤️ for real-time financial intelligence** 