// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StockImpl _$$StockImplFromJson(Map<String, dynamic> json) => _$StockImpl(
      symbol: json['symbol'] as String,
      name: json['name'] as String,
      sector: json['sector'] as String,
      industry: json['industry'] as String,
      currentPrice: (json['currentPrice'] as num).toDouble(),
      previousClose: (json['previousClose'] as num).toDouble(),
      change: (json['change'] as num).toDouble(),
      changePercent: (json['changePercent'] as num).toDouble(),
      open: (json['open'] as num).toDouble(),
      high: (json['high'] as num).toDouble(),
      low: (json['low'] as num).toDouble(),
      volume: (json['volume'] as num).toDouble(),
      avgVolume: (json['avgVolume'] as num).toDouble(),
      marketCap: (json['marketCap'] as num).toDouble(),
      peRatio: (json['peRatio'] as num).toDouble(),
      eps: (json['eps'] as num).toDouble(),
      dividendYield: (json['dividendYield'] as num).toDouble(),
      beta: (json['beta'] as num).toDouble(),
      fiftyTwoWeekHigh: (json['fiftyTwoWeekHigh'] as num).toDouble(),
      fiftyTwoWeekLow: (json['fiftyTwoWeekLow'] as num).toDouble(),
      fiftyDayAverage: (json['fiftyDayAverage'] as num).toDouble(),
      twoHundredDayAverage: (json['twoHundredDayAverage'] as num).toDouble(),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      priceHistory: (json['priceHistory'] as List<dynamic>)
          .map((e) => PricePoint.fromJson(e as Map<String, dynamic>))
          .toList(),
      volumeData: (json['volumeData'] as List<dynamic>)
          .map((e) => VolumeData.fromJson(e as Map<String, dynamic>))
          .toList(),
      technicalIndicators: TechnicalIndicators.fromJson(
          json['technicalIndicators'] as Map<String, dynamic>),
      sentimentData:
          SentimentData.fromJson(json['sentimentData'] as Map<String, dynamic>),
      relatedNews: (json['relatedNews'] as List<dynamic>)
          .map((e) => NewsArticle.fromJson(e as Map<String, dynamic>))
          .toList(),
      optionFlow: (json['optionFlow'] as List<dynamic>)
          .map((e) => OptionFlow.fromJson(e as Map<String, dynamic>))
          .toList(),
      supplyDemandZones: SupplyDemandZones.fromJson(
          json['supplyDemandZones'] as Map<String, dynamic>),
      elliottWaveData: ElliottWaveData.fromJson(
          json['elliottWaveData'] as Map<String, dynamic>),
      fibonacciLevels: FibonacciLevels.fromJson(
          json['fibonacciLevels'] as Map<String, dynamic>),
      patternRecognition: PatternRecognition.fromJson(
          json['patternRecognition'] as Map<String, dynamic>),
      institutionalActivity: InstitutionalActivity.fromJson(
          json['institutionalActivity'] as Map<String, dynamic>),
      relativeStrengthIndex: (json['relativeStrengthIndex'] as num).toDouble(),
      macd: (json['macd'] as num).toDouble(),
      macdSignal: (json['macdSignal'] as num).toDouble(),
      macdHistogram: (json['macdHistogram'] as num).toDouble(),
      bollingerUpper: (json['bollingerUpper'] as num).toDouble(),
      bollingerMiddle: (json['bollingerMiddle'] as num).toDouble(),
      bollingerLower: (json['bollingerLower'] as num).toDouble(),
      stochasticK: (json['stochasticK'] as num).toDouble(),
      stochasticD: (json['stochasticD'] as num).toDouble(),
      williamsR: (json['williamsR'] as num).toDouble(),
      atr: (json['atr'] as num).toDouble(),
      adx: (json['adx'] as num).toDouble(),
      obv: (json['obv'] as num).toDouble(),
      vwap: (json['vwap'] as num).toDouble(),
      pivotPoint: (json['pivotPoint'] as num).toDouble(),
      support1: (json['support1'] as num).toDouble(),
      support2: (json['support2'] as num).toDouble(),
      resistance1: (json['resistance1'] as num).toDouble(),
      resistance2: (json['resistance2'] as num).toDouble(),
      isWatched: json['isWatched'] as bool,
      userViews: (json['userViews'] as num).toInt(),
      lastViewed: DateTime.parse(json['lastViewed'] as String),
      userNotes:
          (json['userNotes'] as List<dynamic>).map((e) => e as String).toList(),
      userRating: (json['userRating'] as num).toDouble(),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$StockImplToJson(_$StockImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'sector': instance.sector,
      'industry': instance.industry,
      'currentPrice': instance.currentPrice,
      'previousClose': instance.previousClose,
      'change': instance.change,
      'changePercent': instance.changePercent,
      'open': instance.open,
      'high': instance.high,
      'low': instance.low,
      'volume': instance.volume,
      'avgVolume': instance.avgVolume,
      'marketCap': instance.marketCap,
      'peRatio': instance.peRatio,
      'eps': instance.eps,
      'dividendYield': instance.dividendYield,
      'beta': instance.beta,
      'fiftyTwoWeekHigh': instance.fiftyTwoWeekHigh,
      'fiftyTwoWeekLow': instance.fiftyTwoWeekLow,
      'fiftyDayAverage': instance.fiftyDayAverage,
      'twoHundredDayAverage': instance.twoHundredDayAverage,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'priceHistory': instance.priceHistory,
      'volumeData': instance.volumeData,
      'technicalIndicators': instance.technicalIndicators,
      'sentimentData': instance.sentimentData,
      'relatedNews': instance.relatedNews,
      'optionFlow': instance.optionFlow,
      'supplyDemandZones': instance.supplyDemandZones,
      'elliottWaveData': instance.elliottWaveData,
      'fibonacciLevels': instance.fibonacciLevels,
      'patternRecognition': instance.patternRecognition,
      'institutionalActivity': instance.institutionalActivity,
      'relativeStrengthIndex': instance.relativeStrengthIndex,
      'macd': instance.macd,
      'macdSignal': instance.macdSignal,
      'macdHistogram': instance.macdHistogram,
      'bollingerUpper': instance.bollingerUpper,
      'bollingerMiddle': instance.bollingerMiddle,
      'bollingerLower': instance.bollingerLower,
      'stochasticK': instance.stochasticK,
      'stochasticD': instance.stochasticD,
      'williamsR': instance.williamsR,
      'atr': instance.atr,
      'adx': instance.adx,
      'obv': instance.obv,
      'vwap': instance.vwap,
      'pivotPoint': instance.pivotPoint,
      'support1': instance.support1,
      'support2': instance.support2,
      'resistance1': instance.resistance1,
      'resistance2': instance.resistance2,
      'isWatched': instance.isWatched,
      'userViews': instance.userViews,
      'lastViewed': instance.lastViewed.toIso8601String(),
      'userNotes': instance.userNotes,
      'userRating': instance.userRating,
      'tags': instance.tags,
    };

