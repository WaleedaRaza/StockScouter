// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'financial_news_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EconomicEventImpl _$$EconomicEventImplFromJson(Map<String, dynamic> json) =>
    _$EconomicEventImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      date: DateTime.parse(json['date'] as String),
      country: json['country'] as String,
      currency: json['currency'] as String,
      impact: json['impact'] as String,
      previousValue: (json['previousValue'] as num?)?.toDouble(),
      forecastValue: (json['forecastValue'] as num?)?.toDouble(),
      actualValue: (json['actualValue'] as num?)?.toDouble(),
      unit: json['unit'] as String,
      affectedAssets: (json['affectedAssets'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      isHighImpact: json['isHighImpact'] as bool,
      source: json['source'] as String,
    );

Map<String, dynamic> _$$EconomicEventImplToJson(_$EconomicEventImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'date': instance.date.toIso8601String(),
      'country': instance.country,
      'currency': instance.currency,
      'impact': instance.impact,
      'previousValue': instance.previousValue,
      'forecastValue': instance.forecastValue,
      'actualValue': instance.actualValue,
      'unit': instance.unit,
      'affectedAssets': instance.affectedAssets,
      'isHighImpact': instance.isHighImpact,
      'source': instance.source,
    };

_$EarningsCallImpl _$$EarningsCallImplFromJson(Map<String, dynamic> json) =>
    _$EarningsCallImpl(
      id: json['id'] as String,
      symbol: json['symbol'] as String,
      companyName: json['companyName'] as String,
      callDate: DateTime.parse(json['callDate'] as String),
      earningsDate: DateTime.parse(json['earningsDate'] as String),
      quarter: json['quarter'] as String,
      year: (json['year'] as num).toInt(),
      epsForecast: (json['epsForecast'] as num?)?.toDouble(),
      revenueForecast: (json['revenueForecast'] as num?)?.toDouble(),
      epsActual: (json['epsActual'] as num?)?.toDouble(),
      revenueActual: (json['revenueActual'] as num?)?.toDouble(),
      callUrl: json['callUrl'] as String,
      transcriptUrl: json['transcriptUrl'] as String,
      keyTopics:
          (json['keyTopics'] as List<dynamic>).map((e) => e as String).toList(),
      sentimentScores: (json['sentimentScores'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      participants: (json['participants'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      isCompleted: json['isCompleted'] as bool,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$EarningsCallImplToJson(_$EarningsCallImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'companyName': instance.companyName,
      'callDate': instance.callDate.toIso8601String(),
      'earningsDate': instance.earningsDate.toIso8601String(),
      'quarter': instance.quarter,
      'year': instance.year,
      'epsForecast': instance.epsForecast,
      'revenueForecast': instance.revenueForecast,
      'epsActual': instance.epsActual,
      'revenueActual': instance.revenueActual,
      'callUrl': instance.callUrl,
      'transcriptUrl': instance.transcriptUrl,
      'keyTopics': instance.keyTopics,
      'sentimentScores': instance.sentimentScores,
      'participants': instance.participants,
      'isCompleted': instance.isCompleted,
      'status': instance.status,
    };

_$KeyFigureImpl _$$KeyFigureImplFromJson(Map<String, dynamic> json) =>
    _$KeyFigureImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      title: json['title'] as String,
      company: json['company'] as String,
      photoUrl: json['photoUrl'] as String?,
      recentActions: (json['recentActions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      holdings:
          (json['holdings'] as List<dynamic>).map((e) => e as String).toList(),
      netWorth: (json['netWorth'] as num).toDouble(),
      source: json['source'] as String,
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      relatedNews: (json['relatedNews'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$KeyFigureImplToJson(_$KeyFigureImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'title': instance.title,
      'company': instance.company,
      'photoUrl': instance.photoUrl,
      'recentActions': instance.recentActions,
      'holdings': instance.holdings,
      'netWorth': instance.netWorth,
      'source': instance.source,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'relatedNews': instance.relatedNews,
    };

_$MarketSentimentImpl _$$MarketSentimentImplFromJson(
        Map<String, dynamic> json) =>
    _$MarketSentimentImpl(
      id: json['id'] as String,
      date: DateTime.parse(json['date'] as String),
      overallSentiment: (json['overallSentiment'] as num).toDouble(),
      sectorSentiment: (json['sectorSentiment'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      assetClassSentiment:
          (json['assetClassSentiment'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      topPositiveTopics: (json['topPositiveTopics'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      topNegativeTopics: (json['topNegativeTopics'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      fearGreedIndex: (json['fearGreedIndex'] as num).toDouble(),
      volatilityIndex: (json['volatilityIndex'] as num).toDouble(),
      trendingTopics: (json['trendingTopics'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$MarketSentimentImplToJson(
        _$MarketSentimentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'overallSentiment': instance.overallSentiment,
      'sectorSentiment': instance.sectorSentiment,
      'assetClassSentiment': instance.assetClassSentiment,
      'topPositiveTopics': instance.topPositiveTopics,
      'topNegativeTopics': instance.topNegativeTopics,
      'fearGreedIndex': instance.fearGreedIndex,
      'volatilityIndex': instance.volatilityIndex,
      'trendingTopics': instance.trendingTopics,
    };

_$TrendingTopicImpl _$$TrendingTopicImplFromJson(Map<String, dynamic> json) =>
    _$TrendingTopicImpl(
      id: json['id'] as String,
      topic: json['topic'] as String,
      volume: (json['volume'] as num).toDouble(),
      volumeChange: (json['volumeChange'] as num).toDouble(),
      sentiment: (json['sentiment'] as num).toDouble(),
      sentimentChange: (json['sentimentChange'] as num).toDouble(),
      relatedSymbols: (json['relatedSymbols'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      topArticles: (json['topArticles'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
    );

Map<String, dynamic> _$$TrendingTopicImplToJson(_$TrendingTopicImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'topic': instance.topic,
      'volume': instance.volume,
      'volumeChange': instance.volumeChange,
      'sentiment': instance.sentiment,
      'sentimentChange': instance.sentimentChange,
      'relatedSymbols': instance.relatedSymbols,
      'topArticles': instance.topArticles,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
    };

_$SentimentRequestImpl _$$SentimentRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SentimentRequestImpl(
      text: json['text'] as String,
      context: json['context'] as String,
    );

Map<String, dynamic> _$$SentimentRequestImplToJson(
        _$SentimentRequestImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'context': instance.context,
    };

_$SentimentAnalysisImpl _$$SentimentAnalysisImplFromJson(
        Map<String, dynamic> json) =>
    _$SentimentAnalysisImpl(
      sentiment: $enumDecode(_$SentimentEnumMap, json['sentiment']),
      score: (json['score'] as num).toDouble(),
      confidence: (json['confidence'] as num).toDouble(),
      aspects: (json['aspects'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$$SentimentAnalysisImplToJson(
        _$SentimentAnalysisImpl instance) =>
    <String, dynamic>{
      'sentiment': _$SentimentEnumMap[instance.sentiment]!,
      'score': instance.score,
      'confidence': instance.confidence,
      'aspects': instance.aspects,
    };

const _$SentimentEnumMap = {
  Sentiment.positive: 'positive',
  Sentiment.negative: 'negative',
  Sentiment.neutral: 'neutral',
};

_$StanceRequestImpl _$$StanceRequestImplFromJson(Map<String, dynamic> json) =>
    _$StanceRequestImpl(
      text: json['text'] as String,
      topic: json['topic'] as String,
      context: json['context'] as String,
    );

Map<String, dynamic> _$$StanceRequestImplToJson(_$StanceRequestImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'topic': instance.topic,
      'context': instance.context,
    };

_$StanceDetectionImpl _$$StanceDetectionImplFromJson(
        Map<String, dynamic> json) =>
    _$StanceDetectionImpl(
      stance: $enumDecode(_$StanceEnumMap, json['stance']),
      confidence: (json['confidence'] as num).toDouble(),
      reasoning: json['reasoning'] as String,
    );

Map<String, dynamic> _$$StanceDetectionImplToJson(
        _$StanceDetectionImpl instance) =>
    <String, dynamic>{
      'stance': _$StanceEnumMap[instance.stance]!,
      'confidence': instance.confidence,
      'reasoning': instance.reasoning,
    };

const _$StanceEnumMap = {
  Stance.support: 'support',
  Stance.oppose: 'oppose',
  Stance.neutral: 'neutral',
};

_$SummaryRequestImpl _$$SummaryRequestImplFromJson(Map<String, dynamic> json) =>
    _$SummaryRequestImpl(
      content: json['content'] as String,
      maxLength: (json['maxLength'] as num).toInt(),
      includeKeyPoints: json['includeKeyPoints'] as bool,
    );

Map<String, dynamic> _$$SummaryRequestImplToJson(
        _$SummaryRequestImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'maxLength': instance.maxLength,
      'includeKeyPoints': instance.includeKeyPoints,
    };

_$NewsSummaryImpl _$$NewsSummaryImplFromJson(Map<String, dynamic> json) =>
    _$NewsSummaryImpl(
      summary: json['summary'] as String,
      keyPoints:
          (json['keyPoints'] as List<dynamic>).map((e) => e as String).toList(),
      readingTime: (json['readingTime'] as num).toInt(),
      confidence: (json['confidence'] as num).toDouble(),
    );

Map<String, dynamic> _$$NewsSummaryImplToJson(_$NewsSummaryImpl instance) =>
    <String, dynamic>{
      'summary': instance.summary,
      'keyPoints': instance.keyPoints,
      'readingTime': instance.readingTime,
      'confidence': instance.confidence,
    };

_$EntityRequestImpl _$$EntityRequestImplFromJson(Map<String, dynamic> json) =>
    _$EntityRequestImpl(
      text: json['text'] as String,
      entityTypes: (json['entityTypes'] as List<dynamic>)
          .map((e) => $enumDecode(_$EntityTypeEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$EntityRequestImplToJson(_$EntityRequestImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'entityTypes':
          instance.entityTypes.map((e) => _$EntityTypeEnumMap[e]!).toList(),
    };

const _$EntityTypeEnumMap = {
  EntityType.company: 'company',
  EntityType.person: 'person',
  EntityType.location: 'location',
  EntityType.currency: 'currency',
  EntityType.number: 'number',
};

_$EntityExtractionImpl _$$EntityExtractionImplFromJson(
        Map<String, dynamic> json) =>
    _$EntityExtractionImpl(
      entities: (json['entities'] as List<dynamic>)
          .map((e) => Entity.fromJson(e as Map<String, dynamic>))
          .toList(),
      confidence: (json['confidence'] as num).toDouble(),
    );

Map<String, dynamic> _$$EntityExtractionImplToJson(
        _$EntityExtractionImpl instance) =>
    <String, dynamic>{
      'entities': instance.entities,
      'confidence': instance.confidence,
    };

_$EntityImpl _$$EntityImplFromJson(Map<String, dynamic> json) => _$EntityImpl(
      text: json['text'] as String,
      type: $enumDecode(_$EntityTypeEnumMap, json['type']),
      confidence: (json['confidence'] as num).toDouble(),
      startIndex: (json['startIndex'] as num).toInt(),
      endIndex: (json['endIndex'] as num).toInt(),
    );

Map<String, dynamic> _$$EntityImplToJson(_$EntityImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'type': _$EntityTypeEnumMap[instance.type]!,
      'confidence': instance.confidence,
      'startIndex': instance.startIndex,
      'endIndex': instance.endIndex,
    };

_$ClassificationRequestImpl _$$ClassificationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassificationRequestImpl(
      content: json['content'] as String,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ClassificationRequestImplToJson(
        _$ClassificationRequestImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'categories': instance.categories,
    };

_$NewsClassificationImpl _$$NewsClassificationImplFromJson(
        Map<String, dynamic> json) =>
    _$NewsClassificationImpl(
      category: json['category'] as String,
      confidence: (json['confidence'] as num).toDouble(),
      subcategories: (json['subcategories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$NewsClassificationImplToJson(
        _$NewsClassificationImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'confidence': instance.confidence,
      'subcategories': instance.subcategories,
    };

_$RAGQueryImpl _$$RAGQueryImplFromJson(Map<String, dynamic> json) =>
    _$RAGQueryImpl(
      query: json['query'] as String,
      context: json['context'] as String,
      maxResults: (json['maxResults'] as num).toInt(),
    );

Map<String, dynamic> _$$RAGQueryImplToJson(_$RAGQueryImpl instance) =>
    <String, dynamic>{
      'query': instance.query,
      'context': instance.context,
      'maxResults': instance.maxResults,
    };

_$RAGResponseImpl _$$RAGResponseImplFromJson(Map<String, dynamic> json) =>
    _$RAGResponseImpl(
      insights: (json['insights'] as List<dynamic>)
          .map((e) => RAGInsight.fromJson(e as Map<String, dynamic>))
          .toList(),
      confidence: (json['confidence'] as num).toDouble(),
    );

Map<String, dynamic> _$$RAGResponseImplToJson(_$RAGResponseImpl instance) =>
    <String, dynamic>{
      'insights': instance.insights,
      'confidence': instance.confidence,
    };

_$RAGInsightImpl _$$RAGInsightImplFromJson(Map<String, dynamic> json) =>
    _$RAGInsightImpl(
      insight: json['insight'] as String,
      relevance: (json['relevance'] as num).toDouble(),
      sources:
          (json['sources'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$RAGInsightImplToJson(_$RAGInsightImpl instance) =>
    <String, dynamic>{
      'insight': instance.insight,
      'relevance': instance.relevance,
      'sources': instance.sources,
    };

_$RAGContextImpl _$$RAGContextImplFromJson(Map<String, dynamic> json) =>
    _$RAGContextImpl(
      context: json['context'] as String,
      sources:
          (json['sources'] as List<dynamic>).map((e) => e as String).toList(),
      relevance: (json['relevance'] as num).toDouble(),
    );

Map<String, dynamic> _$$RAGContextImplToJson(_$RAGContextImpl instance) =>
    <String, dynamic>{
      'context': instance.context,
      'sources': instance.sources,
      'relevance': instance.relevance,
    };

_$RecommendationRequestImpl _$$RecommendationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$RecommendationRequestImpl(
      userId: json['userId'] as String,
      interests:
          (json['interests'] as List<dynamic>).map((e) => e as String).toList(),
      watchlist:
          (json['watchlist'] as List<dynamic>).map((e) => e as String).toList(),
      limit: (json['limit'] as num).toInt(),
      includeSentiment: json['includeSentiment'] as bool,
      includeStance: json['includeStance'] as bool,
    );

Map<String, dynamic> _$$RecommendationRequestImplToJson(
        _$RecommendationRequestImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'interests': instance.interests,
      'watchlist': instance.watchlist,
      'limit': instance.limit,
      'includeSentiment': instance.includeSentiment,
      'includeStance': instance.includeStance,
    };

_$NewsAlertRequestImpl _$$NewsAlertRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$NewsAlertRequestImpl(
      userId: json['userId'] as String,
      query: json['query'] as String,
      sources:
          (json['sources'] as List<dynamic>).map((e) => e as String).toList(),
      frequency: $enumDecode(_$AlertFrequencyEnumMap, json['frequency']),
      active: json['active'] as bool,
    );

Map<String, dynamic> _$$NewsAlertRequestImplToJson(
        _$NewsAlertRequestImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'query': instance.query,
      'sources': instance.sources,
      'frequency': _$AlertFrequencyEnumMap[instance.frequency]!,
      'active': instance.active,
    };

const _$AlertFrequencyEnumMap = {
  AlertFrequency.immediate: 'immediate',
  AlertFrequency.hourly: 'hourly',
  AlertFrequency.daily: 'daily',
  AlertFrequency.weekly: 'weekly',
};
