import 'dart:convert';
import 'package:dio/dio.dart';
import '../models/news_model.dart';
import '../models/analytics_models.dart';
import '../constants/feature_flags.dart';

class EnhancedSentimentService {
  final Dio _dio;
  
  EnhancedSentimentService() : _dio = Dio();

  /// Enhanced sentiment analysis with entity recognition
  Future<EnhancedSentiment> analyzeEnhancedSentiment(NewsArticle article) async {
    if (!FeatureFlagHelper.isFeatureEnabled('enhanced_sentiment')) {
      // Fallback to basic sentiment
      return EnhancedSentiment(
        basicSentiment: article.sentiment,
        entitySentiment: _extractEntitySentiment(article),
        confidence: 0.8,
        reliability: 0.7,
        dominantEntity: article.mentionedStocks.isNotEmpty ? article.mentionedStocks.first : null,
        contextualSentiment: _analyzeContextualSentiment(article),
        temporalSentiment: _analyzeTemporalSentiment(article),
      );
    }

    try {
      // Simulate enhanced analysis with mock data
      await Future.delayed(Duration(milliseconds: 300));
      
      return EnhancedSentiment(
        basicSentiment: article.sentiment,
        entitySentiment: _extractEntitySentiment(article),
        confidence: _calculateConfidence(article),
        reliability: _calculateReliability(article),
        dominantEntity: _findDominantEntity(article),
        contextualSentiment: _analyzeContextualSentiment(article),
        temporalSentiment: _analyzeTemporalSentiment(article),
      );
    } catch (e) {
      // Fallback to basic analysis
      return EnhancedSentiment(
        basicSentiment: article.sentiment,
        entitySentiment: _extractEntitySentiment(article),
        confidence: 0.6,
        reliability: 0.5,
        dominantEntity: article.mentionedStocks.isNotEmpty ? article.mentionedStocks.first : null,
        contextualSentiment: _analyzeContextualSentiment(article),
        temporalSentiment: _analyzeTemporalSentiment(article),
      );
    }
  }

  /// Extract sentiment for each mentioned entity
  Map<String, double> _extractEntitySentiment(NewsArticle article) {
    final entitySentiment = <String, double>{};
    
    for (final stock in article.mentionedStocks) {
      // Simulate entity-specific sentiment analysis
      final baseSentiment = article.sentiment;
      final entityModifier = _getEntityModifier(stock, article);
      entitySentiment[stock] = (baseSentiment + entityModifier).clamp(-1.0, 1.0);
    }
    
    return entitySentiment;
  }

  /// Get sentiment modifier based on entity and context
  double _getEntityModifier(String stock, NewsArticle article) {
    // Simulate context-aware sentiment modification
    final title = article.title.toLowerCase();
    final summary = article.summary.toLowerCase();
    
    // Sector-specific modifiers
    if (stock == 'AAPL' || stock == 'MSFT' || stock == 'GOOGL') {
      if (title.contains('ai') || title.contains('artificial intelligence')) return 0.1;
      if (title.contains('regulation') || title.contains('antitrust')) return -0.2;
    }
    
    if (stock == 'TSLA') {
      if (title.contains('ev') || title.contains('electric vehicle')) return 0.15;
      if (title.contains('delivery') || title.contains('production')) return 0.1;
    }
    
    if (stock == 'NVDA') {
      if (title.contains('chip') || title.contains('gpu')) return 0.2;
      if (title.contains('supply') || title.contains('shortage')) return -0.1;
    }
    
    // Earnings-related modifiers
    if (title.contains('earnings') || title.contains('quarterly')) {
      return 0.05; // Slightly positive for earnings news
    }
    
    // Merger/Acquisition modifiers
    if (title.contains('merger') || title.contains('acquisition') || title.contains('buyout')) {
      return 0.1;
    }
    
    return 0.0; // Neutral modifier
  }

  /// Calculate confidence score based on article quality
  double _calculateConfidence(NewsArticle article) {
    double confidence = 0.8; // Base confidence
    
    // Source reliability
    final reliableSources = ['reuters', 'bloomberg', 'cnbc', 'wsj', 'ft'];
    if (reliableSources.any((source) => article.source.toLowerCase().contains(source))) {
      confidence += 0.1;
    }
    
    // Content length (longer articles tend to be more detailed)
    if (article.summary.length > 200) confidence += 0.05;
    if (article.summary.length > 500) confidence += 0.05;
    
    // Entity mention count (more entities = more complex analysis)
    if (article.mentionedStocks.length > 1) confidence -= 0.05;
    if (article.mentionedStocks.length > 3) confidence -= 0.05;
    
    // Sentiment extremity (extreme sentiments are harder to predict)
    final sentimentAbs = article.sentiment.abs();
    if (sentimentAbs > 0.8) confidence -= 0.1;
    if (sentimentAbs < 0.1) confidence += 0.05; // Neutral is easier to predict
    
    return confidence.clamp(0.0, 1.0);
  }

