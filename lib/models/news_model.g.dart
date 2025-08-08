// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsArticleImpl _$$NewsArticleImplFromJson(Map<String, dynamic> json) =>
    _$NewsArticleImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      summary: json['summary'] as String,
      content: json['content'] as String,
      source: json['source'] as String,
      url: json['url'] as String,
      publishedAt: DateTime.parse(json['publishedAt'] as String),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      sentiment: (json['sentiment'] as num).toDouble(),
      confidence: (json['confidence'] as num).toDouble(),
      mentionedStocks: (json['mentionedStocks'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      mentionedCryptos: (json['mentionedCryptos'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      entities:
          (json['entities'] as List<dynamic>).map((e) => e as String).toList(),
      sentimentAnalysis: (json['sentimentAnalysis'] as List<dynamic>)
          .map((e) => SentimentAnalysis.fromJson(e as Map<String, dynamic>))
          .toList(),
      stanceAnalysis: (json['stanceAnalysis'] as List<dynamic>)
          .map((e) => StanceAnalysis.fromJson(e as Map<String, dynamic>))
          .toList(),
      sourceAnalysis: (json['sourceAnalysis'] as List<dynamic>)
          .map((e) => SourceAnalysis.fromJson(e as Map<String, dynamic>))
          .toList(),
      relatedArticles: (json['relatedArticles'] as List<dynamic>)
          .map((e) => RelatedArticle.fromJson(e as Map<String, dynamic>))
          .toList(),
      embeddings: (json['embeddings'] as List<dynamic>)
          .map((e) => NewsEmbedding.fromJson(e as Map<String, dynamic>))
          .toList(),
      isRead: json['isRead'] as bool,
      readAt: json['readAt'] == null
          ? null
          : DateTime.parse(json['readAt'] as String),
      readCount: (json['readCount'] as num).toInt(),
      relevanceScore: (json['relevanceScore'] as num).toDouble(),
      userTags:
          (json['userTags'] as List<dynamic>).map((e) => e as String).toList(),
      isBookmarked: json['isBookmarked'] as bool,
      bookmarkedAt: json['bookmarkedAt'] == null
          ? null
          : DateTime.parse(json['bookmarkedAt'] as String),
    );

Map<String, dynamic> _$$NewsArticleImplToJson(_$NewsArticleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'summary': instance.summary,
      'content': instance.content,
      'source': instance.source,
      'url': instance.url,
      'publishedAt': instance.publishedAt.toIso8601String(),
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'sentiment': instance.sentiment,
      'confidence': instance.confidence,
      'mentionedStocks': instance.mentionedStocks,
      'mentionedCryptos': instance.mentionedCryptos,
      'tags': instance.tags,
      'categories': instance.categories,
      'entities': instance.entities,
      'sentimentAnalysis': instance.sentimentAnalysis,
      'stanceAnalysis': instance.stanceAnalysis,
      'sourceAnalysis': instance.sourceAnalysis,
      'relatedArticles': instance.relatedArticles,
      'embeddings': instance.embeddings,
      'isRead': instance.isRead,
      'readAt': instance.readAt?.toIso8601String(),
      'readCount': instance.readCount,
      'relevanceScore': instance.relevanceScore,
      'userTags': instance.userTags,
      'isBookmarked': instance.isBookmarked,
      'bookmarkedAt': instance.bookmarkedAt?.toIso8601String(),
    };

_$SentimentAnalysisImpl _$$SentimentAnalysisImplFromJson(
        Map<String, dynamic> json) =>
    _$SentimentAnalysisImpl(
      model: json['model'] as String,
      score: (json['score'] as num).toDouble(),
      label: json['label'] as String,
      confidence: (json['confidence'] as num).toDouble(),
      analyzedAt: DateTime.parse(json['analyzedAt'] as String),
      segments: (json['segments'] as List<dynamic>)
          .map((e) => SentimentSegment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SentimentAnalysisImplToJson(
        _$SentimentAnalysisImpl instance) =>
    <String, dynamic>{
      'model': instance.model,
      'score': instance.score,
      'label': instance.label,
      'confidence': instance.confidence,
      'analyzedAt': instance.analyzedAt.toIso8601String(),
      'segments': instance.segments,
    };

_$SentimentSegmentImpl _$$SentimentSegmentImplFromJson(
        Map<String, dynamic> json) =>
    _$SentimentSegmentImpl(
      text: json['text'] as String,
      sentiment: (json['sentiment'] as num).toDouble(),
      label: json['label'] as String,
      startIndex: (json['startIndex'] as num).toInt(),
      endIndex: (json['endIndex'] as num).toInt(),
    );

Map<String, dynamic> _$$SentimentSegmentImplToJson(
        _$SentimentSegmentImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'sentiment': instance.sentiment,
      'label': instance.label,
      'startIndex': instance.startIndex,
      'endIndex': instance.endIndex,
    };

_$StanceAnalysisImpl _$$StanceAnalysisImplFromJson(Map<String, dynamic> json) =>
    _$StanceAnalysisImpl(
      target: json['target'] as String,
      stance: json['stance'] as String,
      confidence: (json['confidence'] as num).toDouble(),
      evidence:
          (json['evidence'] as List<dynamic>).map((e) => e as String).toList(),
      analyzedAt: DateTime.parse(json['analyzedAt'] as String),
    );

Map<String, dynamic> _$$StanceAnalysisImplToJson(
        _$StanceAnalysisImpl instance) =>
    <String, dynamic>{
      'target': instance.target,
      'stance': instance.stance,
      'confidence': instance.confidence,
      'evidence': instance.evidence,
      'analyzedAt': instance.analyzedAt.toIso8601String(),
    };

_$SourceAnalysisImpl _$$SourceAnalysisImplFromJson(Map<String, dynamic> json) =>
    _$SourceAnalysisImpl(
      source: json['source'] as String,
      reliability: (json['reliability'] as num).toDouble(),
      bias: (json['bias'] as num).toDouble(),
      biasDirection: json['biasDirection'] as String,
      factCheckResults: (json['factCheckResults'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      analyzedAt: DateTime.parse(json['analyzedAt'] as String),
    );

Map<String, dynamic> _$$SourceAnalysisImplToJson(
        _$SourceAnalysisImpl instance) =>
    <String, dynamic>{
      'source': instance.source,
      'reliability': instance.reliability,
      'bias': instance.bias,
      'biasDirection': instance.biasDirection,
      'factCheckResults': instance.factCheckResults,
      'analyzedAt': instance.analyzedAt.toIso8601String(),
    };

_$RelatedArticleImpl _$$RelatedArticleImplFromJson(Map<String, dynamic> json) =>
    _$RelatedArticleImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      similarity: (json['similarity'] as num).toDouble(),
      relationship: json['relationship'] as String,
      publishedAt: DateTime.parse(json['publishedAt'] as String),
    );

Map<String, dynamic> _$$RelatedArticleImplToJson(
        _$RelatedArticleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'similarity': instance.similarity,
      'relationship': instance.relationship,
      'publishedAt': instance.publishedAt.toIso8601String(),
    };

_$NewsEmbeddingImpl _$$NewsEmbeddingImplFromJson(Map<String, dynamic> json) =>
    _$NewsEmbeddingImpl(
      model: json['model'] as String,
      vector: (json['vector'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      generatedAt: DateTime.parse(json['generatedAt'] as String),
    );

Map<String, dynamic> _$$NewsEmbeddingImplToJson(_$NewsEmbeddingImpl instance) =>
    <String, dynamic>{
      'model': instance.model,
      'vector': instance.vector,
      'generatedAt': instance.generatedAt.toIso8601String(),
    };

_$NewsQueryImpl _$$NewsQueryImplFromJson(Map<String, dynamic> json) =>
    _$NewsQueryImpl(
      id: json['id'] as String,
      query: json['query'] as String,
      type: json['type'] as String,
      filters:
          (json['filters'] as List<dynamic>).map((e) => e as String).toList(),
      timestamp: DateTime.parse(json['timestamp'] as String),
      results: (json['results'] as List<dynamic>)
          .map((e) => NewsArticle.fromJson(e as Map<String, dynamic>))
          .toList(),
      relevanceThreshold: (json['relevanceThreshold'] as num).toDouble(),
      maxResults: (json['maxResults'] as num).toInt(),
      sources:
          (json['sources'] as List<dynamic>).map((e) => e as String).toList(),
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
    );

Map<String, dynamic> _$$NewsQueryImplToJson(_$NewsQueryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'query': instance.query,
      'type': instance.type,
      'filters': instance.filters,
      'timestamp': instance.timestamp.toIso8601String(),
      'results': instance.results,
      'relevanceThreshold': instance.relevanceThreshold,
      'maxResults': instance.maxResults,
      'sources': instance.sources,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
    };

_$NewsSummaryImpl _$$NewsSummaryImplFromJson(Map<String, dynamic> json) =>
    _$NewsSummaryImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      summary: json['summary'] as String,
      keyPoints:
          (json['keyPoints'] as List<dynamic>).map((e) => e as String).toList(),
      mentionedAssets: (json['mentionedAssets'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      overallSentiment: (json['overallSentiment'] as num).toDouble(),
      sources:
          (json['sources'] as List<dynamic>).map((e) => e as String).toList(),
      generatedAt: DateTime.parse(json['generatedAt'] as String),
      model: json['model'] as String,
      confidence: (json['confidence'] as num).toDouble(),
    );

Map<String, dynamic> _$$NewsSummaryImplToJson(_$NewsSummaryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'summary': instance.summary,
      'keyPoints': instance.keyPoints,
      'mentionedAssets': instance.mentionedAssets,
      'overallSentiment': instance.overallSentiment,
      'sources': instance.sources,
      'generatedAt': instance.generatedAt.toIso8601String(),
      'model': instance.model,
      'confidence': instance.confidence,
    };

_$NewsTrendImpl _$$NewsTrendImplFromJson(Map<String, dynamic> json) =>
    _$NewsTrendImpl(
      topic: json['topic'] as String,
      volume: (json['volume'] as num).toDouble(),
      volumeChange: (json['volumeChange'] as num).toDouble(),
      sentiment: (json['sentiment'] as num).toDouble(),
      sentimentChange: (json['sentimentChange'] as num).toDouble(),
      topArticles: (json['topArticles'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      relatedTopics: (json['relatedTopics'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
    );

Map<String, dynamic> _$$NewsTrendImplToJson(_$NewsTrendImpl instance) =>
    <String, dynamic>{
      'topic': instance.topic,
      'volume': instance.volume,
      'volumeChange': instance.volumeChange,
      'sentiment': instance.sentiment,
      'sentimentChange': instance.sentimentChange,
      'topArticles': instance.topArticles,
      'relatedTopics': instance.relatedTopics,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
    };

_$NewsAlertImpl _$$NewsAlertImplFromJson(Map<String, dynamic> json) =>
    _$NewsAlertImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      symbols:
          (json['symbols'] as List<dynamic>).map((e) => e as String).toList(),
      threshold: (json['threshold'] as num).toDouble(),
      isActive: json['isActive'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      triggeredAt: json['triggeredAt'] == null
          ? null
          : DateTime.parse(json['triggeredAt'] as String),
      relatedArticles: (json['relatedArticles'] as List<dynamic>)
          .map((e) => NewsArticle.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NewsAlertImplToJson(_$NewsAlertImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'description': instance.description,
      'symbols': instance.symbols,
      'threshold': instance.threshold,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt.toIso8601String(),
      'triggeredAt': instance.triggeredAt?.toIso8601String(),
      'relatedArticles': instance.relatedArticles,
    };

_$NewsSourceImpl _$$NewsSourceImplFromJson(Map<String, dynamic> json) =>
    _$NewsSourceImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
      category: json['category'] as String,
      reliability: (json['reliability'] as num).toDouble(),
      bias: (json['bias'] as num).toDouble(),
      biasDirection: json['biasDirection'] as String,
      supportedRegions: (json['supportedRegions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      isActive: json['isActive'] as bool,
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$NewsSourceImplToJson(_$NewsSourceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'category': instance.category,
      'reliability': instance.reliability,
      'bias': instance.bias,
      'biasDirection': instance.biasDirection,
      'supportedRegions': instance.supportedRegions,
      'isActive': instance.isActive,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'tags': instance.tags,
    };

_$NewsCategoryImpl _$$NewsCategoryImplFromJson(Map<String, dynamic> json) =>
    _$NewsCategoryImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      keywords:
          (json['keywords'] as List<dynamic>).map((e) => e as String).toList(),
      subcategories: (json['subcategories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$$NewsCategoryImplToJson(_$NewsCategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'keywords': instance.keywords,
      'subcategories': instance.subcategories,
      'isActive': instance.isActive,
    };

_$NewsEntityImpl _$$NewsEntityImplFromJson(Map<String, dynamic> json) =>
    _$NewsEntityImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      confidence: (json['confidence'] as num).toDouble(),
      mentions:
          (json['mentions'] as List<dynamic>).map((e) => e as String).toList(),
      relatedEntities: (json['relatedEntities'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$NewsEntityImplToJson(_$NewsEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'confidence': instance.confidence,
      'mentions': instance.mentions,
      'relatedEntities': instance.relatedEntities,
    };

_$NewsFactImpl _$$NewsFactImplFromJson(Map<String, dynamic> json) =>
    _$NewsFactImpl(
      id: json['id'] as String,
      statement: json['statement'] as String,
      source: json['source'] as String,
      confidence: (json['confidence'] as num).toDouble(),
      verification: json['verification'] as String,
      verifiedAt: DateTime.parse(json['verifiedAt'] as String),
      supportingEvidence: (json['supportingEvidence'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$NewsFactImplToJson(_$NewsFactImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'statement': instance.statement,
      'source': instance.source,
      'confidence': instance.confidence,
      'verification': instance.verification,
      'verifiedAt': instance.verifiedAt.toIso8601String(),
      'supportingEvidence': instance.supportingEvidence,
    };

_$NewsInsightImpl _$$NewsInsightImplFromJson(Map<String, dynamic> json) =>
    _$NewsInsightImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      confidence: (json['confidence'] as num).toDouble(),
      supportingArticles: (json['supportingArticles'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      relatedAssets: (json['relatedAssets'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      generatedAt: DateTime.parse(json['generatedAt'] as String),
      model: json['model'] as String,
    );

Map<String, dynamic> _$$NewsInsightImplToJson(_$NewsInsightImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'description': instance.description,
      'confidence': instance.confidence,
      'supportingArticles': instance.supportingArticles,
      'relatedAssets': instance.relatedAssets,
      'generatedAt': instance.generatedAt.toIso8601String(),
      'model': instance.model,
    };

_$NewsDigestImpl _$$NewsDigestImplFromJson(Map<String, dynamic> json) =>
    _$NewsDigestImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      date: DateTime.parse(json['date'] as String),
      summaries: (json['summaries'] as List<dynamic>)
          .map((e) => NewsSummary.fromJson(e as Map<String, dynamic>))
          .toList(),
      trends: (json['trends'] as List<dynamic>)
          .map((e) => NewsTrend.fromJson(e as Map<String, dynamic>))
          .toList(),
      insights: (json['insights'] as List<dynamic>)
          .map((e) => NewsInsight.fromJson(e as Map<String, dynamic>))
          .toList(),
      marketSentiment: (json['marketSentiment'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      topStories: (json['topStories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      emergingTopics: (json['emergingTopics'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$NewsDigestImplToJson(_$NewsDigestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'date': instance.date.toIso8601String(),
      'summaries': instance.summaries,
      'trends': instance.trends,
      'insights': instance.insights,
      'marketSentiment': instance.marketSentiment,
      'topStories': instance.topStories,
      'emergingTopics': instance.emergingTopics,
    };

_$NewsRecommendationImpl _$$NewsRecommendationImplFromJson(
        Map<String, dynamic> json) =>
    _$NewsRecommendationImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      articles: (json['articles'] as List<dynamic>)
          .map((e) => NewsArticle.fromJson(e as Map<String, dynamic>))
          .toList(),
      relevanceScore: (json['relevanceScore'] as num).toDouble(),
      reasons:
          (json['reasons'] as List<dynamic>).map((e) => e as String).toList(),
      generatedAt: DateTime.parse(json['generatedAt'] as String),
      isRead: json['isRead'] as bool,
      readAt: json['readAt'] == null
          ? null
          : DateTime.parse(json['readAt'] as String),
    );

Map<String, dynamic> _$$NewsRecommendationImplToJson(
        _$NewsRecommendationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'articles': instance.articles,
      'relevanceScore': instance.relevanceScore,
      'reasons': instance.reasons,
      'generatedAt': instance.generatedAt.toIso8601String(),
      'isRead': instance.isRead,
      'readAt': instance.readAt?.toIso8601String(),
    };

_$NewsAnalyticsImpl _$$NewsAnalyticsImplFromJson(Map<String, dynamic> json) =>
    _$NewsAnalyticsImpl(
      id: json['id'] as String,
      date: DateTime.parse(json['date'] as String),
      totalArticles: (json['totalArticles'] as num).toInt(),
      processedArticles: (json['processedArticles'] as num).toInt(),
      sourceDistribution:
          Map<String, int>.from(json['sourceDistribution'] as Map),
      sentimentDistribution:
          (json['sentimentDistribution'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      topTrends: (json['topTrends'] as List<dynamic>)
          .map((e) => NewsTrend.fromJson(e as Map<String, dynamic>))
          .toList(),
      topEntities: (json['topEntities'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      averageSentiment: (json['averageSentiment'] as num).toDouble(),
      averageConfidence: (json['averageConfidence'] as num).toDouble(),
    );

Map<String, dynamic> _$$NewsAnalyticsImplToJson(_$NewsAnalyticsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'totalArticles': instance.totalArticles,
      'processedArticles': instance.processedArticles,
      'sourceDistribution': instance.sourceDistribution,
      'sentimentDistribution': instance.sentimentDistribution,
      'topTrends': instance.topTrends,
      'topEntities': instance.topEntities,
      'averageSentiment': instance.averageSentiment,
      'averageConfidence': instance.averageConfidence,
    };
