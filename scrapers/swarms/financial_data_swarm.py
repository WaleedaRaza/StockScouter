"""
Financial Data Swarm - Collects comprehensive financial data from multiple sources
"""

import asyncio
from typing import Dict, List, Any, Optional
from datetime import datetime
from .base_swarm import BaseSwarm

class FinancialDataSwarm(BaseSwarm):
    """Dynamic swarm for financial data collection"""
    
    def __init__(self):
        super().__init__("financial_data")
        self.spiders = {
            'yahoo_finance': YahooFinanceSpider(),
            'marketwatch': MarketWatchSpider(),
            'google_finance': GoogleFinanceSpider(),
            'tradingview': TradingViewSpider(),
        }
        self.strategies = [
            'json_ld_extraction',
            'script_analysis', 
            'table_parsing',
            'api_discovery',
            'dynamic_rendering'
        ]
    
    async def collect_data(self, ticker: str, **kwargs) -> Dict[str, Any]:
        """Collect financial data using multiple sources and strategies"""
        start_time = datetime.now()
        results = []
        
        # Get healthy spiders
        healthy_spiders = self.get_best_spiders(min_health=0.5)
        if not healthy_spiders:
            healthy_spiders = list(self.spiders.keys())  # Use all if none are healthy
        
        # Collect data from each spider
        tasks = []
        for spider_name in healthy_spiders:
            spider = self.spiders[spider_name]
            task = self.collect_from_spider(spider, spider_name, ticker)
            tasks.append(task)
        
        # Execute all tasks concurrently
        spider_results = await asyncio.gather(*tasks, return_exceptions=True)
        
        # Process results
        for i, result in enumerate(spider_results):
            spider_name = healthy_spiders[i]
            if isinstance(result, Exception):
                self.logger.error(f"Spider {spider_name} failed: {result}")
                self.update_health_metrics(spider_name, False, 0.0)
            else:
                if result and self.validate_financial_data(result):
                    results.append(result)
                    self.update_health_metrics(spider_name, True, 
                                             (datetime.now() - start_time).total_seconds())
        
        if not results:
            raise Exception(f"No financial data collected for {ticker}")
        
        # Merge and return data
        merged_data = self.merge_financial_data(results)
        return {
            'ticker': ticker,
            'data': merged_data,
            'sources': [r.get('source', 'unknown') for r in results],
            'confidence': self.calculate_confidence(results),
            'timestamp': datetime.now().isoformat(),
            'collection_time': (datetime.now() - start_time).total_seconds()
        }
    
    async def collect_from_spider(self, spider, spider_name: str, ticker: str) -> Optional[Dict[str, Any]]:
        """Collect data from a specific spider with multiple strategies"""
        for strategy in self.strategies:
            try:
                data = await spider.extract_with_strategy(ticker, strategy)
                if data and self.validate_financial_data(data):
                    return {
                        'source': spider_name,
                        'strategy': strategy,
                        'data': data
                    }
            except Exception as e:
                self.logger.debug(f"Strategy {strategy} failed for {spider_name}: {e}")
                continue
        
        return None
    
    def validate_financial_data(self, data: Dict[str, Any]) -> bool:
        """Validate financial data quality"""
        required_fields = ['price', 'volume', 'market_cap']
        return all(field in data for field in required_fields)
    
    def merge_financial_data(self, results: List[Dict[str, Any]]) -> Dict[str, Any]:
        """Merge financial data from multiple sources"""
        merged = {
            'price': 0.0,
            'volume': 0,
            'market_cap': 0.0,
            'pe_ratio': 0.0,
            'dividend_yield': 0.0,
            'beta': 0.0,
            'high_52w': 0.0,
            'low_52w': 0.0,
        }
        
        valid_prices = []
        valid_volumes = []
        valid_market_caps = []
        
        for result in results:
            data = result['data']
            if data.get('price', 0) > 0:
                valid_prices.append(data['price'])
            if data.get('volume', 0) > 0:
                valid_volumes.append(data['volume'])
            if data.get('market_cap', 0) > 0:
                valid_market_caps.append(data['market_cap'])
        
        # Use median for key metrics to avoid outliers
        if valid_prices:
            merged['price'] = sorted(valid_prices)[len(valid_prices)//2]
        if valid_volumes:
            merged['volume'] = sorted(valid_volumes)[len(valid_volumes)//2]
        if valid_market_caps:
            merged['market_cap'] = sorted(valid_market_caps)[len(valid_market_caps)//2]
        
        return merged
    
    def calculate_confidence(self, results: List[Dict[str, Any]]) -> float:
        """Calculate confidence score based on data quality and source agreement"""
        if not results:
            return 0.0
        
        # Base confidence on number of sources
        source_confidence = min(len(results) / 3.0, 1.0)
        
        # Check data agreement
        prices = [r['data'].get('price', 0) for r in results if r['data'].get('price', 0) > 0]
        if len(prices) > 1:
            price_variance = (max(prices) - min(prices)) / max(prices)
            agreement_confidence = max(0, 1.0 - price_variance)
        else:
            agreement_confidence = 0.5
        
        return (source_confidence + agreement_confidence) / 2.0

# Import real spiders
from spiders.financial.yahoo_finance_spider import YahooFinanceSpider

class MarketWatchSpider:
    async def extract_with_strategy(self, ticker: str, strategy: str):
        # TODO: Implement
        return {
            'price': 151.0,
            'volume': 950000,
            'market_cap': 2520000000.0,
            'pe_ratio': 24.5,
            'dividend_yield': 2.4,
            'beta': 1.1,
            'high_52w': 181.0,
            'low_52w': 121.0,
        }

class GoogleFinanceSpider:
    async def extract_with_strategy(self, ticker: str, strategy: str):
        # TODO: Implement
        return {
            'price': 149.5,
            'volume': 1050000,
            'market_cap': 2480000000.0,
            'pe_ratio': 25.5,
            'dividend_yield': 2.6,
            'beta': 1.3,
            'high_52w': 179.0,
            'low_52w': 119.0,
        }

class TradingViewSpider:
    async def extract_with_strategy(self, ticker: str, strategy: str):
        # TODO: Implement
        return {
            'price': 150.5,
            'volume': 980000,
            'market_cap': 2510000000.0,
            'pe_ratio': 24.8,
            'dividend_yield': 2.45,
            'beta': 1.15,
            'high_52w': 180.5,
            'low_52w': 120.5,
        } 