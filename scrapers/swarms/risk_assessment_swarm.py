"""
Risk Assessment Swarm - Collects risk metrics and insider trading data
"""

import asyncio
from typing import Dict, List, Any, Optional
from datetime import datetime
from .base_swarm import BaseSwarm

class RiskAssessmentSwarm(BaseSwarm):
    """Dynamic swarm for risk assessment data"""
    
    def __init__(self):
        super().__init__("risk_assessment")
        self.risk_sources = {
            'sec_edgar': SECEdgarSpider(),
            'insider_monkey': InsiderMonkeySpider(),
            'openinsider': OpenInsiderSpider(),
            'whale_wisdom': WhaleWisdomSpider(),
        }
        self.risk_analyzers = {
            'volatility': VolatilityAnalyzer(),
            'var_calculator': VaRCalculator(),
            'correlation': CorrelationAnalyzer(),
            'beta_calculator': BetaCalculator(),
        }
    
    async def collect_data(self, ticker: str, **kwargs) -> Dict[str, Any]:
        """Collect comprehensive risk assessment data"""
        start_time = datetime.now()
        insider_data = []
        volatility_data = {}
        correlation_data = {}
        var_data = {}
        beta_data = {}
        
        # Get healthy sources
        healthy_sources = self.get_best_spiders(min_health=0.5)
        if not healthy_sources:
            healthy_sources = list(self.risk_sources.keys())
        
        # Collect insider trading data
        tasks = []
        for source in healthy_sources:
            spider = self.risk_sources[source]
            task = self.collect_from_source(spider, source, ticker)
            tasks.append(task)
        
        # Execute all tasks concurrently
        source_results = await asyncio.gather(*tasks, return_exceptions=True)
        
        # Process results
        for i, result in enumerate(source_results):
            source = healthy_sources[i]
            if isinstance(result, Exception):
                self.logger.error(f"Risk source {source} failed: {result}")
                self.update_health_metrics(source, False, 0.0)
            else:
                if result:
                    insider_data.extend(result.get('insider_trades', []))
                    self.update_health_metrics(source, True, 
                                             (datetime.now() - start_time).total_seconds())
        
        # Calculate risk metrics
        for analyzer_name, analyzer in self.risk_analyzers.items():
            try:
                if analyzer_name == 'volatility':
                    volatility_data = await analyzer.calculate_volatility(ticker)
                elif analyzer_name == 'var_calculator':
                    var_data = await analyzer.calculate_var(ticker)
                elif analyzer_name == 'correlation':
                    correlation_data = await analyzer.calculate_correlations(ticker)
                elif analyzer_name == 'beta_calculator':
                    beta_data = await analyzer.calculate_beta(ticker)
            except Exception as e:
                self.logger.warning(f"Risk analyzer {analyzer_name} failed: {e}")
        
        # Calculate overall risk score
        risk_score = self.calculate_overall_risk_score(
            insider_data, volatility_data, var_data, correlation_data, beta_data
        )
        
        return {
            'ticker': ticker,
            'insider_trading': insider_data,
            'volatility_metrics': volatility_data,
            'var_metrics': var_data,
            'correlation_matrix': correlation_data,
            'beta_metrics': beta_data,
            'risk_score': risk_score,
            'sources': healthy_sources,
            'timestamp': datetime.now().isoformat(),
            'collection_time': (datetime.now() - start_time).total_seconds()
        }
    
    async def collect_from_source(self, spider, source: str, ticker: str) -> Optional[Dict[str, Any]]:
        """Collect risk data from a specific source"""
        try:
            data = await spider.collect_insider_data(ticker)
            return data
        except Exception as e:
            self.logger.error(f"Error collecting from {source}: {e}")
            return None
    
    def calculate_overall_risk_score(self, insider_data: List[Dict], volatility_data: Dict, 
                                   var_data: Dict, correlation_data: Dict, beta_data: Dict) -> Dict[str, Any]:
        """Calculate overall risk score based on all risk factors"""
        
        # Insider trading risk (0-100)
        insider_risk = 0
        if insider_data:
            recent_sells = len([trade for trade in insider_data 
                              if trade.get('transaction_type') == 'sell' and 
                              trade.get('days_ago', 999) <= 30])
            insider_risk = min(100, recent_sells * 20)  # 20 points per recent sell
        
        # Volatility risk (0-100)
        volatility_risk = 0
        if volatility_data:
            volatility = volatility_data.get('annualized_volatility', 0)
            volatility_risk = min(100, volatility * 100)  # Scale volatility to 0-100
        
        # VaR risk (0-100)
        var_risk = 0
        if var_data:
            var_1d = var_data.get('var_1d', 0)
            var_risk = min(100, var_1d * 100)  # Scale VaR to 0-100
        
        # Beta risk (0-100)
        beta_risk = 0
        if beta_data:
            beta = beta_data.get('beta', 1.0)
            beta_risk = min(100, abs(beta - 1.0) * 50)  # Higher deviation from 1 = higher risk
        
        # Calculate weighted average
        weights = {
            'insider': 0.3,
            'volatility': 0.25,
            'var': 0.25,
            'beta': 0.2
        }
        
        overall_risk = (
            insider_risk * weights['insider'] +
            volatility_risk * weights['volatility'] +
            var_risk * weights['var'] +
            beta_risk * weights['beta']
        )
        
        return {
            'overall_score': overall_risk,
            'components': {
                'insider_trading_risk': insider_risk,
                'volatility_risk': volatility_risk,
                'var_risk': var_risk,
                'beta_risk': beta_risk
            },
            'risk_level': self.get_risk_level(overall_risk),
            'confidence': 0.8
        }
    
    def get_risk_level(self, risk_score: float) -> str:
        """Convert risk score to risk level"""
        if risk_score < 25:
            return 'Low'
        elif risk_score < 50:
            return 'Medium'
        elif risk_score < 75:
            return 'High'
        else:
            return 'Very High'

