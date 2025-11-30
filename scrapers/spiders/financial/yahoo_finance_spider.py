"""
Yahoo Finance Spider - Real financial data extraction
"""

import asyncio
import aiohttp
import json
import re
from typing import Dict, Any, Optional
from datetime import datetime
import logging

logger = logging.getLogger(__name__)

class YahooFinanceSpider:
    """Real Yahoo Finance spider for financial data"""
    
    def __init__(self):
        self.base_url = "https://finance.yahoo.com"
        self.session = None
        self.headers = {
            'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'
        }
    
    async def __aenter__(self):
        self.session = aiohttp.ClientSession(headers=self.headers)
        return self
    
    async def __aexit__(self, exc_type, exc_val, exc_tb):
        if self.session:
            await self.session.close()
    
    async def extract_with_strategy(self, ticker: str, strategy: str = "api_discovery") -> Optional[Dict[str, Any]]:
        """Extract financial data using multiple strategies"""
        try:
            if strategy == "api_discovery":
                return await self._extract_via_api(ticker)
            elif strategy == "json_ld_extraction":
                return await self._extract_via_json_ld(ticker)
            elif strategy == "script_analysis":
                return await self._extract_via_script_analysis(ticker)
            else:
                return await self._extract_via_api(ticker)  # Default fallback
        except Exception as e:
            logger.error(f"Strategy {strategy} failed for {ticker}: {e}")
            return None
    
    async def _extract_via_api(self, ticker: str) -> Optional[Dict[str, Any]]:
        """Extract data via Yahoo Finance API"""
        try:
            # Yahoo Finance API endpoint
            api_url = f"https://query1.finance.yahoo.com/v8/finance/chart/{ticker}"
            params = {
                'interval': '1d',
                'range': '1d',
                'includePrePost': 'false',
                'events': 'div,split'
            }
            
            async with aiohttp.ClientSession() as session:
                async with session.get(api_url, params=params, headers=self.headers) as response:
                    if response.status == 200:
                        data = await response.json()
                        return self._parse_api_response(data, ticker)
                    else:
                        logger.warning(f"API request failed for {ticker}: {response.status}")
                        return None
        except Exception as e:
            logger.error(f"API extraction failed for {ticker}: {e}")
            return None
    
    async def _extract_via_json_ld(self, ticker: str) -> Optional[Dict[str, Any]]:
        """Extract data via JSON-LD structured data"""
        try:
            url = f"{self.base_url}/quote/{ticker}"
            async with aiohttp.ClientSession() as session:
                async with session.get(url, headers=self.headers) as response:
                    if response.status == 200:
                        html = await response.text()
                        return self._parse_json_ld(html, ticker)
                    else:
                        logger.warning(f"JSON-LD extraction failed for {ticker}: {response.status}")
                        return None
        except Exception as e:
            logger.error(f"JSON-LD extraction failed for {ticker}: {e}")
            return None
    
    async def _extract_via_script_analysis(self, ticker: str) -> Optional[Dict[str, Any]]:
        """Extract data via script tag analysis"""
        try:
            url = f"{self.base_url}/quote/{ticker}"
            async with aiohttp.ClientSession() as session:
                async with session.get(url, headers=self.headers) as response:
                    if response.status == 200:
                        html = await response.text()
                        return self._parse_script_data(html, ticker)
                    else:
                        logger.warning(f"Script analysis failed for {ticker}: {response.status}")
                        return None
        except Exception as e:
            logger.error(f"Script analysis failed for {ticker}: {e}")
            return None
    
    def _parse_api_response(self, data: Dict[str, Any], ticker: str) -> Optional[Dict[str, Any]]:
        """Parse Yahoo Finance API response"""
        try:
            if 'chart' not in data or 'result' not in data['chart'] or not data['chart']['result']:
                return None
            
            result = data['chart']['result'][0]
            meta = result.get('meta', {})
            indicators = result.get('indicators', {})
            
            # Extract price data
            quote = indicators.get('quote', [{}])[0]
            if not quote or 'close' not in quote:
                return None
            
            close_prices = quote['close']
            if not close_prices:
                return None
            
            current_price = close_prices[-1]
            volume = quote.get('volume', [0])[-1] if quote.get('volume') else 0
            
            # Calculate market cap (approximate)
            market_cap = meta.get('marketCap', 0)
            
            # Extract other metrics
            pe_ratio = meta.get('trailingPE', 0)
            dividend_yield = meta.get('trailingAnnualDividendYield', 0)
            beta = meta.get('beta', 0)
            
            # 52-week high/low
            high_52w = meta.get('fiftyTwoWeekHigh', 0)
            low_52w = meta.get('fiftyTwoWeekLow', 0)
            
            return {
                'price': float(current_price) if current_price else 0.0,
                'volume': int(volume) if volume else 0,
                'market_cap': float(market_cap) if market_cap else 0.0,
                'pe_ratio': float(pe_ratio) if pe_ratio else 0.0,
                'dividend_yield': float(dividend_yield) if dividend_yield else 0.0,
                'beta': float(beta) if beta else 0.0,
                'high_52w': float(high_52w) if high_52w else 0.0,
                'low_52w': float(low_52w) if low_52w else 0.0,
                'currency': meta.get('currency', 'USD'),
                'exchange': meta.get('exchangeName', ''),
                'timestamp': datetime.now().isoformat()
            }
        except Exception as e:
            logger.error(f"Error parsing API response for {ticker}: {e}")
            return None
    
    def _parse_json_ld(self, html: str, ticker: str) -> Optional[Dict[str, Any]]:
        """Parse JSON-LD structured data from HTML"""
        try:
            # Find JSON-LD scripts
            json_ld_pattern = r'<script type="application/ld\+json">(.*?)</script>'
            matches = re.findall(json_ld_pattern, html, re.DOTALL)
            
            for match in matches:
                try:
                    data = json.loads(match)
                    if isinstance(data, dict) and data.get('@type') == 'Organization':
                        # Extract financial data from JSON-LD
                        return self._extract_from_json_ld(data, ticker)
                except json.JSONDecodeError:
                    continue
            
            return None
        except Exception as e:
            logger.error(f"Error parsing JSON-LD for {ticker}: {e}")
            return None
    
    def _parse_script_data(self, html: str, ticker: str) -> Optional[Dict[str, Any]]:
        """Parse financial data from script tags"""
        try:
            # Look for financial data in script tags
            script_pattern = r'<script[^>]*>(.*?)</script>'
            matches = re.findall(script_pattern, html, re.DOTALL)
            
            for match in matches:
                # Look for price data
                price_match = re.search(r'"regularMarketPrice":\s*([0-9.]+)', match)
                volume_match = re.search(r'"regularMarketVolume":\s*([0-9]+)', match)
                market_cap_match = re.search(r'"marketCap":\s*([0-9]+)', match)
                
                if price_match:
                    price = float(price_match.group(1))
                    volume = int(volume_match.group(1)) if volume_match else 0
                    market_cap = float(market_cap_match.group(1)) if market_cap_match else 0
                    
                    return {
                        'price': price,
                        'volume': volume,
                        'market_cap': market_cap,
                        'pe_ratio': 0.0,  # Would need more parsing
                        'dividend_yield': 0.0,
                        'beta': 0.0,
                        'high_52w': 0.0,
                        'low_52w': 0.0,
                        'timestamp': datetime.now().isoformat()
                    }
            
            return None
        except Exception as e:
            logger.error(f"Error parsing script data for {ticker}: {e}")
            return None
    
    def _extract_from_json_ld(self, data: Dict[str, Any], ticker: str) -> Optional[Dict[str, Any]]:
        """Extract financial data from JSON-LD structure"""
        try:
            # This is a simplified extraction - real implementation would be more complex
            return {
                'price': 0.0,  # Would need to find price in JSON-LD
                'volume': 0,
                'market_cap': 0.0,
                'pe_ratio': 0.0,
                'dividend_yield': 0.0,
                'beta': 0.0,
                'high_52w': 0.0,
                'low_52w': 0.0,
                'timestamp': datetime.now().isoformat()
            }
        except Exception as e:
            logger.error(f"Error extracting from JSON-LD for {ticker}: {e}")
            return None 