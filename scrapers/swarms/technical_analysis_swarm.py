"""
Technical Analysis Swarm - Collects technical analysis data from multiple sources
"""

import asyncio
from typing import Dict, List, Any, Optional
from datetime import datetime
from .base_swarm import BaseSwarm

class TechnicalAnalysisSwarm(BaseSwarm):
    """Dynamic swarm for technical analysis data"""
    
    def __init__(self):
        super().__init__("technical_analysis")
        self.technical_sources = {
            'yahoo_charts': YahooChartsSpider(),
            'tradingview': TradingViewSpider(),
            'finviz': FinvizSpider(),
            'stockcharts': StockChartsSpider(),
        }
        self.analysis_engines = {
            'elliott_wave': ElliottWaveAnalyzer(),
            'fibonacci': FibonacciAnalyzer(),
            'pattern_recognition': PatternRecognitionEngine(),
            'volume_analysis': VolumeAnalysisEngine(),
        }
    
    async def collect_data(self, ticker: str, **kwargs) -> Dict[str, Any]:
        """Collect comprehensive technical analysis"""
        start_time = datetime.now()
        price_data = []
        volume_data = []
        indicator_data = {}
        
        # Get healthy sources
        healthy_sources = self.get_best_spiders(min_health=0.5)
        if not healthy_sources:
            healthy_sources = list(self.technical_sources.keys())
        
        # Collect price and volume data
        tasks = []
        for source in healthy_sources:
            spider = self.technical_sources[source]
            task = self.collect_from_source(spider, source, ticker)
            tasks.append(task)
        
        # Execute all tasks concurrently
        source_results = await asyncio.gather(*tasks, return_exceptions=True)
        
        # Process results
        for i, result in enumerate(source_results):
            source = healthy_sources[i]
            if isinstance(result, Exception):
                self.logger.error(f"Technical source {source} failed: {result}")
                self.update_health_metrics(source, False, 0.0)
            else:
                if result:
                    price_data.extend(result.get('price_data', []))
                    volume_data.extend(result.get('volume_data', []))
                    self.update_health_metrics(source, True, 
                                             (datetime.now() - start_time).total_seconds())
        
        # Run technical analysis engines
        for engine_name, engine in self.analysis_engines.items():
            try:
                analysis = await engine.analyze(price_data, volume_data)
                indicator_data[engine_name] = analysis
            except Exception as e:
                self.logger.warning(f"Analysis engine {engine_name} failed: {e}")
        
        # Detect patterns and calculate support/resistance
        patterns = self.detect_patterns(price_data, volume_data)
        support_resistance = self.calculate_support_resistance(price_data)
        
        return {
            'ticker': ticker,
            'price_data': self.clean_and_merge_price_data(price_data),
            'volume_data': self.clean_and_merge_volume_data(volume_data),
            'indicators': indicator_data,
            'patterns': patterns,
            'support_resistance': support_resistance,
            'elliott_wave': indicator_data.get('elliott_wave'),
            'fibonacci_levels': indicator_data.get('fibonacci'),
            'sources': healthy_sources,
            'timestamp': datetime.now().isoformat(),
            'collection_time': (datetime.now() - start_time).total_seconds()
        }
    
    async def collect_from_source(self, spider, source: str, ticker: str) -> Optional[Dict[str, Any]]:
        """Collect technical data from a specific source"""
        try:
            data = await spider.collect_technical_data(ticker)
            return data
        except Exception as e:
            self.logger.error(f"Error collecting from {source}: {e}")
            return None
    
    def detect_patterns(self, price_data: List[Dict], volume_data: List[Dict]) -> List[Dict[str, Any]]:
        """Detect candlestick and chart patterns"""
        patterns = []
        
        if len(price_data) < 20:
            return patterns
        
        # Simple pattern detection (placeholder)
        prices = [p.get('close', 0) for p in price_data[-20:]]
        volumes = [v.get('volume', 0) for v in volume_data[-20:]]
        
        # Detect doji pattern
        if len(prices) >= 2:
            current_price = prices[-1]
            prev_price = prices[-2]
            if abs(current_price - prev_price) / prev_price < 0.01:  # Less than 1% change
                patterns.append({
                    'type': 'doji',
                    'confidence': 0.7,
                    'description': 'Doji pattern indicating indecision'
                })
        
        # Detect volume spike
        if len(volumes) >= 5:
            avg_volume = sum(volumes[:-1]) / len(volumes[:-1])
            current_volume = volumes[-1]
            if current_volume > avg_volume * 2:  # Volume spike
                patterns.append({
                    'type': 'volume_spike',
                    'confidence': 0.8,
                    'description': f'Volume spike: {current_volume} vs avg {avg_volume:.0f}'
                })
        
        return patterns
    
    def calculate_support_resistance(self, price_data: List[Dict]) -> Dict[str, Any]:
        """Calculate support and resistance levels"""
        if len(price_data) < 20:
            return {'support': [], 'resistance': []}
        
        prices = [p.get('close', 0) for p in price_data]
        highs = [p.get('high', 0) for p in price_data]
        lows = [p.get('low', 0) for p in price_data]
        
        # Simple support/resistance calculation
        resistance_levels = sorted(set(highs), reverse=True)[:3]
        support_levels = sorted(set(lows))[:3]
        
        return {
            'support': [{'level': level, 'strength': 0.7} for level in support_levels],
            'resistance': [{'level': level, 'strength': 0.7} for level in resistance_levels]
        }
    
    def clean_and_merge_price_data(self, price_data: List[Dict]) -> List[Dict]:
        """Clean and merge price data from multiple sources"""
        if not price_data:
            return []
        
        # Remove duplicates and sort by timestamp
        unique_data = {}
        for data in price_data:
            timestamp = data.get('timestamp', '')
            if timestamp and timestamp not in unique_data:
                unique_data[timestamp] = data
        
        return sorted(unique_data.values(), key=lambda x: x.get('timestamp', ''))
    
    def clean_and_merge_volume_data(self, volume_data: List[Dict]) -> List[Dict]:
        """Clean and merge volume data from multiple sources"""
        if not volume_data:
            return []
        
        # Remove duplicates and sort by timestamp
        unique_data = {}
        for data in volume_data:
            timestamp = data.get('timestamp', '')
            if timestamp and timestamp not in unique_data:
                unique_data[timestamp] = data
        
        return sorted(unique_data.values(), key=lambda x: x.get('timestamp', ''))

