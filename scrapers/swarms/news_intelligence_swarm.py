"""
News Intelligence Swarm - Collects news and sentiment data from multiple sources
"""

import asyncio
from typing import Dict, List, Any, Optional
from datetime import datetime
from .base_swarm import BaseSwarm

class NewsIntelligenceSwarm(BaseSwarm):
    """Dynamic swarm for news and sentiment analysis"""
    
    def __init__(self):
        super().__init__("news_intelligence")
        self.news_sources = {
            'reuters': ReutersSpider(),
            'bloomberg': BloombergSpider(),
            'cnbc': CNBCSpider(),
            'seeking_alpha': SeekingAlphaSpider(),
            'financial_times': FinancialTimesSpider(),
        }
        self.sentiment_analyzers = [
            'vader_sentiment',
            'textblob_sentiment',
            'custom_financial_sentiment',
            'bert_financial_sentiment'
        ]
    
    async def collect_data(self, ticker: str, **kwargs) -> Dict[str, Any]:
        """Collect comprehensive news intelligence"""
        timeframe = kwargs.get('timeframe', '24h')
        start_time = datetime.now()
        news_data = []
        sentiment_data = []
        
        # Get healthy sources
        healthy_sources = self.get_best_spiders(min_health=0.5)
        if not healthy_sources:
            healthy_sources = list(self.news_sources.keys())
        
        # Collect news from each source
        tasks = []
        for source_name in healthy_sources:
            source = self.news_sources[source_name]
            task = self.collect_from_source(source, source_name, ticker, timeframe)
            tasks.append(task)
        
        # Execute all tasks concurrently
        source_results = await asyncio.gather(*tasks, return_exceptions=True)
        
        # Process results
        for i, result in enumerate(source_results):
            source_name = healthy_sources[i]
            if isinstance(result, Exception):
                self.logger.error(f"Source {source_name} failed: {result}")
                self.update_health_metrics(source_name, False, 0.0)
            else:
                if result:
                    news_data.extend(result.get('articles', []))
                    self.update_health_metrics(source_name, True, 
                                             (datetime.now() - start_time).total_seconds())
        
        # Analyze sentiment for all articles
        for article in news_data:
            sentiment = await self.analyze_article_sentiment(article)
            if sentiment:
                article['sentiment'] = sentiment
        
        # Calculate overall metrics
        overall_sentiment = self.calculate_overall_sentiment(news_data)
        trending_topics = self.extract_trending_topics(news_data)
        impact_score = self.calculate_impact_score(news_data)
        
        return {
            'ticker': ticker,
            'articles': news_data,
            'overall_sentiment': overall_sentiment,
            'trending_topics': trending_topics,
            'impact_score': impact_score,
            'sources': healthy_sources,
            'timestamp': datetime.now().isoformat(),
            'collection_time': (datetime.now() - start_time).total_seconds()
        }
    
    async def collect_from_source(self, source, source_name: str, ticker: str, timeframe: str) -> Optional[Dict[str, Any]]:
        """Collect news from a specific source"""
        try:
            articles = await source.collect_news(ticker, timeframe)
            return {
                'source': source_name,
                'articles': articles
            }
        except Exception as e:
            self.logger.error(f"Error collecting from {source_name}: {e}")
            return None
    
    async def analyze_article_sentiment(self, article: Dict[str, Any]) -> Optional[Dict[str, Any]]:
        """Analyze sentiment for a single article"""
        try:
            text = f"{article.get('title', '')} {article.get('content', '')}"
            if not text.strip():
                return None
            
            # Simple sentiment analysis (placeholder)
            positive_words = ['positive', 'up', 'gain', 'growth', 'profit', 'success']
            negative_words = ['negative', 'down', 'loss', 'decline', 'risk', 'failure']
            
            text_lower = text.lower()
            positive_count = sum(1 for word in positive_words if word in text_lower)
            negative_count = sum(1 for word in negative_words if word in text_lower)
            
            if positive_count > negative_count:
                sentiment_score = min(1.0, positive_count / 10.0)
            elif negative_count > positive_count:
                sentiment_score = max(-1.0, -negative_count / 10.0)
            else:
                sentiment_score = 0.0
            
            return {
                'score': sentiment_score,
                'positive_count': positive_count,
                'negative_count': negative_count,
                'confidence': 0.7  # Placeholder confidence
            }
        except Exception as e:
            self.logger.error(f"Error analyzing sentiment: {e}")
            return None
    
    def calculate_overall_sentiment(self, articles: List[Dict[str, Any]]) -> Dict[str, Any]:
        """Calculate overall sentiment from all articles"""
        if not articles:
            return {'score': 0.0, 'confidence': 0.0}
        
        sentiments = [article.get('sentiment', {}).get('score', 0.0) for article in articles]
        valid_sentiments = [s for s in sentiments if s != 0.0]
        
        if not valid_sentiments:
            return {'score': 0.0, 'confidence': 0.0}
        
        avg_sentiment = sum(valid_sentiments) / len(valid_sentiments)
        confidence = min(1.0, len(valid_sentiments) / 10.0)
        
        return {
            'score': avg_sentiment,
            'confidence': confidence,
            'article_count': len(articles),
            'sentiment_distribution': {
                'positive': len([s for s in valid_sentiments if s > 0.1]),
                'neutral': len([s for s in valid_sentiments if -0.1 <= s <= 0.1]),
                'negative': len([s for s in valid_sentiments if s < -0.1])
            }
        }
    
    def extract_trending_topics(self, articles: List[Dict[str, Any]]) -> List[Dict[str, Any]]:
        """Extract trending topics from articles"""
        # Simple keyword extraction (placeholder)
        keywords = {}
        for article in articles:
            text = f"{article.get('title', '')} {article.get('content', '')}"
            words = text.lower().split()
            for word in words:
                if len(word) > 4 and word.isalpha():
                    keywords[word] = keywords.get(word, 0) + 1
        
        # Get top keywords
        top_keywords = sorted(keywords.items(), key=lambda x: x[1], reverse=True)[:10]
        
        return [
            {'keyword': keyword, 'count': count}
            for keyword, count in top_keywords
        ]
    
    def calculate_impact_score(self, articles: List[Dict[str, Any]]) -> float:
        """Calculate impact score based on article volume and sentiment"""
        if not articles:
            return 0.0
        
        # Base score on number of articles
        volume_score = min(1.0, len(articles) / 20.0)
        
        # Sentiment impact
        avg_sentiment = self.calculate_overall_sentiment(articles)['score']
        sentiment_impact = abs(avg_sentiment)
        
        return (volume_score + sentiment_impact) / 2.0

