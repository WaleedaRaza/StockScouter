import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/analytics_service.dart';
import '../services/enhanced_sentiment_service.dart';
import '../models/analytics_models.dart';
import '../models/news_model.dart';
import '../constants/feature_flags.dart';

// Provider for analytics service
final analyticsServiceProvider = Provider<AnalyticsService>((ref) {
  return MockAnalyticsService();
});

// Provider for enhanced sentiment service
final enhancedSentimentServiceProvider = Provider<EnhancedSentimentService>((ref) {
  return EnhancedSentimentService();
});

// Provider for sentiment analysis
final sentimentAnalysisProvider = FutureProvider.family<AnalyticsData, NewsArticle>((ref, article) async {
  if (!FeatureFlagHelper.isFeatureEnabled('analytics_foundation')) {
    throw Exception('Analytics foundation not enabled');
  }
  
  final analyticsService = ref.read(analyticsServiceProvider);
  return await analyticsService.analyzeSentiment(article);
});

// Provider for enhanced sentiment analysis
final enhancedSentimentProvider = FutureProvider.family<EnhancedSentiment, NewsArticle>((ref, article) async {
  if (!FeatureFlagHelper.isFeatureEnabled('enhanced_sentiment')) {
    throw Exception('Enhanced sentiment not enabled');
  }
  
  final enhancedService = ref.read(enhancedSentimentServiceProvider);
  return await enhancedService.analyzeEnhancedSentiment(article);
});

// Provider for entity sentiment trends
final entitySentimentTrendsProvider = FutureProvider.family<List<SentimentTrend>, String>((ref, symbol) async {
  if (!FeatureFlagHelper.isFeatureEnabled('enhanced_sentiment')) {
    throw Exception('Enhanced sentiment not enabled');
  }
  
  final enhancedService = ref.read(enhancedSentimentServiceProvider);
  return await enhancedService.getEntitySentimentTrends(symbol);
});

// Provider for volume analysis
final volumeAnalysisProvider = FutureProvider.family<VolumeAnalysis, String>((ref, symbol) async {
  if (!FeatureFlagHelper.isFeatureEnabled('volume_analysis')) {
    throw Exception('Volume analysis not enabled');
  }
  
  final analyticsService = ref.read(analyticsServiceProvider);
  return await analyticsService.analyzeVolume(symbol);
});

// Provider for correlation analysis
final correlationAnalysisProvider = FutureProvider.family<CorrelationAnalysis, ({String symbol1, String symbol2})>((ref, params) async {
  if (!FeatureFlagHelper.isFeatureEnabled('correlation_engine')) {
    throw Exception('Correlation engine not enabled');
  }
  
  final analyticsService = ref.read(analyticsServiceProvider);
  return await analyticsService.analyzeCorrelation(params.symbol1, params.symbol2);
});

// Provider for earnings analysis
final earningsAnalysisProvider = FutureProvider.family<EarningsAnalysis, String>((ref, symbol) async {
  if (!FeatureFlagHelper.isFeatureEnabled('enhanced_earnings')) {
    throw Exception('Enhanced earnings not enabled');
  }
  
  final analyticsService = ref.read(analyticsServiceProvider);
  return await analyticsService.analyzeEarnings(symbol);
});

// Provider for social sentiment analysis
final socialSentimentProvider = FutureProvider.family<SocialSentiment, List<RedditFinancialPost>>((ref, posts) async {
  if (!FeatureFlagHelper.isFeatureEnabled('social_sentiment')) {
    throw Exception('Social sentiment not enabled');
  }
  
  final analyticsService = ref.read(analyticsServiceProvider);
  return await analyticsService.analyzeSocialSentiment(posts);
});

// Provider for market impact analysis
final marketImpactProvider = FutureProvider.family<MarketImpact, NewsArticle>((ref, article) async {
  if (!FeatureFlagHelper.isFeatureEnabled('market_impact')) {
    throw Exception('Market impact analysis not enabled');
  }
  
  final analyticsService = ref.read(analyticsServiceProvider);
  return await analyticsService.analyzeMarketImpact(article);
});

// Provider for analytics state management
final analyticsStateProvider = StateNotifierProvider<AnalyticsStateNotifier, AnalyticsState>((ref) {
  return AnalyticsStateNotifier();
});

// Analytics state
class AnalyticsState {
  final bool isLoading;
  final String? error;
  final List<AnalyticsData> recentAnalytics;
  final Map<String, AnalyticsData> cachedAnalytics;

  const AnalyticsState({
    this.isLoading = false,
    this.error,
    this.recentAnalytics = const [],
    this.cachedAnalytics = const {},
  });

  AnalyticsState copyWith({
    bool? isLoading,
    String? error,
    List<AnalyticsData>? recentAnalytics,
    Map<String, AnalyticsData>? cachedAnalytics,
  }) {
    return AnalyticsState(
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      recentAnalytics: recentAnalytics ?? this.recentAnalytics,
      cachedAnalytics: cachedAnalytics ?? this.cachedAnalytics,
    );
  }
}

// Analytics state notifier
class AnalyticsStateNotifier extends StateNotifier<AnalyticsState> {
  AnalyticsStateNotifier() : super(const AnalyticsState());

  void setLoading(bool loading) {
    state = state.copyWith(isLoading: loading);
  }

  void setError(String error) {
    state = state.copyWith(error: error, isLoading: false);
  }

  void clearError() {
    state = state.copyWith(error: null);
  }

  void addAnalytics(AnalyticsData analytics) {
    final updatedRecent = [analytics, ...state.recentAnalytics];
    if (updatedRecent.length > 50) {
      updatedRecent.removeLast();
    }
    
    final updatedCached = Map<String, AnalyticsData>.from(state.cachedAnalytics);
    updatedCached[analytics.id] = analytics;
    
    state = state.copyWith(
      recentAnalytics: updatedRecent,
      cachedAnalytics: updatedCached,
    );
  }

  void clearCache() {
    state = state.copyWith(cachedAnalytics: {});
  }
} 