# Placeholder spider and analyzer classes
class SECEdgarSpider:
    async def collect_insider_data(self, ticker: str):
        return {
            'insider_trades': [
                {
                    'insider_name': 'John Doe',
                    'title': 'CEO',
                    'transaction_type': 'buy',
                    'shares': 10000,
                    'price': 150.0,
                    'date': '2024-01-01',
                    'days_ago': 5,
                    'filing_date': '2024-01-02'
                }
            ]
        }

class InsiderMonkeySpider:
    async def collect_insider_data(self, ticker: str):
        return {
            'insider_trades': [
                {
                    'insider_name': 'Jane Smith',
                    'title': 'CFO',
                    'transaction_type': 'sell',
                    'shares': 5000,
                    'price': 152.0,
                    'date': '2024-01-03',
                    'days_ago': 3,
                    'filing_date': '2024-01-04'
                }
            ]
        }

class OpenInsiderSpider:
    async def collect_insider_data(self, ticker: str):
        return {
            'insider_trades': [
                {
                    'insider_name': 'Bob Johnson',
                    'title': 'Director',
                    'transaction_type': 'buy',
                    'shares': 2000,
                    'price': 151.0,
                    'date': '2024-01-05',
                    'days_ago': 1,
                    'filing_date': '2024-01-06'
                }
            ]
        }

class WhaleWisdomSpider:
    async def collect_insider_data(self, ticker: str):
        return {
            'insider_trades': [
                {
                    'insider_name': 'Alice Brown',
                    'title': 'VP',
                    'transaction_type': 'sell',
                    'shares': 3000,
                    'price': 153.0,
                    'date': '2024-01-07',
                    'days_ago': 0,
                    'filing_date': '2024-01-08'
                }
            ]
        }

class VolatilityAnalyzer:
    async def calculate_volatility(self, ticker: str):
        return {
            'daily_volatility': 0.02,
            'annualized_volatility': 0.32,
            'volatility_rank': 0.6,
            'confidence': 0.8
        }

class VaRCalculator:
    async def calculate_var(self, ticker: str):
        return {
            'var_1d': 0.03,
            'var_5d': 0.07,
            'var_30d': 0.15,
            'confidence_level': 0.95,
            'confidence': 0.7
        }

class CorrelationAnalyzer:
    async def calculate_correlations(self, ticker: str):
        return {
            'sp500_correlation': 0.7,
            'sector_correlation': 0.8,
            'market_correlation': 0.6,
            'confidence': 0.8
        }

class BetaCalculator:
    async def calculate_beta(self, ticker: str):
        return {
            'beta': 1.2,
            'alpha': 0.05,
            'r_squared': 0.6,
            'confidence': 0.7
        } 