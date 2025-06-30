import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/news_article.dart';
import '../models/sentiment_analysis.dart';

class NewsSentimentService {
  static final NewsSentimentService _instance = NewsSentimentService._internal();
  factory NewsSentimentService() => _instance;
  NewsSentimentService._internal();

  final http.Client _client = http.Client();

  /// Fetch financial news from multiple sources
  Future<List<NewsArticle>> fetchFinancialNews({String? ticker}) async {
    final articles = <NewsArticle>[];
    
    try {
      // Fetch from multiple sources
      final yahooNews = await _fetchYahooNews(ticker);
      final redditNews = await _fetchRedditNews(ticker);
      final rssNews = await _fetchRSSNews(ticker);
      
      articles.addAll(yahooNews);
      articles.addAll(redditNews);
      articles.addAll(rssNews);
      
      // Sort by relevance and timestamp
      articles.sort((a, b) => b.publishedAt.compareTo(a.publishedAt));
      
      return articles.take(50).toList(); // Limit to 50 most recent
    } catch (e) {
      print('Error fetching news: $e');
      return [];
    }
  }

  /// Analyze sentiment for a collection of articles
  Future<SentimentAnalysis> analyzeSentiment(List<NewsArticle> articles) async {
    if (articles.isEmpty) return SentimentAnalysis.neutral();
    
    double totalSentiment = 0.0;
    int bullishCount = 0;
    int bearishCount = 0;
    int neutralCount = 0;
    
    for (final article in articles) {
      final sentiment = await _analyzeArticleSentiment(article);
      totalSentiment += sentiment.score;
      
      if (sentiment.score > 0.1) bullishCount++;
      else if (sentiment.score < -0.1) bearishCount++;
      else neutralCount++;
    }
    
    final averageSentiment = totalSentiment / articles.length;
    
    return SentimentAnalysis(
      overallSentiment: averageSentiment,
      bullishArticles: bullishCount,
      bearishArticles: bearishCount,
      neutralArticles: neutralCount,
      totalArticles: articles.length,
      confidence: _calculateConfidence(articles.length),
      sources: _extractSources(articles),
    );
  }

  /// RAG-based question answering over news
  Future<RAGResponse> answerQuestion(String question, List<NewsArticle> articles) async {
    try {
      // Simple keyword-based RAG implementation
      final relevantArticles = _findRelevantArticles(question, articles);
      
      if (relevantArticles.isEmpty) {
        return RAGResponse(
          answer: "I don't have enough recent information to answer that question.",
          sources: [],
          confidence: 0.0,
        );
      }
      
      // Generate answer based on relevant articles
      final answer = await _generateAnswer(question, relevantArticles);
      
      return RAGResponse(
        answer: answer,
        sources: relevantArticles.take(3).toList(),
        confidence: _calculateRAGConfidence(relevantArticles.length),
      );
    } catch (e) {
      print('Error in RAG: $e');
      return RAGResponse(
        answer: "Sorry, I encountered an error while processing your question.",
        sources: [],
        confidence: 0.0,
      );
    }
  }

  /// Detect market-moving news
  List<MarketMovingNews> detectMarketMovingNews(List<NewsArticle> articles) {
    final marketMoving = <MarketMovingNews>[];
    
    for (final article in articles) {
      final impact = _assessMarketImpact(article);
      if (impact.impactLevel != ImpactLevel.low) {
        marketMoving.add(MarketMovingNews(
          article: article,
          impact: impact,
          affectedStocks: _extractMentionedStocks(article),
        ));
      }
    }
    
    return marketMoving;
  }

  /// Generate personalized news digest
  Future<NewsDigest> generatePersonalizedDigest(
    List<NewsArticle> articles,
    List<String> userInterests,
    List<String> userHoldings,
  ) async {
    final relevantArticles = <NewsArticle>[];
    
    // Filter articles based on user interests and holdings
    for (final article in articles) {
      if (_isRelevantToUser(article, userInterests, userHoldings)) {
        relevantArticles.add(article);
      }
    }
    
    // Sort by relevance score
    relevantArticles.sort((a, b) {
      final scoreA = _calculateRelevanceScore(a, userInterests, userHoldings);
      final scoreB = _calculateRelevanceScore(b, userInterests, userHoldings);
      return scoreB.compareTo(scoreA);
    });
    
    final topArticles = relevantArticles.take(10).toList();
    final sentiment = await analyzeSentiment(topArticles);
    
    return NewsDigest(
      articles: topArticles,
      sentiment: sentiment,
      summary: await _generateDigestSummary(topArticles),
      keyThemes: _extractKeyThemes(topArticles),
    );
  }

