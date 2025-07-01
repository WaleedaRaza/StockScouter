import '../models/analytics_models.dart';
import '../models/news_model.dart';
import '../models/financial_news_models.dart';
import '../constants/feature_flags.dart';

// Abstract interface for analytics services
abstract class AnalyticsService {
  Future<AnalyticsData> analyzeSentiment(NewsArticle article);
  Future<VolumeAnalysis> analyzeVolume(String symbol);
  Future<CorrelationAnalysis> analyzeCorrelation(String symbol1, String symbol2);
  Future<EarningsAnalysis> analyzeEarnings(String symbol);
  Future<SocialSentiment> analyzeSocialSentiment(List<RedditFinancialPost> posts);
  Future<MarketImpact> analyzeMarketImpact(NewsArticle article);
}

// Mock implementation for safe development
class MockAnalyticsService implements AnalyticsService {
  @override
  Future<AnalyticsData> analyzeSentiment(NewsArticle article) async {
    await Future.delayed(Duration(milliseconds: 100));
    
    return AnalyticsData(
      id: 'sentiment_${article.id}',
      timestamp: DateTime.now(),
      type: AnalyticsType.sentiment,
      data: {
        'score': article.sentiment,
        'confidence': 0.8,
        'entities': article.mentionedStocks,
        'source': article.source,
      },
      confidence: 0.8,
      symbol: article.mentionedStocks.isNotEmpty ? article.mentionedStocks.first : null,
      source: article.source,
    );
  }

  @override
  Future<VolumeAnalysis> analyzeVolume(String symbol) async {
    await Future.delayed(Duration(milliseconds: 200));
    
    return VolumeAnalysis(
      symbol: symbol,
      currentVolume: 1000000,
      averageVolume: 800000,
      volumeRatio: 1.25,
      unusualVolume: true,
      patterns: [
        VolumePattern(
          type: 'accumulation',
          confidence: 0.75,
          startTime: DateTime.now().subtract(Duration(hours: 2)),
          endTime: DateTime.now(),
          description: 'Unusual volume spike detected',
          metadata: {'volume_increase': '25%'},
        ),
      ],
      institutionalActivity: {'large_trades': 0.6, 'block_trades': 0.4},
      retailActivity: {'small_trades': 0.4, 'options_activity': 0.3},
      newsCorrelation: 0.7,
    );
  }

  @override
  Future<CorrelationAnalysis> analyzeCorrelation(String symbol1, String symbol2) async {
    await Future.delayed(Duration(milliseconds: 300));
    
    return CorrelationAnalysis(
      symbol1: symbol1,
      symbol2: symbol2,
      correlation: 0.75,
      confidence: 0.8,
      crossAssetCorrelations: {
        'price': 0.75,
        'volume': 0.6,
        'volatility': 0.8,
      },
      temporalCorrelations: <String>[],
      sectorCorrelations: {'technology': 0.9, 'market': 0.7},
    );
  }

  @override
  Future<EarningsAnalysis> analyzeEarnings(String symbol) async {
    await Future.delayed(Duration(milliseconds: 400));
    
    // Mock earnings data
    final upcomingCalls = [
      EarningsCall(
        id: 'earnings_1',
        symbol: symbol,
        companyName: '$symbol Company',
        callDate: DateTime.now().add(Duration(days: 5)),
        earningsDate: DateTime.now().add(Duration(days: 4)),
        quarter: 'Q1',
        year: 2024,
        epsForecast: 2.10,
        revenueForecast: 1000000000,
        epsActual: null,
        revenueActual: null,
        callUrl: 'https://example.com',
        transcriptUrl: 'https://example.com',
        keyTopics: ['Growth', 'Expansion', 'Innovation'],
        sentimentScores: {'overall': 0.7, 'revenue': 0.8, 'guidance': 0.6},
        participants: ['CEO', 'CFO'],
        isCompleted: false,
        status: 'Scheduled',
      ),
    ];
    
    return EarningsAnalysis(
      symbol: symbol,
      upcomingCalls: upcomingCalls,
      recentCalls: [],
      historicalAnalysis: {
        'beat_rate': 0.75,
        'average_surprise': 0.05,
        'guidance_accuracy': 0.8,
      },
      analystEstimates: {
        'eps_consensus': 2.10,
        'revenue_consensus': 1000000000,
        'price_target': 150.0,
      },
      surpriseAnalysis: {
        'last_4_quarters': [0.05, -0.02, 0.08, 0.03],
        'average_surprise': 0.035,
      },
      guidanceAnalysis: {
        'guidance_accuracy': 0.8,
        'guidance_trend': 'positive',
      },
    );
  }

  @override
  Future<SocialSentiment> analyzeSocialSentiment(List<RedditFinancialPost> posts) async {
    await Future.delayed(Duration(milliseconds: 500));
    
    final stockSentiment = <String, double>{};
    for (final post in posts) {
      for (final stock in post.mentionedStocks) {
        stockSentiment[stock] = (stockSentiment[stock] ?? 0) + post.sentiment;
      }
    }
    
    return SocialSentiment(
      overallSentiment: posts.map((p) => p.sentiment).reduce((a, b) => a + b) / posts.length,
      stockSentiment: stockSentiment,
      sentimentTrends: [
        SentimentTrend(
          date: DateTime.now().subtract(Duration(hours: 1)),
          sentiment: 0.6,
          volume: 100,
          source: 'reddit',
        ),
      ],
      sentimentDistribution: {
        'positive': 0.6,
        'neutral': 0.3,
        'negative': 0.1,
      },
      credibilityWeightedSentiment: 0.65,
      sentimentMomentum: 0.1,
    );
  }

  @override
  Future<MarketImpact> analyzeMarketImpact(NewsArticle article) async {
    await Future.delayed(Duration(milliseconds: 600));
    
    final stockImpacts = <String, StockImpact>{};
    for (final stock in article.mentionedStocks) {
      stockImpacts[stock] = StockImpact(
        symbol: stock,
        priceImpact: article.sentiment * 0.05, // 5% impact per sentiment point
        volumeImpact: 1.5,
        volatilityImpact: 1.2,
        impactTime: DateTime.now(),
        recoveryTime: Duration(hours: 2),
      );
    }
    
    return MarketImpact(
      directImpact: DirectImpact(
        stockImpacts: stockImpacts,
        averageImpact: stockImpacts.values.map((i) => i.priceImpact).reduce((a, b) => a + b) / stockImpacts.length,
        impactDistribution: {
          'high': 0.3,
          'medium': 0.5,
          'low': 0.2,
        },
      ),
      sectorImpact: {
        'technology': 0.05,
        'finance': 0.03,
        'healthcare': 0.02,
      },
      marketImpact: {
        'spy': 0.02,
        'qqq': 0.03,
        'dia': 0.01,
      },
      temporalImpact: {
        'immediate': 0.05,
        '1h': 0.03,
        '1d': 0.01,
      },
      cascadingEffects: ['sector_rotation', 'risk_aversion'],
      recoveryPatterns: {
        'time_to_recovery': 2.0, // hours
      },
    );
  }
} 