# Placeholder spider classes
class ReutersSpider:
    async def collect_news(self, ticker: str, timeframe: str):
        # TODO: Implement
        return [
            {
                'title': f'{ticker} Shows Strong Growth',
                'content': f'{ticker} reported strong quarterly results...',
                'source': 'Reuters',
                'published_date': datetime.now().isoformat(),
                'url': f'https://reuters.com/article/{ticker.lower()}'
            }
        ]

class BloombergSpider:
    async def collect_news(self, ticker: str, timeframe: str):
        # TODO: Implement
        return [
            {
                'title': f'{ticker} Market Analysis',
                'content': f'Analysts are bullish on {ticker}...',
                'source': 'Bloomberg',
                'published_date': datetime.now().isoformat(),
                'url': f'https://bloomberg.com/news/{ticker.lower()}'
            }
        ]

class CNBCSpider:
    async def collect_news(self, ticker: str, timeframe: str):
        # TODO: Implement
        return [
            {
                'title': f'{ticker} Trading Update',
                'content': f'{ticker} is trading higher today...',
                'source': 'CNBC',
                'published_date': datetime.now().isoformat(),
                'url': f'https://cnbc.com/quotes/{ticker.lower()}'
            }
        ]

class SeekingAlphaSpider:
    async def collect_news(self, ticker: str, timeframe: str):
        # TODO: Implement
        return [
            {
                'title': f'{ticker} Investment Analysis',
                'content': f'Investment thesis for {ticker}...',
                'source': 'Seeking Alpha',
                'published_date': datetime.now().isoformat(),
                'url': f'https://seekingalpha.com/symbol/{ticker.upper()}'
            }
        ]

class FinancialTimesSpider:
    async def collect_news(self, ticker: str, timeframe: str):
        # TODO: Implement
        return [
            {
                'title': f'{ticker} Global Market Impact',
                'content': f'{ticker} affects global markets...',
                'source': 'Financial Times',
                'published_date': datetime.now().isoformat(),
                'url': f'https://ft.com/companies/{ticker.lower()}'
            }
        ] 