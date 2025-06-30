import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'news_model.freezed.dart';
part 'news_model.g.dart';

@freezed
class NewsArticle with _$NewsArticle {
  const factory NewsArticle({
    required String id,
    required String title,
    required String summary,
    required String content,
    required String source,
    required String url,
    required DateTime publishedAt,
    required DateTime lastUpdated,
    required double sentiment,
    required double confidence,
    required List<String> mentionedStocks,
    required List<String> mentionedCryptos,
    required List<String> tags,
    required List<String> categories,
    required List<String> entities,
    required List<SentimentAnalysis> sentimentAnalysis,
    required List<StanceAnalysis> stanceAnalysis,
    required List<SourceAnalysis> sourceAnalysis,
    required List<RelatedArticle> relatedArticles,
    required List<NewsEmbedding> embeddings,
    required bool isRead,
    required DateTime? readAt,
    required int readCount,
    required double relevanceScore,
    required List<String> userTags,
    required bool isBookmarked,
    required DateTime? bookmarkedAt,
  }) = _NewsArticle;

  factory NewsArticle.fromJson(Map<String, dynamic> json) => _$NewsArticleFromJson(json);
}

@freezed
class SentimentAnalysis with _$SentimentAnalysis {
  const factory SentimentAnalysis({
    required String model,
    required double score,
    required String label,
    required double confidence,
    required DateTime analyzedAt,
    required List<SentimentSegment> segments,
  }) = _SentimentAnalysis;

  factory SentimentAnalysis.fromJson(Map<String, dynamic> json) => _$SentimentAnalysisFromJson(json);
}

@freezed
class SentimentSegment with _$SentimentSegment {
  const factory SentimentSegment({
    required String text,
    required double sentiment,
    required String label,
    required int startIndex,
    required int endIndex,
  }) = _SentimentSegment;

  factory SentimentSegment.fromJson(Map<String, dynamic> json) => _$SentimentSegmentFromJson(json);
}

@freezed
class StanceAnalysis with _$StanceAnalysis {
  const factory StanceAnalysis({
    required String target,
    required String stance,
    required double confidence,
    required List<String> evidence,
    required DateTime analyzedAt,
  }) = _StanceAnalysis;

  factory StanceAnalysis.fromJson(Map<String, dynamic> json) => _$StanceAnalysisFromJson(json);
}

@freezed
class SourceAnalysis with _$SourceAnalysis {
  const factory SourceAnalysis({
    required String source,
    required double reliability,
    required double bias,
    required String biasDirection,
    required List<String> factCheckResults,
    required DateTime analyzedAt,
  }) = _SourceAnalysis;

  factory SourceAnalysis.fromJson(Map<String, dynamic> json) => _$SourceAnalysisFromJson(json);
}

@freezed
class RelatedArticle with _$RelatedArticle {
  const factory RelatedArticle({
    required String id,
    required String title,
    required double similarity,
    required String relationship,
    required DateTime publishedAt,
  }) = _RelatedArticle;

  factory RelatedArticle.fromJson(Map<String, dynamic> json) => _$RelatedArticleFromJson(json);
}

@freezed
class NewsEmbedding with _$NewsEmbedding {
  const factory NewsEmbedding({
    required String model,
    required List<double> vector,
    required DateTime generatedAt,
  }) = _NewsEmbedding;

  factory NewsEmbedding.fromJson(Map<String, dynamic> json) => _$NewsEmbeddingFromJson(json);
}

@freezed
class NewsQuery with _$NewsQuery {
  const factory NewsQuery({
    required String id,
    required String query,
    required String type,
    required List<String> filters,
    required DateTime timestamp,
    required List<NewsArticle> results,
    required double relevanceThreshold,
    required int maxResults,
    required List<String> sources,
    required DateTime? startDate,
    required DateTime? endDate,
  }) = _NewsQuery;

  factory NewsQuery.fromJson(Map<String, dynamic> json) => _$NewsQueryFromJson(json);
}

@freezed
class NewsSummary with _$NewsSummary {
  const factory NewsSummary({
    required String id,
    required String title,
    required String summary,
    required List<String> keyPoints,
    required List<String> mentionedAssets,
    required double overallSentiment,
    required List<String> sources,
    required DateTime generatedAt,
    required String model,
    required double confidence,
  }) = _NewsSummary;

  factory NewsSummary.fromJson(Map<String, dynamic> json) => _$NewsSummaryFromJson(json);
}

