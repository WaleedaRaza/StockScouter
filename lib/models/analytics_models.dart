import 'package:freezed_annotation/freezed_annotation.dart';
import 'financial_news_models.dart';

part 'analytics_models.freezed.dart';
part 'analytics_models.g.dart';

@freezed
class AnalyticsData with _$AnalyticsData {
  const factory AnalyticsData({
    required String id,
    required DateTime timestamp,
    required AnalyticsType type,
    required Map<String, dynamic> data,
    required double confidence,
    String? symbol,
    String? source,
  }) = _AnalyticsData;

  factory AnalyticsData.fromJson(Map<String, dynamic> json) => _$AnalyticsDataFromJson(json);
}

enum AnalyticsType { 
  sentiment, 
  volume, 
  correlation, 
  earnings, 
  social,
  marketImpact,
  pattern,
  prediction,
}

@freezed
class EnhancedSentiment with _$EnhancedSentiment {
  const factory EnhancedSentiment({
    required double basicSentiment,
    required Map<String, double> entitySentiment,
    required double confidence,
    required double reliability,
    String? dominantEntity,
    Map<String, double>? contextualSentiment,
    Map<String, double>? temporalSentiment,
  }) = _EnhancedSentiment;

  factory EnhancedSentiment.fromJson(Map<String, dynamic> json) => _$EnhancedSentimentFromJson(json);
}

@freezed
class VolumeAnalysis with _$VolumeAnalysis {
  const factory VolumeAnalysis({
    required String symbol,
    required double currentVolume,
    required double averageVolume,
    required double volumeRatio,
    required bool unusualVolume,
    List<VolumePattern>? patterns,
    Map<String, double>? institutionalActivity,
    Map<String, double>? retailActivity,
    double? newsCorrelation,
  }) = _VolumeAnalysis;

  factory VolumeAnalysis.fromJson(Map<String, dynamic> json) => _$VolumeAnalysisFromJson(json);
}

@freezed
class VolumePattern with _$VolumePattern {
  const factory VolumePattern({
    required String type,
    required double confidence,
    required DateTime startTime,
    required DateTime endTime,
    required String description,
    Map<String, dynamic>? metadata,
  }) = _VolumePattern;

  factory VolumePattern.fromJson(Map<String, dynamic> json) => _$VolumePatternFromJson(json);
}

@freezed
class CorrelationAnalysis with _$CorrelationAnalysis {
  const factory CorrelationAnalysis({
    required String symbol1,
    required String symbol2,
    required double correlation,
    required double confidence,
    Map<String, double>? crossAssetCorrelations,
    List<String>? temporalCorrelations,
    Map<String, double>? sectorCorrelations,
  }) = _CorrelationAnalysis;

  factory CorrelationAnalysis.fromJson(Map<String, dynamic> json) => _$CorrelationAnalysisFromJson(json);
}

@freezed
class EarningsAnalysis with _$EarningsAnalysis {
  const factory EarningsAnalysis({
    required String symbol,
    required List<EarningsCall> upcomingCalls,
    required List<EarningsCall> recentCalls,
    Map<String, dynamic>? historicalAnalysis,
    Map<String, dynamic>? analystEstimates,
    Map<String, dynamic>? surpriseAnalysis,
    Map<String, dynamic>? guidanceAnalysis,
  }) = _EarningsAnalysis;

  factory EarningsAnalysis.fromJson(Map<String, dynamic> json) => _$EarningsAnalysisFromJson(json);
}

@freezed
class RedditFinancialPost with _$RedditFinancialPost {
  const factory RedditFinancialPost({
    required String id,
    required String title,
    required String content,
    required String author,
    required int score,
    required int comments,
    required DateTime timestamp,
    required String subreddit,
    required List<String> mentionedStocks,
    required double sentiment,
    required double credibility,
    required double impact,
  }) = _RedditFinancialPost;

  factory RedditFinancialPost.fromJson(Map<String, dynamic> json) => _$RedditFinancialPostFromJson(json);
}

@freezed
class SocialSentiment with _$SocialSentiment {
  const factory SocialSentiment({
    required double overallSentiment,
    required Map<String, double> stockSentiment,
    required List<SentimentTrend> sentimentTrends,
    required Map<String, double> sentimentDistribution,
    required double credibilityWeightedSentiment,
    required double sentimentMomentum,
  }) = _SocialSentiment;

  factory SocialSentiment.fromJson(Map<String, dynamic> json) => _$SocialSentimentFromJson(json);
}

@freezed
class SentimentTrend with _$SentimentTrend {
  const factory SentimentTrend({
    required DateTime date,
    required double sentiment,
    required double volume,
    String? source,
  }) = _SentimentTrend;

  factory SentimentTrend.fromJson(Map<String, dynamic> json) => _$SentimentTrendFromJson(json);
}

@freezed
class MarketImpact with _$MarketImpact {
  const factory MarketImpact({
    required DirectImpact directImpact,
    required Map<String, double> sectorImpact,
    required Map<String, double> marketImpact,
    required Map<String, double> temporalImpact,
    required List<String> cascadingEffects,
    required Map<String, double> recoveryPatterns,
  }) = _MarketImpact;

  factory MarketImpact.fromJson(Map<String, dynamic> json) => _$MarketImpactFromJson(json);
}

@freezed
class DirectImpact with _$DirectImpact {
  const factory DirectImpact({
    required Map<String, StockImpact> stockImpacts,
    required double averageImpact,
    required Map<String, double> impactDistribution,
  }) = _DirectImpact;

  factory DirectImpact.fromJson(Map<String, dynamic> json) => _$DirectImpactFromJson(json);
}

@freezed
class StockImpact with _$StockImpact {
  const factory StockImpact({
    required String symbol,
    required double priceImpact,
    required double volumeImpact,
    required double volatilityImpact,
    required DateTime impactTime,
    required Duration recoveryTime,
  }) = _StockImpact;

  factory StockImpact.fromJson(Map<String, dynamic> json) => _$StockImpactFromJson(json);
} 