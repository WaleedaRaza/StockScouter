"""
Base swarm class for all scraper swarms
"""

import asyncio
import logging
from abc import ABC, abstractmethod
from typing import Dict, List, Any, Optional
from datetime import datetime
import json

class BaseSwarm(ABC):
    """Base class for all scraper swarms"""
    
    def __init__(self, name: str):
        self.name = name
        self.logger = logging.getLogger(f"swarm.{name}")
        self.spiders = {}
        self.strategies = []
        self.health_metrics = {}
        self.performance_metrics = {}
        
    @abstractmethod
    async def collect_data(self, ticker: str, **kwargs) -> Dict[str, Any]:
        """Collect data using the swarm's spiders and strategies"""
        pass
    
    async def execute_with_fallbacks(self, func, *args, **kwargs):
        """Execute function with fallback strategies"""
        for attempt in range(3):
            try:
                return await func(*args, **kwargs)
            except Exception as e:
                self.logger.warning(f"Attempt {attempt + 1} failed: {e}")
                if attempt < 2:
                    await asyncio.sleep(2 ** attempt)  # Exponential backoff
                else:
                    raise e
    
    def update_health_metrics(self, spider_name: str, success: bool, response_time: float):
        """Update health metrics for a spider"""
        if spider_name not in self.health_metrics:
            self.health_metrics[spider_name] = {
                'success_count': 0,
                'failure_count': 0,
                'total_requests': 0,
                'avg_response_time': 0.0,
                'last_success': None,
                'last_failure': None
            }
        
        metrics = self.health_metrics[spider_name]
        metrics['total_requests'] += 1
        
        if success:
            metrics['success_count'] += 1
            metrics['last_success'] = datetime.now().isoformat()
        else:
            metrics['failure_count'] += 1
            metrics['last_failure'] = datetime.now().isoformat()
        
        # Update average response time
        current_avg = metrics['avg_response_time']
        total_requests = metrics['total_requests']
        metrics['avg_response_time'] = (current_avg * (total_requests - 1) + response_time) / total_requests
    
    def get_spider_health(self, spider_name: str) -> float:
        """Get health score for a spider (0.0 to 1.0)"""
        if spider_name not in self.health_metrics:
            return 1.0  # Assume healthy if no data
        
        metrics = self.health_metrics[spider_name]
        if metrics['total_requests'] == 0:
            return 1.0
        
        success_rate = metrics['success_count'] / metrics['total_requests']
        return success_rate
    
    def get_best_spiders(self, min_health: float = 0.7) -> List[str]:
        """Get list of spiders with health above threshold"""
        return [
            spider_name for spider_name in self.spiders.keys()
            if self.get_spider_health(spider_name) >= min_health
        ] 