  // Private helper methods
  Future<List<NewsArticle>> _fetchYahooNews(String? ticker) async {
    // Simulated Yahoo Finance news fetch
    // In real implementation, you'd scrape Yahoo Finance
    return [
      NewsArticle(
        id: 'yahoo_1',
        title: 'Market Update: Tech Stocks Rally on Fed Comments',
        summary: 'Technology stocks led gains today as Federal Reserve officials signaled potential rate cuts.',
        content: 'Full article content would go here...',
        source: 'Yahoo Finance',
        url: 'https://finance.yahoo.com/news/example',
        publishedAt: DateTime.now().subtract(const Duration(hours: 2)),
        sentiment: 0.3,
        mentionedStocks: ticker != null ? [ticker] : ['AAPL', 'MSFT', 'GOOGL'],
        tags: ['Federal Reserve', 'Technology', 'Market Update'],
        isRead: false,
      ),
    ];
  }

  Future<List<NewsArticle>> _fetchRedditNews(String? ticker) async {
    // Simulated Reddit news fetch
    // In real implementation, you'd use Reddit API
    return [
      NewsArticle(
        id: 'reddit_1',
        title: 'r/stocks discussion: What\'s your take on $ticker?',
        summary: 'Reddit community discusses the latest developments in $ticker.',
        content: 'Reddit discussion content...',
        source: 'Reddit r/stocks',
        url: 'https://reddit.com/r/stocks/example',
        publishedAt: DateTime.now().subtract(const Duration(hours: 1)),
        sentiment: 0.1,
        mentionedStocks: ticker != null ? [ticker] : [],
        tags: ['Reddit', 'Community Discussion'],
        isRead: false,
      ),
    ];
  }

  Future<List<NewsArticle>> _fetchRSSNews(String? ticker) async {
    // Simulated RSS feed fetch
    return [
      NewsArticle(
        id: 'rss_1',
        title: 'Financial Times: Market Analysis',
        summary: 'Latest market analysis from Financial Times.',
        content: 'FT article content...',
        source: 'Financial Times',
        url: 'https://ft.com/example',
        publishedAt: DateTime.now().subtract(const Duration(hours: 3)),
        sentiment: 0.0,
        mentionedStocks: ticker != null ? [ticker] : [],
        tags: ['Market Analysis', 'Financial Times'],
        isRead: false,
      ),
    ];
  }

  Future<double> _analyzeArticleSentiment(NewsArticle article) async {
    // Simple sentiment analysis based on keywords
    // In real implementation, you'd use a proper NLP model
    final positiveKeywords = ['bullish', 'surge', 'rally', 'gain', 'positive', 'growth'];
    final negativeKeywords = ['bearish', 'drop', 'decline', 'loss', 'negative', 'fall'];
    
    final text = '${article.title} ${article.summary}'.toLowerCase();
    
    int positiveCount = 0;
    int negativeCount = 0;
    
    for (final keyword in positiveKeywords) {
      positiveCount += keyword.allMatches(text).length;
    }
    
    for (final keyword in negativeKeywords) {
      negativeCount += keyword.allMatches(text).length;
    }
    
    if (positiveCount == 0 && negativeCount == 0) return 0.0;
    
    return (positiveCount - negativeCount) / (positiveCount + negativeCount);
  }

  List<NewsArticle> _findRelevantArticles(String question, List<NewsArticle> articles) {
    final questionLower = question.toLowerCase();
    final relevant = <NewsArticle>[];
    
    for (final article in articles) {
      final text = '${article.title} ${article.summary}'.toLowerCase();
      
      // Simple keyword matching
      final keywords = questionLower.split(' ');
      int matchCount = 0;
      
      for (final keyword in keywords) {
        if (keyword.length > 3 && text.contains(keyword)) {
          matchCount++;
        }
      }
      
      if (matchCount > 0) {
        relevant.add(article);
      }
    }
    
    return relevant;
  }

  Future<String> _generateAnswer(String question, List<NewsArticle> articles) async {
    // Simple answer generation based on article content
    // In real implementation, you'd use an LLM
    if (articles.isEmpty) return "I don't have enough information to answer that question.";
    
    final latestArticle = articles.first;
    return "Based on recent news: ${latestArticle.summary}";
  }

  double _calculateConfidence(int articleCount) {
    if (articleCount >= 20) return 0.9;
    if (articleCount >= 10) return 0.7;
    if (articleCount >= 5) return 0.5;
    return 0.3;
  }

