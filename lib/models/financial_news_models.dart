import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'financial_news_models.freezed.dart';
part 'financial_news_models.g.dart';

@freezed
class EconomicEvent with _$EconomicEvent {
  const factory EconomicEvent({
    required String id,
    required String title,
    required String description,
    required DateTime date,
    required String country,
    required String currency,
    required String impact,
    required double? previousValue,
    required double? forecastValue,
    required double? actualValue,
    required String unit,
    required List<String> affectedAssets,
    required bool isHighImpact,
    required String source,
  }) = _EconomicEvent;

  factory EconomicEvent.fromJson(Map<String, dynamic> json) => _$EconomicEventFromJson(json);
}

@freezed
class EarningsCall with _$EarningsCall {
  const factory EarningsCall({
    required String id,
    required String symbol,
    required String companyName,
    required DateTime callDate,
    required DateTime earningsDate,
    required String quarter,
    required int year,
    required double? epsForecast,
    required double? revenueForecast,
    required double? epsActual,
    required double? revenueActual,
    required String callUrl,
    required String transcriptUrl,
    required List<String> keyTopics,
    required Map<String, double> sentimentScores,
    required List<String> participants,
    required bool isCompleted,
    required String status,
  }) = _EarningsCall;

  factory EarningsCall.fromJson(Map<String, dynamic> json) => _$EarningsCallFromJson(json);
}

@freezed
class KeyFigure with _$KeyFigure {
  const factory KeyFigure({
    required String id,
    required String name,
    required String title,
    required String company,
    required String? photoUrl,
    required List<String> recentActions,
    required List<String> holdings,
    required double netWorth,
    required String source,
    required DateTime lastUpdated,
    required List<String> relatedNews,
  }) = _KeyFigure;

  factory KeyFigure.fromJson(Map<String, dynamic> json) => _$KeyFigureFromJson(json);
}

@freezed
class MarketSentiment with _$MarketSentiment {
  const factory MarketSentiment({
    required String id,
    required DateTime date,
    required double overallSentiment,
    required Map<String, double> sectorSentiment,
    required Map<String, double> assetClassSentiment,
    required List<String> topPositiveTopics,
    required List<String> topNegativeTopics,
    required double fearGreedIndex,
    required double volatilityIndex,
    required List<String> trendingTopics,
  }) = _MarketSentiment;

  factory MarketSentiment.fromJson(Map<String, dynamic> json) => _$MarketSentimentFromJson(json);
}

@freezed
class TrendingTopic with _$TrendingTopic {
  const factory TrendingTopic({
    required String id,
    required String topic,
    required double volume,
    required double volumeChange,
    required double sentiment,
    required double sentimentChange,
    required List<String> relatedSymbols,
    required List<String> topArticles,
    required DateTime startDate,
    required DateTime endDate,
  }) = _TrendingTopic;

  factory TrendingTopic.fromJson(Map<String, dynamic> json) => _$TrendingTopicFromJson(json);
}

// Additional models for news service
@freezed
class SentimentRequest with _$SentimentRequest {
  const factory SentimentRequest({
    required String text,
    required String context,
  }) = _SentimentRequest;

  factory SentimentRequest.fromJson(Map<String, dynamic> json) => _$SentimentRequestFromJson(json);
}

@freezed
class SentimentAnalysis with _$SentimentAnalysis {
  const factory SentimentAnalysis({
    required Sentiment sentiment,
    required double score,
    required double confidence,
    required Map<String, double> aspects,
  }) = _SentimentAnalysis;

  factory SentimentAnalysis.fromJson(Map<String, dynamic> json) => _$SentimentAnalysisFromJson(json);
}

enum Sentiment { positive, negative, neutral }

@freezed
class StanceRequest with _$StanceRequest {
  const factory StanceRequest({
    required String text,
    required String topic,
    required String context,
  }) = _StanceRequest;

  factory StanceRequest.fromJson(Map<String, dynamic> json) => _$StanceRequestFromJson(json);
}

@freezed
class StanceDetection with _$StanceDetection {
  const factory StanceDetection({
    required Stance stance,
    required double confidence,
    required String reasoning,
  }) = _StanceDetection;

  factory StanceDetection.fromJson(Map<String, dynamic> json) => _$StanceDetectionFromJson(json);
}

