// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnalyticsDataImpl _$$AnalyticsDataImplFromJson(Map<String, dynamic> json) =>
    _$AnalyticsDataImpl(
      id: json['id'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      type: $enumDecode(_$AnalyticsTypeEnumMap, json['type']),
      data: json['data'] as Map<String, dynamic>,
      confidence: (json['confidence'] as num).toDouble(),
      symbol: json['symbol'] as String?,
      source: json['source'] as String?,
    );

Map<String, dynamic> _$$AnalyticsDataImplToJson(_$AnalyticsDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timestamp': instance.timestamp.toIso8601String(),
      'type': _$AnalyticsTypeEnumMap[instance.type]!,
      'data': instance.data,
      'confidence': instance.confidence,
      'symbol': instance.symbol,
      'source': instance.source,
    };

const _$AnalyticsTypeEnumMap = {
  AnalyticsType.sentiment: 'sentiment',
  AnalyticsType.volume: 'volume',
  AnalyticsType.correlation: 'correlation',
  AnalyticsType.earnings: 'earnings',
  AnalyticsType.social: 'social',
  AnalyticsType.marketImpact: 'marketImpact',
  AnalyticsType.pattern: 'pattern',
  AnalyticsType.prediction: 'prediction',
};

_$EnhancedSentimentImpl _$$EnhancedSentimentImplFromJson(
        Map<String, dynamic> json) =>
    _$EnhancedSentimentImpl(
      basicSentiment: (json['basicSentiment'] as num).toDouble(),
      entitySentiment: (json['entitySentiment'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      confidence: (json['confidence'] as num).toDouble(),
      reliability: (json['reliability'] as num).toDouble(),
      dominantEntity: json['dominantEntity'] as String?,
      contextualSentiment:
          (json['contextualSentiment'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      temporalSentiment:
          (json['temporalSentiment'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$$EnhancedSentimentImplToJson(
        _$EnhancedSentimentImpl instance) =>
    <String, dynamic>{
      'basicSentiment': instance.basicSentiment,
      'entitySentiment': instance.entitySentiment,
      'confidence': instance.confidence,
      'reliability': instance.reliability,
      'dominantEntity': instance.dominantEntity,
      'contextualSentiment': instance.contextualSentiment,
      'temporalSentiment': instance.temporalSentiment,
    };

_$VolumeAnalysisImpl _$$VolumeAnalysisImplFromJson(Map<String, dynamic> json) =>
    _$VolumeAnalysisImpl(
      symbol: json['symbol'] as String,
      currentVolume: (json['currentVolume'] as num).toDouble(),
      averageVolume: (json['averageVolume'] as num).toDouble(),
      volumeRatio: (json['volumeRatio'] as num).toDouble(),
      unusualVolume: json['unusualVolume'] as bool,
      patterns: (json['patterns'] as List<dynamic>?)
          ?.map((e) => VolumePattern.fromJson(e as Map<String, dynamic>))
          .toList(),
      institutionalActivity:
          (json['institutionalActivity'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      retailActivity: (json['retailActivity'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      newsCorrelation: (json['newsCorrelation'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$VolumeAnalysisImplToJson(
        _$VolumeAnalysisImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'currentVolume': instance.currentVolume,
      'averageVolume': instance.averageVolume,
      'volumeRatio': instance.volumeRatio,
      'unusualVolume': instance.unusualVolume,
      'patterns': instance.patterns,
      'institutionalActivity': instance.institutionalActivity,
      'retailActivity': instance.retailActivity,
      'newsCorrelation': instance.newsCorrelation,
    };

_$VolumePatternImpl _$$VolumePatternImplFromJson(Map<String, dynamic> json) =>
    _$VolumePatternImpl(
      type: json['type'] as String,
      confidence: (json['confidence'] as num).toDouble(),
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      description: json['description'] as String,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$VolumePatternImplToJson(_$VolumePatternImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'confidence': instance.confidence,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'description': instance.description,
      'metadata': instance.metadata,
    };

_$CorrelationAnalysisImpl _$$CorrelationAnalysisImplFromJson(
        Map<String, dynamic> json) =>
    _$CorrelationAnalysisImpl(
      symbol1: json['symbol1'] as String,
      symbol2: json['symbol2'] as String,
      correlation: (json['correlation'] as num).toDouble(),
      confidence: (json['confidence'] as num).toDouble(),
      crossAssetCorrelations:
          (json['crossAssetCorrelations'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      temporalCorrelations: (json['temporalCorrelations'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      sectorCorrelations:
          (json['sectorCorrelations'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$$CorrelationAnalysisImplToJson(
        _$CorrelationAnalysisImpl instance) =>
    <String, dynamic>{
      'symbol1': instance.symbol1,
      'symbol2': instance.symbol2,
      'correlation': instance.correlation,
      'confidence': instance.confidence,
      'crossAssetCorrelations': instance.crossAssetCorrelations,
      'temporalCorrelations': instance.temporalCorrelations,
      'sectorCorrelations': instance.sectorCorrelations,
    };

_$EarningsAnalysisImpl _$$EarningsAnalysisImplFromJson(
        Map<String, dynamic> json) =>
    _$EarningsAnalysisImpl(
      symbol: json['symbol'] as String,
      upcomingCalls: (json['upcomingCalls'] as List<dynamic>)
          .map((e) => EarningsCall.fromJson(e as Map<String, dynamic>))
          .toList(),
      recentCalls: (json['recentCalls'] as List<dynamic>)
          .map((e) => EarningsCall.fromJson(e as Map<String, dynamic>))
          .toList(),
      historicalAnalysis: json['historicalAnalysis'] as Map<String, dynamic>?,
      analystEstimates: json['analystEstimates'] as Map<String, dynamic>?,
      surpriseAnalysis: json['surpriseAnalysis'] as Map<String, dynamic>?,
      guidanceAnalysis: json['guidanceAnalysis'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$EarningsAnalysisImplToJson(
        _$EarningsAnalysisImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'upcomingCalls': instance.upcomingCalls,
      'recentCalls': instance.recentCalls,
      'historicalAnalysis': instance.historicalAnalysis,
      'analystEstimates': instance.analystEstimates,
      'surpriseAnalysis': instance.surpriseAnalysis,
      'guidanceAnalysis': instance.guidanceAnalysis,
    };

_$RedditFinancialPostImpl _$$RedditFinancialPostImplFromJson(
        Map<String, dynamic> json) =>
    _$RedditFinancialPostImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      author: json['author'] as String,
      score: (json['score'] as num).toInt(),
      comments: (json['comments'] as num).toInt(),
      timestamp: DateTime.parse(json['timestamp'] as String),
      subreddit: json['subreddit'] as String,
      mentionedStocks: (json['mentionedStocks'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      sentiment: (json['sentiment'] as num).toDouble(),
      credibility: (json['credibility'] as num).toDouble(),
      impact: (json['impact'] as num).toDouble(),
    );

Map<String, dynamic> _$$RedditFinancialPostImplToJson(
        _$RedditFinancialPostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'author': instance.author,
      'score': instance.score,
      'comments': instance.comments,
      'timestamp': instance.timestamp.toIso8601String(),
      'subreddit': instance.subreddit,
      'mentionedStocks': instance.mentionedStocks,
      'sentiment': instance.sentiment,
      'credibility': instance.credibility,
      'impact': instance.impact,
    };

_$SocialSentimentImpl _$$SocialSentimentImplFromJson(
        Map<String, dynamic> json) =>
    _$SocialSentimentImpl(
      overallSentiment: (json['overallSentiment'] as num).toDouble(),
      stockSentiment: (json['stockSentiment'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      sentimentTrends: (json['sentimentTrends'] as List<dynamic>)
          .map((e) => SentimentTrend.fromJson(e as Map<String, dynamic>))
          .toList(),
      sentimentDistribution:
          (json['sentimentDistribution'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      credibilityWeightedSentiment:
          (json['credibilityWeightedSentiment'] as num).toDouble(),
      sentimentMomentum: (json['sentimentMomentum'] as num).toDouble(),
    );

Map<String, dynamic> _$$SocialSentimentImplToJson(
        _$SocialSentimentImpl instance) =>
    <String, dynamic>{
      'overallSentiment': instance.overallSentiment,
      'stockSentiment': instance.stockSentiment,
      'sentimentTrends': instance.sentimentTrends,
      'sentimentDistribution': instance.sentimentDistribution,
      'credibilityWeightedSentiment': instance.credibilityWeightedSentiment,
      'sentimentMomentum': instance.sentimentMomentum,
    };

_$SentimentTrendImpl _$$SentimentTrendImplFromJson(Map<String, dynamic> json) =>
    _$SentimentTrendImpl(
      date: DateTime.parse(json['date'] as String),
      sentiment: (json['sentiment'] as num).toDouble(),
      volume: (json['volume'] as num).toDouble(),
      source: json['source'] as String?,
    );

Map<String, dynamic> _$$SentimentTrendImplToJson(
        _$SentimentTrendImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'sentiment': instance.sentiment,
      'volume': instance.volume,
      'source': instance.source,
    };

_$MarketImpactImpl _$$MarketImpactImplFromJson(Map<String, dynamic> json) =>
    _$MarketImpactImpl(
      directImpact:
          DirectImpact.fromJson(json['directImpact'] as Map<String, dynamic>),
      sectorImpact: (json['sectorImpact'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      marketImpact: (json['marketImpact'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      temporalImpact: (json['temporalImpact'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      cascadingEffects: (json['cascadingEffects'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      recoveryPatterns: (json['recoveryPatterns'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$$MarketImpactImplToJson(_$MarketImpactImpl instance) =>
    <String, dynamic>{
      'directImpact': instance.directImpact,
      'sectorImpact': instance.sectorImpact,
      'marketImpact': instance.marketImpact,
      'temporalImpact': instance.temporalImpact,
      'cascadingEffects': instance.cascadingEffects,
      'recoveryPatterns': instance.recoveryPatterns,
    };

_$DirectImpactImpl _$$DirectImpactImplFromJson(Map<String, dynamic> json) =>
    _$DirectImpactImpl(
      stockImpacts: (json['stockImpacts'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, StockImpact.fromJson(e as Map<String, dynamic>)),
      ),
      averageImpact: (json['averageImpact'] as num).toDouble(),
      impactDistribution:
          (json['impactDistribution'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$$DirectImpactImplToJson(_$DirectImpactImpl instance) =>
    <String, dynamic>{
      'stockImpacts': instance.stockImpacts,
      'averageImpact': instance.averageImpact,
      'impactDistribution': instance.impactDistribution,
    };

_$StockImpactImpl _$$StockImpactImplFromJson(Map<String, dynamic> json) =>
    _$StockImpactImpl(
      symbol: json['symbol'] as String,
      priceImpact: (json['priceImpact'] as num).toDouble(),
      volumeImpact: (json['volumeImpact'] as num).toDouble(),
      volatilityImpact: (json['volatilityImpact'] as num).toDouble(),
      impactTime: DateTime.parse(json['impactTime'] as String),
      recoveryTime:
          Duration(microseconds: (json['recoveryTime'] as num).toInt()),
    );

Map<String, dynamic> _$$StockImpactImplToJson(_$StockImpactImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'priceImpact': instance.priceImpact,
      'volumeImpact': instance.volumeImpact,
      'volatilityImpact': instance.volatilityImpact,
      'impactTime': instance.impactTime.toIso8601String(),
      'recoveryTime': instance.recoveryTime.inMicroseconds,
    };