# Placeholder spider and analyzer classes
class YahooChartsSpider:
    async def collect_technical_data(self, ticker: str):
        return {
            'price_data': [
                {'timestamp': '2024-01-01', 'open': 150.0, 'high': 155.0, 'low': 148.0, 'close': 152.0},
                {'timestamp': '2024-01-02', 'open': 152.0, 'high': 158.0, 'low': 150.0, 'close': 156.0},
            ],
            'volume_data': [
                {'timestamp': '2024-01-01', 'volume': 1000000},
                {'timestamp': '2024-01-02', 'volume': 1200000},
            ]
        }

class TradingViewSpider:
    async def collect_technical_data(self, ticker: str):
        return {
            'price_data': [
                {'timestamp': '2024-01-01', 'open': 150.5, 'high': 155.5, 'low': 148.5, 'close': 152.5},
                {'timestamp': '2024-01-02', 'open': 152.5, 'high': 158.5, 'low': 150.5, 'close': 156.5},
            ],
            'volume_data': [
                {'timestamp': '2024-01-01', 'volume': 950000},
                {'timestamp': '2024-01-02', 'volume': 1150000},
            ]
        }

class FinvizSpider:
    async def collect_technical_data(self, ticker: str):
        return {
            'price_data': [
                {'timestamp': '2024-01-01', 'open': 149.5, 'high': 154.5, 'low': 147.5, 'close': 151.5},
                {'timestamp': '2024-01-02', 'open': 151.5, 'high': 157.5, 'low': 149.5, 'close': 155.5},
            ],
            'volume_data': [
                {'timestamp': '2024-01-01', 'volume': 1050000},
                {'timestamp': '2024-01-02', 'volume': 1250000},
            ]
        }

class StockChartsSpider:
    async def collect_technical_data(self, ticker: str):
        return {
            'price_data': [
                {'timestamp': '2024-01-01', 'open': 150.2, 'high': 155.2, 'low': 148.2, 'close': 152.2},
                {'timestamp': '2024-01-02', 'open': 152.2, 'high': 158.2, 'low': 150.2, 'close': 156.2},
            ],
            'volume_data': [
                {'timestamp': '2024-01-01', 'volume': 980000},
                {'timestamp': '2024-01-02', 'volume': 1180000},
            ]
        }

class ElliottWaveAnalyzer:
    async def analyze(self, price_data: List[Dict], volume_data: List[Dict]):
        return {
            'wave_count': 3,
            'current_wave': 'Wave 3',
            'confidence': 0.7,
            'target': 180.0,
            'description': 'Elliott Wave analysis indicates Wave 3 in progress'
        }

class FibonacciAnalyzer:
    async def analyze(self, price_data: List[Dict], volume_data: List[Dict]):
        return {
            'retracement_levels': [0.236, 0.382, 0.5, 0.618, 0.786],
            'extension_levels': [1.272, 1.618, 2.0],
            'current_level': 0.618,
            'confidence': 0.6
        }

class PatternRecognitionEngine:
    async def analyze(self, price_data: List[Dict], volume_data: List[Dict]):
        return {
            'patterns': ['ascending_triangle', 'bull_flag'],
            'confidence': 0.8,
            'description': 'Multiple bullish patterns detected'
        }

class VolumeAnalysisEngine:
    async def analyze(self, price_data: List[Dict], volume_data: List[Dict]):
        return {
            'volume_trend': 'increasing',
            'relative_volume': 1.2,
            'volume_profile': 'bullish',
            'confidence': 0.7
        } 