enum Stance { support, oppose, neutral }

@freezed
class SummaryRequest with _$SummaryRequest {
  const factory SummaryRequest({
    required String content,
    required int maxLength,
    required bool includeKeyPoints,
  }) = _SummaryRequest;

  factory SummaryRequest.fromJson(Map<String, dynamic> json) => _$SummaryRequestFromJson(json);
}

@freezed
class NewsSummary with _$NewsSummary {
  const factory NewsSummary({
    required String summary,
    required List<String> keyPoints,
    required int readingTime,
    required double confidence,
  }) = _NewsSummary;

  factory NewsSummary.fromJson(Map<String, dynamic> json) => _$NewsSummaryFromJson(json);
}

@freezed
class EntityRequest with _$EntityRequest {
  const factory EntityRequest({
    required String text,
    required List<EntityType> entityTypes,
  }) = _EntityRequest;

  factory EntityRequest.fromJson(Map<String, dynamic> json) => _$EntityRequestFromJson(json);
}

@freezed
class EntityExtraction with _$EntityExtraction {
  const factory EntityExtraction({
    required List<Entity> entities,
    required double confidence,
  }) = _EntityExtraction;

  factory EntityExtraction.fromJson(Map<String, dynamic> json) => _$EntityExtractionFromJson(json);
}

@freezed
class Entity with _$Entity {
  const factory Entity({
    required String text,
    required EntityType type,
    required double confidence,
    required int startIndex,
    required int endIndex,
  }) = _Entity;

  factory Entity.fromJson(Map<String, dynamic> json) => _$EntityFromJson(json);
}

enum EntityType { company, person, location, currency, number }

@freezed
class ClassificationRequest with _$ClassificationRequest {
  const factory ClassificationRequest({
    required String content,
    required List<String> categories,
  }) = _ClassificationRequest;

  factory ClassificationRequest.fromJson(Map<String, dynamic> json) => _$ClassificationRequestFromJson(json);
}

@freezed
class NewsClassification with _$NewsClassification {
  const factory NewsClassification({
    required String category,
    required double confidence,
    required List<String> subcategories,
  }) = _NewsClassification;

  factory NewsClassification.fromJson(Map<String, dynamic> json) => _$NewsClassificationFromJson(json);
}

@freezed
class RAGQuery with _$RAGQuery {
  const factory RAGQuery({
    required String query,
    required String context,
    required int maxResults,
  }) = _RAGQuery;

  factory RAGQuery.fromJson(Map<String, dynamic> json) => _$RAGQueryFromJson(json);
}

@freezed
class RAGResponse with _$RAGResponse {
  const factory RAGResponse({
    required List<RAGInsight> insights,
    required double confidence,
  }) = _RAGResponse;

  factory RAGResponse.fromJson(Map<String, dynamic> json) => _$RAGResponseFromJson(json);
}

@freezed
class RAGInsight with _$RAGInsight {
  const factory RAGInsight({
    required String insight,
    required double relevance,
    required List<String> sources,
  }) = _RAGInsight;

  factory RAGInsight.fromJson(Map<String, dynamic> json) => _$RAGInsightFromJson(json);
}

@freezed
class RAGContext with _$RAGContext {
  const factory RAGContext({
    required String context,
    required List<String> sources,
    required double relevance,
  }) = _RAGContext;

  factory RAGContext.fromJson(Map<String, dynamic> json) => _$RAGContextFromJson(json);
}

@freezed
class RecommendationRequest with _$RecommendationRequest {
  const factory RecommendationRequest({
    required String userId,
    required List<String> interests,
    required List<String> watchlist,
    required int limit,
    required bool includeSentiment,
    required bool includeStance,
  }) = _RecommendationRequest;

  factory RecommendationRequest.fromJson(Map<String, dynamic> json) => _$RecommendationRequestFromJson(json);
}

@freezed
class NewsAlertRequest with _$NewsAlertRequest {
  const factory NewsAlertRequest({
    required String userId,
    required String query,
    required List<String> sources,
    required AlertFrequency frequency,
    required bool active,
  }) = _NewsAlertRequest;

  factory NewsAlertRequest.fromJson(Map<String, dynamic> json) => _$NewsAlertRequestFromJson(json);
}

enum AlertFrequency { immediate, hourly, daily, weekly } 