  List<String> _extractSources(List<NewsArticle> articles) {
    return articles.map((a) => a.source).toSet().toList();
  }

  double _calculateRAGConfidence(int relevantArticleCount) {
    if (relevantArticleCount >= 5) return 0.9;
    if (relevantArticleCount >= 3) return 0.7;
    if (relevantArticleCount >= 1) return 0.5;
    return 0.2;
  }

  MarketImpact _assessMarketImpact(NewsArticle article) {
    // Simple impact assessment based on source and content
    final highImpactSources = ['Reuters', 'Bloomberg', 'CNBC', 'Financial Times'];
    final mediumImpactSources = ['Yahoo Finance', 'MarketWatch'];
    
    if (highImpactSources.contains(article.source)) {
      return MarketImpact(ImpactLevel.high, 'High-impact source');
    } else if (mediumImpactSources.contains(article.source)) {
      return MarketImpact(ImpactLevel.medium, 'Medium-impact source');
    }
    
    return MarketImpact(ImpactLevel.low, 'Low-impact source');
  }

  List<String> _extractMentionedStocks(NewsArticle article) {
    return article.mentionedStocks;
  }

  bool _isRelevantToUser(NewsArticle article, List<String> interests, List<String> holdings) {
    final text = '${article.title} ${article.summary}'.toLowerCase();
    
    // Check if article mentions user holdings
    for (final holding in holdings) {
      if (text.contains(holding.toLowerCase())) return true;
    }
    
    // Check if article matches user interests
    for (final interest in interests) {
      if (text.contains(interest.toLowerCase())) return true;
    }
    
    return false;
  }

  double _calculateRelevanceScore(NewsArticle article, List<String> interests, List<String> holdings) {
    double score = 0.0;
    final text = '${article.title} ${article.summary}'.toLowerCase();
    
    // Holdings get higher weight
    for (final holding in holdings) {
      if (text.contains(holding.toLowerCase())) score += 2.0;
    }
    
    // Interests get medium weight
    for (final interest in interests) {
      if (text.contains(interest.toLowerCase())) score += 1.0;
    }
    
    return score;
  }

  Future<String> _generateDigestSummary(List<NewsArticle> articles) async {
    if (articles.isEmpty) return "No relevant news today.";
    
    final themes = _extractKeyThemes(articles);
    return "Today's key themes: ${themes.join(', ')}. ${articles.length} relevant articles found.";
  }

  List<String> _extractKeyThemes(List<NewsArticle> articles) {
    final themeCounts = <String, int>{};
    
    for (final article in articles) {
      for (final tag in article.tags) {
        themeCounts[tag] = (themeCounts[tag] ?? 0) + 1;
      }
    }
    
    final sortedThemes = themeCounts.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    
    return sortedThemes.take(5).map((e) => e.key).toList();
  }
}

// Data classes
class SentimentAnalysis {
  final double overallSentiment;
  final int bullishArticles;
  final int bearishArticles;
  final int neutralArticles;
  final int totalArticles;
  final double confidence;
  final List<String> sources;

  SentimentAnalysis({
    required this.overallSentiment,
    required this.bullishArticles,
    required this.bearishArticles,
    required this.neutralArticles,
    required this.totalArticles,
    required this.confidence,
    required this.sources,
  });

  factory SentimentAnalysis.neutral() => SentimentAnalysis(
    overallSentiment: 0.0,
    bullishArticles: 0,
    bearishArticles: 0,
    neutralArticles: 0,
    totalArticles: 0,
    confidence: 0.0,
    sources: [],
  );
}

class RAGResponse {
  final String answer;
  final List<NewsArticle> sources;
  final double confidence;

  RAGResponse({
    required this.answer,
    required this.sources,
    required this.confidence,
  });
}

enum ImpactLevel { low, medium, high }

class MarketImpact {
  final ImpactLevel impactLevel;
  final String reason;

  MarketImpact(this.impactLevel, this.reason);
}

class MarketMovingNews {
  final NewsArticle article;
  final MarketImpact impact;
  final List<String> affectedStocks;

  MarketMovingNews({
    required this.article,
    required this.impact,
    required this.affectedStocks,
  });
}

class NewsDigest {
  final List<NewsArticle> articles;
  final SentimentAnalysis sentiment;
  final String summary;
  final List<String> keyThemes;

  NewsDigest({
    required this.articles,
    required this.sentiment,
    required this.summary,
    required this.keyThemes,
  });
} 