  /// Calculate reliability score
  double _calculateReliability(NewsArticle article) {
    double reliability = 0.7; // Base reliability
    
    // Source reputation
    final highReputationSources = ['reuters', 'bloomberg', 'wsj', 'ft'];
    final mediumReputationSources = ['cnbc', 'yahoo', 'marketwatch'];
    
    if (highReputationSources.any((source) => article.source.toLowerCase().contains(source))) {
      reliability += 0.2;
    } else if (mediumReputationSources.any((source) => article.source.toLowerCase().contains(source))) {
      reliability += 0.1;
    }
    
    // Content quality indicators
    if (article.summary.contains('according to') || article.summary.contains('said')) {
      reliability += 0.05; // Has quotes/sources
    }
    
    if (article.summary.contains('data') || article.summary.contains('report')) {
      reliability += 0.05; // References data
    }
    
    return reliability.clamp(0.0, 1.0);
  }

  /// Find the dominant entity in the article
  String? _findDominantEntity(NewsArticle article) {
    if (article.mentionedStocks.isEmpty) return null;
    
    final title = article.title.toLowerCase();
    final summary = article.summary.toLowerCase();
    
    // Find entity with most mentions or prominence in title
    for (final stock in article.mentionedStocks) {
      if (title.contains(stock.toLowerCase())) {
        return stock; // Entity mentioned in title is likely dominant
      }
    }
    
    return article.mentionedStocks.first; // Default to first mentioned
  }

  /// Analyze contextual sentiment (earnings vs general news)
  Map<String, double> _analyzeContextualSentiment(NewsArticle article) {
    final title = article.title.toLowerCase();
    final summary = article.summary.toLowerCase();
    
    final contextualSentiment = <String, double>{};
    
    // Earnings context
    if (title.contains('earnings') || title.contains('quarterly') || title.contains('results')) {
      contextualSentiment['earnings'] = article.sentiment + 0.1; // Earnings news tends to be slightly more positive
    }
    
    // Regulatory context
    if (title.contains('regulation') || title.contains('antitrust') || title.contains('investigation')) {
      contextualSentiment['regulatory'] = article.sentiment - 0.2; // Regulatory news tends to be negative
    }
    
    // Innovation context
    if (title.contains('innovation') || title.contains('breakthrough') || title.contains('new product')) {
      contextualSentiment['innovation'] = article.sentiment + 0.15; // Innovation news tends to be positive
    }
    
    // Market context
    if (title.contains('market') || title.contains('trading') || title.contains('stock')) {
      contextualSentiment['market'] = article.sentiment;
    }
    
    return contextualSentiment;
  }

  /// Analyze temporal sentiment (time-based patterns)
  Map<String, double> _analyzeTemporalSentiment(NewsArticle article) {
    final temporalSentiment = <String, double>{};
    final now = DateTime.now();
    final publishTime = article.publishedAt;
    final hourDiff = now.difference(publishTime).inHours;
    
    // Time-based sentiment patterns
    if (hourDiff < 1) {
      temporalSentiment['immediate'] = article.sentiment; // Immediate impact
    } else if (hourDiff < 24) {
      temporalSentiment['daily'] = article.sentiment * 0.8; // Daily impact (slightly reduced)
    } else if (hourDiff < 168) { // 1 week
      temporalSentiment['weekly'] = article.sentiment * 0.6; // Weekly impact (further reduced)
    }
    
    // Market hours vs after hours
    final publishHour = publishTime.hour;
    if (publishHour >= 9 && publishHour <= 16) {
      temporalSentiment['market_hours'] = article.sentiment; // During market hours
    } else {
      temporalSentiment['after_hours'] = article.sentiment * 0.7; // After hours (reduced impact)
    }
    
    return temporalSentiment;
  }

  /// Batch analyze multiple articles
  Future<List<EnhancedSentiment>> analyzeBatchSentiment(List<NewsArticle> articles) async {
    final results = <EnhancedSentiment>[];
    
    for (final article in articles) {
      final sentiment = await analyzeEnhancedSentiment(article);
      results.add(sentiment);
    }
    
    return results;
  }

  /// Get sentiment trends for a specific entity
  Future<List<SentimentTrend>> getEntitySentimentTrends(String symbol, {int days = 7}) async {
    // Mock sentiment trends
    await Future.delayed(Duration(milliseconds: 200));
    
    final trends = <SentimentTrend>[];
    final now = DateTime.now();
    
    for (int i = days; i >= 0; i--) {
      final date = now.subtract(Duration(days: i));
      final sentiment = 0.1 + (0.8 * (i / days)) * (i % 2 == 0 ? 1 : -1); // Oscillating pattern
      
      trends.add(SentimentTrend(
        date: date,
        sentiment: sentiment,
        volume: 100 + (i * 10),
        source: 'news_analysis',
      ));
    }
    
    return trends;
  }
} 