"""
Social Sentiment Swarm - Collects social media sentiment from multiple platforms
"""

import asyncio
from typing import Dict, List, Any, Optional
from datetime import datetime
from .base_swarm import BaseSwarm

class SocialSentimentSwarm(BaseSwarm):
    """Dynamic swarm for social media sentiment analysis"""
    
    def __init__(self):
        super().__init__("social_sentiment")
        self.social_sources = {
            'reddit': RedditSpider(),
            'twitter': TwitterSpider(),
            'stocktwits': StockTwitsSpider(),
            'discord': DiscordSpider(),
        }
        self.community_analyzers = {
            'wallstreetbets': WallStreetBetsAnalyzer(),
            'investing': InvestingAnalyzer(),
            'stocks': StocksAnalyzer(),
            'options': OptionsAnalyzer(),
        }
    
    async def collect_data(self, ticker: str, **kwargs) -> Dict[str, Any]:
        """Collect social media sentiment from multiple platforms"""
        start_time = datetime.now()
        sentiment_data = {}
        
        # Get healthy sources
        healthy_sources = self.get_best_spiders(min_health=0.5)
        if not healthy_sources:
            healthy_sources = list(self.social_sources.keys())
        
        # Collect from each social platform
        tasks = []
        for platform in healthy_sources:
            spider = self.social_sources[platform]
            task = self.collect_from_platform(spider, platform, ticker)
            tasks.append(task)
        
        # Execute all tasks concurrently
        platform_results = await asyncio.gather(*tasks, return_exceptions=True)
        
        # Process results
        for i, result in enumerate(platform_results):
            platform = healthy_sources[i]
            if isinstance(result, Exception):
                self.logger.error(f"Platform {platform} failed: {result}")
                self.update_health_metrics(platform, False, 0.0)
            else:
                if result:
                    sentiment_data[platform] = result
                    self.update_health_metrics(platform, True, 
                                             (datetime.now() - start_time).total_seconds())
        
        # Analyze community-specific sentiment
        community_sentiment = {}
        for community, analyzer in self.community_analyzers.items():
            try:
                community_data = await analyzer.analyze_community_sentiment(ticker)
                community_sentiment[community] = community_data
            except Exception as e:
                self.logger.warning(f"Community {community} failed: {e}")
        
        # Calculate overall metrics
        viral_content = self.detect_viral_content(sentiment_data)
        trending_topics = self.extract_trending_topics(sentiment_data)
        sentiment_momentum = self.calculate_sentiment_momentum(sentiment_data)
        
        return {
            'ticker': ticker,
            'platform_sentiment': sentiment_data,
            'community_sentiment': community_sentiment,
            'viral_content': viral_content,
            'trending_topics': trending_topics,
            'sentiment_momentum': sentiment_momentum,
            'sources': healthy_sources,
            'timestamp': datetime.now().isoformat(),
            'collection_time': (datetime.now() - start_time).total_seconds()
        }
    
    async def collect_from_platform(self, spider, platform: str, ticker: str) -> Optional[Dict[str, Any]]:
        """Collect sentiment from a specific platform"""
        try:
            data = await spider.collect_sentiment(ticker)
            return data
        except Exception as e:
            self.logger.error(f"Error collecting from {platform}: {e}")
            return None
    
    def detect_viral_content(self, sentiment_data: Dict[str, Any]) -> List[Dict[str, Any]]:
        """Detect viral content based on engagement metrics"""
        viral_content = []
        
        for platform, data in sentiment_data.items():
            posts = data.get('posts', [])
            for post in posts:
                # Simple viral detection based on engagement
                engagement = post.get('score', 0) + post.get('comments_count', 0)
                if engagement > 1000:  # Threshold for viral content
                    viral_content.append({
                        'platform': platform,
                        'content': post.get('content', ''),
                        'engagement': engagement,
                        'sentiment': post.get('sentiment', {}),
                        'url': post.get('url', '')
                    })
        
        return sorted(viral_content, key=lambda x: x['engagement'], reverse=True)[:10]
    
    def extract_trending_topics(self, sentiment_data: Dict[str, Any]) -> List[Dict[str, Any]]:
        """Extract trending topics from social media"""
        keywords = {}
        
        for platform, data in sentiment_data.items():
            posts = data.get('posts', [])
            for post in posts:
                text = post.get('content', '')
                words = text.lower().split()
                for word in words:
                    if len(word) > 3 and word.isalpha():
                        keywords[word] = keywords.get(word, 0) + 1
        
        # Get top keywords
        top_keywords = sorted(keywords.items(), key=lambda x: x[1], reverse=True)[:15]
        
        return [
            {'keyword': keyword, 'count': count}
            for keyword, count in top_keywords
        ]
    
    def calculate_sentiment_momentum(self, sentiment_data: Dict[str, Any]) -> float:
        """Calculate sentiment momentum across platforms"""
        if not sentiment_data:
            return 0.0
        
        total_sentiment = 0.0
        total_posts = 0
        
        for platform, data in sentiment_data.items():
            posts = data.get('posts', [])
            for post in posts:
                sentiment = post.get('sentiment', {}).get('score', 0.0)
                total_sentiment += sentiment
                total_posts += 1
        
        if total_posts == 0:
            return 0.0
        
        return total_sentiment / total_posts