_$PricePointImpl _$$PricePointImplFromJson(Map<String, dynamic> json) =>
    _$PricePointImpl(
      timestamp: DateTime.parse(json['timestamp'] as String),
      open: (json['open'] as num).toDouble(),
      high: (json['high'] as num).toDouble(),
      low: (json['low'] as num).toDouble(),
      close: (json['close'] as num).toDouble(),
      volume: (json['volume'] as num).toDouble(),
    );

Map<String, dynamic> _$$PricePointImplToJson(_$PricePointImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp.toIso8601String(),
      'open': instance.open,
      'high': instance.high,
      'low': instance.low,
      'close': instance.close,
      'volume': instance.volume,
    };

_$VolumeDataImpl _$$VolumeDataImplFromJson(Map<String, dynamic> json) =>
    _$VolumeDataImpl(
      timestamp: DateTime.parse(json['timestamp'] as String),
      volume: (json['volume'] as num).toDouble(),
      avgVolume: (json['avgVolume'] as num).toDouble(),
      volumeRatio: (json['volumeRatio'] as num).toDouble(),
      tradeTypes: (json['tradeTypes'] as List<dynamic>)
          .map((e) => TradeType.fromJson(e as Map<String, dynamic>))
          .toList(),
      largeTradeVolume: (json['largeTradeVolume'] as num).toDouble(),
      institutionalVolume: (json['institutionalVolume'] as num).toDouble(),
    );

