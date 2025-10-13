"""Main data adapter for fetching from multiple providers."""

import os
import yaml
import requests
import time
from typing import Dict, Any, Optional, List
from datetime import datetime, timedelta
from pathlib import Path

from .cache import DataCache
from .models import StockPrice, OptionsChain, MarketContext


class DataAdapter:
    """Unified data adapter for all market data providers."""
    
    def __init__(self, config_path: Optional[str] = None):
        """Initialize data adapter with configuration."""
        if config_path is None:
            config_path = Path(__file__).parent / "config.yaml"
        
        with open(config_path, 'r') as f:
            self.config = yaml.safe_load(f)
        
        self.defaults = self.config['defaults']
        self.vendors = self.config['vendors']
        self.metrics = self.config['metrics']
        self.cache_ttl = self.config.get('cache_ttl', {})
        
        # Initialize cache
        self.cache = DataCache()
        
        # Load API keys from environment
        self._load_api_keys()
        
    def _load_api_keys(self):
        """Load API keys from environment variables."""
        self.api_keys = {
            'POLYGON_API_KEY': os.getenv('POLYGON_API_KEY', ''),
            'FINNHUB_API_KEY': os.getenv('FINNHUB_API_KEY', ''),
            'BENZINGA_API_KEY': os.getenv('BENZINGA_API_KEY', ''),
            'UW_API_TOKEN': os.getenv('UW_API_TOKEN', ''),
            'INTRINIO_API_KEY': os.getenv('INTRINIO_API_KEY', ''),
            'ORATS_API_KEY': os.getenv('ORATS_API_KEY', ''),
        }
        
    def _get_headers(self, provider: str) -> Dict[str, str]:
        """Get headers for a specific provider with API key substitution."""
        headers_template = self.defaults['headers'].get(provider, {})
        headers = {}
        
        for key, value in headers_template.items():
            # Substitute environment variables
            if isinstance(value, str) and '${' in value:
                # Extract variable name from ${VAR_NAME} pattern
                import re
                match = re.search(r'\$\{([^}]+)\}', value)
                if match:
                    var_name = match.group(1)
                    api_key = self.api_keys.get(var_name, '')
                    # Replace ${VAR_NAME} with actual key
                    headers[key] = value.replace(f'${{{var_name}}}', api_key)
                    print(f"[DEBUG] Substituted {var_name} in header: {key} -> {headers[key][:20]}...")
                else:
                    headers[key] = value
            else:
                headers[key] = value
        
        return headers
    
    def _build_url(self, provider: str, path: str, **params) -> str:
        """Build complete URL with parameter substitution."""
        base_url = self.vendors[provider].get('base', '')
        
        # Substitute path parameters
        for key, value in params.items():
            path = path.replace(f'{{{key}}}', str(value))
        
        return base_url + path
    
    def _fetch_with_retry(
        self,
        url: str,
        headers: Dict[str, str],
        params: Optional[Dict[str, Any]] = None,
        provider: Optional[str] = None
    ) -> Dict[str, Any]:
        """Fetch data with retry logic."""
        retry_config = self.defaults['retry']
        retries = retry_config['retries']
        backoff = retry_config['backoff_seconds']
        timeout = self.defaults['http_timeout_seconds']
        
        # Polygon uses query params for auth, not headers
        if provider == 'polygon':
            if params is None:
                params = {}
            # Extract API key from Bearer token header
            if 'Authorization' in headers:
                auth_header = headers.pop('Authorization', '')
                api_key = auth_header.replace('Bearer ', '').strip()
                if api_key:
                    params['apiKey'] = api_key
                    print(f"[DEBUG] Polygon auth: Using apiKey query param")
            else:
                print(f"[DEBUG] Polygon: No Authorization header found, headers={headers}")
        
        for attempt in range(retries + 1):
            try:
                response = requests.get(
                    url,
                    headers=headers,
                    params=params,
                    timeout=timeout
                )
                response.raise_for_status()
                return response.json()
            
            except requests.exceptions.RequestException as e:
                if attempt < retries:
                    time.sleep(backoff * (2 ** attempt))  # Exponential backoff
                    continue
                else:
                    raise Exception(f"Failed to fetch {url} after {retries} retries: {str(e)}")
    
    def get_metric(
        self,
        metric_name: str,
        use_cache: bool = True,
        **params
    ) -> Optional[Dict[str, Any]]:
        """Get a metric by name with caching."""
        # Check cache first
        if use_cache:
            cache_key = f"{metric_name}:{params}"
            cached = self.cache.get(cache_key)
            if cached is not None:
                return cached
        
        # Get metric configuration
        metric_config = self.metrics.get(metric_name)
        if not metric_config:
            raise ValueError(f"Unknown metric: {metric_name}")
        
        # Handle computed metrics
        provider = metric_config.get('provider')
        if provider in ['local_compute', 'compute_from_chain', 'compute_from_prices']:
            return self._compute_metric(metric_name, metric_config, **params)
        
        # Handle fallback providers
        if 'primary' in metric_config:
            try:
                result = self._fetch_from_provider(
                    metric_config['primary']['provider'],
                    metric_config['primary']['path'],
                    **params
                )
            except Exception as e:
                print(f"Primary provider failed, trying fallback: {str(e)}")
                result = self._fetch_from_provider(
                    metric_config['fallback']['provider'],
                    metric_config['fallback']['path'],
                    **params
                )
        else:
            # Single provider
            path = metric_config.get('path')
            result = self._fetch_from_provider(provider, path, **params)
        
        # Cache result
        if use_cache and result:
            cache_key = f"{metric_name}:{params}"
            ttl = self.cache_ttl.get(metric_name, 60)
            self.cache.set(cache_key, result, ttl)
        
        return result
    
    def _fetch_from_provider(
        self,
        provider: str,
        path: str,
        **params
    ) -> Dict[str, Any]:
        """Fetch from a specific provider."""
        headers = self._get_headers(provider)
        url = self._build_url(provider, path, **params)
        print(f"[DEBUG] Provider: {provider}, URL: {url}")
        print(f"[DEBUG] Headers before: {headers}")
        return self._fetch_with_retry(url, headers, params=None, provider=provider)
    
    def _compute_metric(
        self,
        metric_name: str,
        config: Dict[str, Any],
        **params
    ) -> Optional[Dict[str, Any]]:
        """Compute derived metrics."""
        # Import computation modules
        from .compute import compute_realized_volatility, compute_market_gex, compute_avg_volume
        
        provider = config['provider']
        
        if provider == 'local_compute':
            source_metric = config['source_metric']
            source_data = self.get_metric(source_metric, **params)
            
            if metric_name == 'realized_volatility':
                return compute_realized_volatility(source_data)
        
        elif provider == 'compute_from_chain':
            inputs = config['inputs']
            chain_data = self.get_metric(inputs[0], **params)
            
            if metric_name == 'market_gex':
                return compute_market_gex(chain_data)
        
        elif provider == 'compute_from_prices':
            inputs = config['inputs']
            price_data = self.get_metric(inputs[0], **params)
            
            if metric_name == 'avg_volume_30d':
                return compute_avg_volume(price_data, days=30)
        
        return None
    
    # High-level convenience methods
    
    def get_stock_price(self, ticker: str) -> Optional[StockPrice]:
        """Get current stock price."""
        try:
            data = self.get_metric('current_price', ticker=ticker)
            bid_ask = self.get_metric('bid_ask', ticker=ticker)
            prev = self.get_metric('daily_prev_ohlcv', ticker=ticker)
            
            return StockPrice.from_polygon(data, bid_ask, prev)
        except Exception as e:
            print(f"Error fetching stock price for {ticker}: {str(e)}")
            return None
    
    def get_options_chain(self, ticker: str) -> Optional[OptionsChain]:
        """Get full options chain for a ticker."""
        try:
            data = self.get_metric('options_chain_snapshot', underlying=ticker)
            return OptionsChain.from_polygon(data)
        except Exception as e:
            print(f"Error fetching options chain for {ticker}: {str(e)}")
            return None
    
    def get_market_context(self) -> Optional[MarketContext]:
        """Get market-wide context data."""
        try:
            vix = self.get_metric('vix_index_level')
            spy = self.get_metric('spy_price_change')
            qqq = self.get_metric('qqq_price_change')
            pcr = self.get_metric('put_call_ratio_market')
            
            return MarketContext.from_sources(vix, spy, qqq, pcr)
        except Exception as e:
            print(f"Error fetching market context: {str(e)}")
            return None
    
    def get_earnings_events(self, ticker: str, days_ahead: int = 90) -> List[Dict]:
        """Get upcoming earnings events."""
        try:
            from_date = datetime.now().strftime('%Y-%m-%d')
            to_date = (datetime.now() + timedelta(days=days_ahead)).strftime('%Y-%m-%d')
            
            data = self.get_metric(
                'earnings_calendar',
                ticker=ticker,
                from_date=from_date,
                to_date=to_date
            )
            return data.get('earnings', [])
        except Exception as e:
            print(f"Error fetching earnings for {ticker}: {str(e)}")
            return []
    
    def get_dividend_events(self, ticker: str) -> List[Dict]:
        """Get dividend history."""
        try:
            data = self.get_metric('dividends_history', ticker=ticker)
            return data.get('results', [])
        except Exception as e:
            print(f"Error fetching dividends for {ticker}: {str(e)}")
            return []