# Placeholder spider and analyzer classes
class RedditSpider:
    async def collect_sentiment(self, ticker: str):
        return {
            'posts': [
                {
                    'content': f'{ticker} to the moon! 🚀',
                    'score': 1500,
                    'comments_count': 250,
                    'sentiment': {'score': 0.8, 'confidence': 0.9},
                    'url': f'https://reddit.com/r/wallstreetbets/{ticker.lower()}'
                }
            ],
            'overall_sentiment': {'score': 0.7, 'confidence': 0.8}
        }

class TwitterSpider:
    async def collect_sentiment(self, ticker: str):
        return {
            'posts': [
                {
                    'content': f'Bullish on ${ticker} #stocks',
                    'score': 500,
                    'comments_count': 50,
                    'sentiment': {'score': 0.6, 'confidence': 0.7},
                    'url': f'https://twitter.com/search?q=%24{ticker}'
                }
            ],
            'overall_sentiment': {'score': 0.5, 'confidence': 0.6}
        }

class StockTwitsSpider:
    async def collect_sentiment(self, ticker: str):
        return {
            'posts': [
                {
                    'content': f'${ticker} looking strong today',
                    'score': 300,
                    'comments_count': 30,
                    'sentiment': {'score': 0.4, 'confidence': 0.6},
                    'url': f'https://stocktwits.com/symbol/{ticker.upper()}'
                }
            ],
            'overall_sentiment': {'score': 0.3, 'confidence': 0.5}
        }

class DiscordSpider:
    async def collect_sentiment(self, ticker: str):
        return {
            'posts': [
                {
                    'content': f'{ticker} discussion in trading channel',
                    'score': 100,
                    'comments_count': 20,
                    'sentiment': {'score': 0.2, 'confidence': 0.4},
                    'url': 'https://discord.gg/trading'
                }
            ],
            'overall_sentiment': {'score': 0.1, 'confidence': 0.3}
        }

class WallStreetBetsAnalyzer:
    async def analyze_community_sentiment(self, ticker: str):
        return {'score': 0.8, 'confidence': 0.9, 'community': 'wallstreetbets'}

class InvestingAnalyzer:
    async def analyze_community_sentiment(self, ticker: str):
        return {'score': 0.5, 'confidence': 0.7, 'community': 'investing'}

class StocksAnalyzer:
    async def analyze_community_sentiment(self, ticker: str):
        return {'score': 0.6, 'confidence': 0.8, 'community': 'stocks'}

class OptionsAnalyzer:
    async def analyze_community_sentiment(self, ticker: str):
        return {'score': 0.4, 'confidence': 0.6, 'community': 'options'} 