Map<String, dynamic> _$$VolumeDataImplToJson(_$VolumeDataImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp.toIso8601String(),
      'volume': instance.volume,
      'avgVolume': instance.avgVolume,
      'volumeRatio': instance.volumeRatio,
      'tradeTypes': instance.tradeTypes,
      'largeTradeVolume': instance.largeTradeVolume,
      'institutionalVolume': instance.institutionalVolume,
    };

_$TradeTypeImpl _$$TradeTypeImplFromJson(Map<String, dynamic> json) =>
    _$TradeTypeImpl(
      type: json['type'] as String,
      volume: (json['volume'] as num).toDouble(),
      price: (json['price'] as num).toDouble(),
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$TradeTypeImplToJson(_$TradeTypeImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'volume': instance.volume,
      'price': instance.price,
      'timestamp': instance.timestamp.toIso8601String(),
    };

_$TechnicalIndicatorsImpl _$$TechnicalIndicatorsImplFromJson(
        Map<String, dynamic> json) =>
    _$TechnicalIndicatorsImpl(
      rsi: (json['rsi'] as num).toDouble(),
      macd: (json['macd'] as num).toDouble(),
      macdSignal: (json['macdSignal'] as num).toDouble(),
      macdHistogram: (json['macdHistogram'] as num).toDouble(),
      bollingerUpper: (json['bollingerUpper'] as num).toDouble(),
      bollingerMiddle: (json['bollingerMiddle'] as num).toDouble(),
      bollingerLower: (json['bollingerLower'] as num).toDouble(),
      stochasticK: (json['stochasticK'] as num).toDouble(),
      stochasticD: (json['stochasticD'] as num).toDouble(),
      williamsR: (json['williamsR'] as num).toDouble(),
      atr: (json['atr'] as num).toDouble(),
      adx: (json['adx'] as num).toDouble(),
      obv: (json['obv'] as num).toDouble(),
      vwap: (json['vwap'] as num).toDouble(),
    );

Map<String, dynamic> _$$TechnicalIndicatorsImplToJson(
        _$TechnicalIndicatorsImpl instance) =>
    <String, dynamic>{
      'rsi': instance.rsi,
      'macd': instance.macd,
      'macdSignal': instance.macdSignal,
      'macdHistogram': instance.macdHistogram,
      'bollingerUpper': instance.bollingerUpper,
      'bollingerMiddle': instance.bollingerMiddle,
      'bollingerLower': instance.bollingerLower,
      'stochasticK': instance.stochasticK,
      'stochasticD': instance.stochasticD,
      'williamsR': instance.williamsR,
      'atr': instance.atr,
      'adx': instance.adx,
      'obv': instance.obv,
      'vwap': instance.vwap,
    };

_$SentimentDataImpl _$$SentimentDataImplFromJson(Map<String, dynamic> json) =>
    _$SentimentDataImpl(
      overallSentiment: (json['overallSentiment'] as num).toDouble(),
      newsSentiment: (json['newsSentiment'] as num).toDouble(),
      socialSentiment: (json['socialSentiment'] as num).toDouble(),
      analystSentiment: (json['analystSentiment'] as num).toDouble(),
      bullishArticles: (json['bullishArticles'] as num).toInt(),
      bearishArticles: (json['bearishArticles'] as num).toInt(),
      neutralArticles: (json['neutralArticles'] as num).toInt(),
      sources: (json['sources'] as List<dynamic>)
          .map((e) => SentimentSource.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SentimentDataImplToJson(_$SentimentDataImpl instance) =>
    <String, dynamic>{
      'overallSentiment': instance.overallSentiment,
      'newsSentiment': instance.newsSentiment,
      'socialSentiment': instance.socialSentiment,
      'analystSentiment': instance.analystSentiment,
      'bullishArticles': instance.bullishArticles,
      'bearishArticles': instance.bearishArticles,
      'neutralArticles': instance.neutralArticles,
      'sources': instance.sources,
    };

_$SentimentSourceImpl _$$SentimentSourceImplFromJson(
        Map<String, dynamic> json) =>
    _$SentimentSourceImpl(
      source: json['source'] as String,
      sentiment: (json['sentiment'] as num).toDouble(),
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$SentimentSourceImplToJson(
        _$SentimentSourceImpl instance) =>
    <String, dynamic>{
      'source': instance.source,
      'sentiment': instance.sentiment,
      'timestamp': instance.timestamp.toIso8601String(),
    };

_$NewsArticleImpl _$$NewsArticleImplFromJson(Map<String, dynamic> json) =>
    _$NewsArticleImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      summary: json['summary'] as String,
      content: json['content'] as String,
      source: json['source'] as String,
      url: json['url'] as String,
      publishedAt: DateTime.parse(json['publishedAt'] as String),
      sentiment: (json['sentiment'] as num).toDouble(),
      mentionedStocks: (json['mentionedStocks'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      isRead: json['isRead'] as bool,
      readAt: json['readAt'] == null
          ? null
          : DateTime.parse(json['readAt'] as String),
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
      'sentiment': instance.sentiment,
      'mentionedStocks': instance.mentionedStocks,
      'tags': instance.tags,
      'isRead': instance.isRead,
      'readAt': instance.readAt?.toIso8601String(),
    };

_$OptionFlowImpl _$$OptionFlowImplFromJson(Map<String, dynamic> json) =>
    _$OptionFlowImpl(
      timestamp: DateTime.parse(json['timestamp'] as String),
      putVolume: (json['putVolume'] as num).toDouble(),
      callVolume: (json['callVolume'] as num).toDouble(),
      putCallRatio: (json['putCallRatio'] as num).toDouble(),
      unusualActivity: (json['unusualActivity'] as List<dynamic>)
          .map((e) => OptionTrade.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalVolume: (json['totalVolume'] as num).toDouble(),
    );

Map<String, dynamic> _$$OptionFlowImplToJson(_$OptionFlowImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp.toIso8601String(),
      'putVolume': instance.putVolume,
      'callVolume': instance.callVolume,
      'putCallRatio': instance.putCallRatio,
      'unusualActivity': instance.unusualActivity,
      'totalVolume': instance.totalVolume,
    };

_$OptionTradeImpl _$$OptionTradeImplFromJson(Map<String, dynamic> json) =>
    _$OptionTradeImpl(
      symbol: json['symbol'] as String,
      type: json['type'] as String,
      strike: (json['strike'] as num).toDouble(),
      expiration: DateTime.parse(json['expiration'] as String),
      volume: (json['volume'] as num).toDouble(),
      price: (json['price'] as num).toDouble(),
      trader: json['trader'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$OptionTradeImplToJson(_$OptionTradeImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'type': instance.type,
      'strike': instance.strike,
      'expiration': instance.expiration.toIso8601String(),
      'volume': instance.volume,
      'price': instance.price,
      'trader': instance.trader,
      'timestamp': instance.timestamp.toIso8601String(),
    };

_$SupplyDemandZonesImpl _$$SupplyDemandZonesImplFromJson(
        Map<String, dynamic> json) =>
    _$SupplyDemandZonesImpl(
      supplyZones: (json['supplyZones'] as List<dynamic>)
          .map((e) => Zone.fromJson(e as Map<String, dynamic>))
          .toList(),
      demandZones: (json['demandZones'] as List<dynamic>)
          .map((e) => Zone.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentPrice: (json['currentPrice'] as num).toDouble(),
    );

Map<String, dynamic> _$$SupplyDemandZonesImplToJson(
        _$SupplyDemandZonesImpl instance) =>
    <String, dynamic>{
      'supplyZones': instance.supplyZones,
      'demandZones': instance.demandZones,
      'currentPrice': instance.currentPrice,
    };

_$ZoneImpl _$$ZoneImplFromJson(Map<String, dynamic> json) => _$ZoneImpl(
      price: (json['price'] as num).toDouble(),
      strength: (json['strength'] as num).toDouble(),
      created: DateTime.parse(json['created'] as String),
      touches: (json['touches'] as num).toInt(),
      lastTouch: DateTime.parse(json['lastTouch'] as String),
    );

Map<String, dynamic> _$$ZoneImplToJson(_$ZoneImpl instance) =>
    <String, dynamic>{
      'price': instance.price,
      'strength': instance.strength,
      'created': instance.created.toIso8601String(),
      'touches': instance.touches,
      'lastTouch': instance.lastTouch.toIso8601String(),
    };

_$ElliottWaveDataImpl _$$ElliottWaveDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ElliottWaveDataImpl(
      currentWave: (json['currentWave'] as num).toInt(),
      wave1Start: (json['wave1Start'] as num).toDouble(),
      wave1End: (json['wave1End'] as num).toDouble(),
      wave2End: (json['wave2End'] as num).toDouble(),
      wave3End: (json['wave3End'] as num).toDouble(),
      wave4End: (json['wave4End'] as num).toDouble(),
      wave5End: (json['wave5End'] as num).toDouble(),
      analysisDate: DateTime.parse(json['analysisDate'] as String),
      confidence: (json['confidence'] as num).toDouble(),
    );

Map<String, dynamic> _$$ElliottWaveDataImplToJson(
        _$ElliottWaveDataImpl instance) =>
    <String, dynamic>{
      'currentWave': instance.currentWave,
      'wave1Start': instance.wave1Start,
      'wave1End': instance.wave1End,
      'wave2End': instance.wave2End,
      'wave3End': instance.wave3End,
      'wave4End': instance.wave4End,
      'wave5End': instance.wave5End,
      'analysisDate': instance.analysisDate.toIso8601String(),
      'confidence': instance.confidence,
    };

_$FibonacciLevelsImpl _$$FibonacciLevelsImplFromJson(
        Map<String, dynamic> json) =>
    _$FibonacciLevelsImpl(
      high: (json['high'] as num).toDouble(),
      low: (json['low'] as num).toDouble(),
      level236: (json['level236'] as num).toDouble(),
      level382: (json['level382'] as num).toDouble(),
      level500: (json['level500'] as num).toDouble(),
      level618: (json['level618'] as num).toDouble(),
      level786: (json['level786'] as num).toDouble(),
    );

Map<String, dynamic> _$$FibonacciLevelsImplToJson(
        _$FibonacciLevelsImpl instance) =>
    <String, dynamic>{
      'high': instance.high,
      'low': instance.low,
      'level236': instance.level236,
      'level382': instance.level382,
      'level500': instance.level500,
      'level618': instance.level618,
      'level786': instance.level786,
    };

_$PatternRecognitionImpl _$$PatternRecognitionImplFromJson(
        Map<String, dynamic> json) =>
    _$PatternRecognitionImpl(
      patterns: (json['patterns'] as List<dynamic>)
          .map((e) => Pattern.fromJson(e as Map<String, dynamic>))
          .toList(),
      confidence: (json['confidence'] as num).toDouble(),
      detectedAt: DateTime.parse(json['detectedAt'] as String),
    );

Map<String, dynamic> _$$PatternRecognitionImplToJson(
        _$PatternRecognitionImpl instance) =>
    <String, dynamic>{
      'patterns': instance.patterns,
      'confidence': instance.confidence,
      'detectedAt': instance.detectedAt.toIso8601String(),
    };

_$PatternImpl _$$PatternImplFromJson(Map<String, dynamic> json) =>
    _$PatternImpl(
      name: json['name'] as String,
      type: json['type'] as String,
      confidence: (json['confidence'] as num).toDouble(),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      targetPrice: (json['targetPrice'] as num).toDouble(),
      description: json['description'] as String,
    );

Map<String, dynamic> _$$PatternImplToJson(_$PatternImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'confidence': instance.confidence,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'targetPrice': instance.targetPrice,
      'description': instance.description,
    };

_$InstitutionalActivityImpl _$$InstitutionalActivityImplFromJson(
        Map<String, dynamic> json) =>
    _$InstitutionalActivityImpl(
      trades: (json['trades'] as List<dynamic>)
          .map((e) => InstitutionalTrade.fromJson(e as Map<String, dynamic>))
          .toList(),
      netFlow: (json['netFlow'] as num).toDouble(),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
    );

Map<String, dynamic> _$$InstitutionalActivityImplToJson(
        _$InstitutionalActivityImpl instance) =>
    <String, dynamic>{
      'trades': instance.trades,
      'netFlow': instance.netFlow,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
    };

_$InstitutionalTradeImpl _$$InstitutionalTradeImplFromJson(
        Map<String, dynamic> json) =>
    _$InstitutionalTradeImpl(
      institution: json['institution'] as String,
      action: json['action'] as String,
      shares: (json['shares'] as num).toDouble(),
      value: (json['value'] as num).toDouble(),
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$InstitutionalTradeImplToJson(
        _$InstitutionalTradeImpl instance) =>
    <String, dynamic>{
      'institution': instance.institution,
      'action': instance.action,
      'shares': instance.shares,
      'value': instance.value,
      'date': instance.date.toIso8601String(),
    };