@freezed
class NewsTrend with _$NewsTrend {
  const factory NewsTrend({
    required String topic,
    required double volume,
    required double volumeChange,
    required double sentiment,
    required double sentimentChange,
    required List<String> topArticles,
    required List<String> relatedTopics,
    required DateTime startDate,
    required DateTime endDate,
  }) = _NewsTrend;

  factory NewsTrend.fromJson(Map<String, dynamic> json) => _$NewsTrendFromJson(json);
}

@freezed
class NewsAlert with _$NewsAlert {
  const factory NewsAlert({
    required String id,
    required String type,
    required String title,
    required String description,
    required List<String> symbols,
    required double threshold,
    required bool isActive,
    required DateTime createdAt,
    required DateTime? triggeredAt,
    required List<NewsArticle> relatedArticles,
  }) = _NewsAlert;

  factory NewsAlert.fromJson(Map<String, dynamic> json) => _$NewsAlertFromJson(json);
}

@freezed
class NewsSource with _$NewsSource {
  const factory NewsSource({
    required String id,
    required String name,
    required String url,
    required String category,
    required double reliability,
    required double bias,
    required String biasDirection,
    required List<String> supportedRegions,
    required bool isActive,
    required DateTime lastUpdated,
    required List<String> tags,
  }) = _NewsSource;

  factory NewsSource.fromJson(Map<String, dynamic> json) => _$NewsSourceFromJson(json);
}

@freezed
class NewsCategory with _$NewsCategory {
  const factory NewsCategory({
    required String id,
    required String name,
    required String description,
    required List<String> keywords,
    required List<String> subcategories,
    required bool isActive,
  }) = _NewsCategory;

  factory NewsCategory.fromJson(Map<String, dynamic> json) => _$NewsCategoryFromJson(json);
}

@freezed
class NewsEntity with _$NewsEntity {
  const factory NewsEntity({
    required String id,
    required String name,
    required String type,
    required double confidence,
    required List<String> mentions,
    required List<String> relatedEntities,
  }) = _NewsEntity;

  factory NewsEntity.fromJson(Map<String, dynamic> json) => _$NewsEntityFromJson(json);
}

@freezed
class NewsFact with _$NewsFact {
  const factory NewsFact({
    required String id,
    required String statement,
    required String source,
    required double confidence,
    required String verification,
    required DateTime verifiedAt,
    required List<String> supportingEvidence,
  }) = _NewsFact;

  factory NewsFact.fromJson(Map<String, dynamic> json) => _$NewsFactFromJson(json);
}

@freezed
class NewsInsight with _$NewsInsight {
  const factory NewsInsight({
    required String id,
    required String type,
    required String title,
    required String description,
    required double confidence,
    required List<String> supportingArticles,
    required List<String> relatedAssets,
    required DateTime generatedAt,
    required String model,
  }) = _NewsInsight;

  factory NewsInsight.fromJson(Map<String, dynamic> json) => _$NewsInsightFromJson(json);
}

@freezed
class NewsDigest with _$NewsDigest {
  const factory NewsDigest({
    required String id,
    required String title,
    required DateTime date,
    required List<NewsSummary> summaries,
    required List<NewsTrend> trends,
    required List<NewsInsight> insights,
    required Map<String, double> marketSentiment,
    required List<String> topStories,
    required List<String> emergingTopics,
  }) = _NewsDigest;

  factory NewsDigest.fromJson(Map<String, dynamic> json) => _$NewsDigestFromJson(json);
}

@freezed
class NewsRecommendation with _$NewsRecommendation {
  const factory NewsRecommendation({
    required String id,
    required String userId,
    required List<NewsArticle> articles,
    required double relevanceScore,
    required List<String> reasons,
    required DateTime generatedAt,
    required bool isRead,
    required DateTime? readAt,
  }) = _NewsRecommendation;

  factory NewsRecommendation.fromJson(Map<String, dynamic> json) => _$NewsRecommendationFromJson(json);
}

@freezed
class NewsAnalytics with _$NewsAnalytics {
  const factory NewsAnalytics({
    required String id,
    required DateTime date,
    required int totalArticles,
    required int processedArticles,
    required Map<String, int> sourceDistribution,
    required Map<String, double> sentimentDistribution,
    required List<NewsTrend> topTrends,
    required List<String> topEntities,
    required double averageSentiment,
    required double averageConfidence,
  }) = _NewsAnalytics;

  factory NewsAnalytics.fromJson(Map<String, dynamic> json) => _$NewsAnalyticsFromJson(json);
} 