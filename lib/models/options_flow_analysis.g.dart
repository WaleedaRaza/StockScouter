// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'options_flow_analysis.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OptionsFlowAnalysisImpl _$$OptionsFlowAnalysisImplFromJson(
        Map<String, dynamic> json) =>
    _$OptionsFlowAnalysisImpl(
      unusualActivity: (json['unusualActivity'] as List<dynamic>)
          .map((e) => OptionsContract.fromJson(e as Map<String, dynamic>))
          .toList(),
      institutionalFlow: (json['institutionalFlow'] as List<dynamic>)
          .map((e) => OptionsContract.fromJson(e as Map<String, dynamic>))
          .toList(),
      sentiment:
          OptionsSentiment.fromJson(json['sentiment'] as Map<String, dynamic>),
      gammaExposure:
          GammaExposure.fromJson(json['gammaExposure'] as Map<String, dynamic>),
      putCallRatio:
          PutCallRatio.fromJson(json['putCallRatio'] as Map<String, dynamic>),
      patterns: (json['patterns'] as List<dynamic>)
          .map((e) => FlowPattern.fromJson(e as Map<String, dynamic>))
          .toList(),
      strikeAnalysis: (json['strikeAnalysis'] as List<dynamic>)
          .map((e) => StrikeAnalysis.fromJson(e as Map<String, dynamic>))
          .toList(),
      insights: (json['insights'] as List<dynamic>)
          .map((e) => OptionsInsight.fromJson(e as Map<String, dynamic>))
          .toList(),
      recommendations: (json['recommendations'] as List<dynamic>)
          .map((e) => OptionsRecommendation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OptionsFlowAnalysisImplToJson(
        _$OptionsFlowAnalysisImpl instance) =>
    <String, dynamic>{
      'unusualActivity': instance.unusualActivity,
      'institutionalFlow': instance.institutionalFlow,
      'sentiment': instance.sentiment,
      'gammaExposure': instance.gammaExposure,
      'putCallRatio': instance.putCallRatio,
      'patterns': instance.patterns,
      'strikeAnalysis': instance.strikeAnalysis,
      'insights': instance.insights,
      'recommendations': instance.recommendations,
    };

_$OptionsContractImpl _$$OptionsContractImplFromJson(
        Map<String, dynamic> json) =>
    _$OptionsContractImpl(
      symbol: json['symbol'] as String,
      strike: (json['strike'] as num).toDouble(),
      expiration: DateTime.parse(json['expiration'] as String),
      type: $enumDecode(_$OptionsTypeEnumMap, json['type']),
      lastPrice: (json['lastPrice'] as num).toDouble(),
      volume: (json['volume'] as num).toInt(),
      openInterest: (json['openInterest'] as num).toInt(),
      impliedVolatility: (json['impliedVolatility'] as num).toDouble(),
      delta: (json['delta'] as num).toDouble(),
      gamma: (json['gamma'] as num).toDouble(),
      theta: (json['theta'] as num).toDouble(),
      vega: (json['vega'] as num).toDouble(),
      timestamp: DateTime.parse(json['timestamp'] as String),
      priceChange: (json['priceChange'] as num).toDouble(),
      volumeChange: (json['volumeChange'] as num).toDouble(),
      description: json['description'] as String,
    );

Map<String, dynamic> _$$OptionsContractImplToJson(
        _$OptionsContractImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'strike': instance.strike,
      'expiration': instance.expiration.toIso8601String(),
      'type': _$OptionsTypeEnumMap[instance.type]!,
      'lastPrice': instance.lastPrice,
      'volume': instance.volume,
      'openInterest': instance.openInterest,
      'impliedVolatility': instance.impliedVolatility,
      'delta': instance.delta,
      'gamma': instance.gamma,
      'theta': instance.theta,
      'vega': instance.vega,
      'timestamp': instance.timestamp.toIso8601String(),
      'priceChange': instance.priceChange,
      'volumeChange': instance.volumeChange,
      'description': instance.description,
    };

const _$OptionsTypeEnumMap = {
  OptionsType.call: 'call',
  OptionsType.put: 'put',
};

_$OptionsSentimentImpl _$$OptionsSentimentImplFromJson(
        Map<String, dynamic> json) =>
    _$OptionsSentimentImpl(
      overallSentiment: (json['overallSentiment'] as num).toDouble(),
      callSentiment: (json['callSentiment'] as num).toDouble(),
      putSentiment: (json['putSentiment'] as num).toDouble(),
      institutionalSentiment:
          (json['institutionalSentiment'] as num).toDouble(),
      retailSentiment: (json['retailSentiment'] as num).toDouble(),
      bullishSignals: (json['bullishSignals'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      bearishSignals: (json['bearishSignals'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      summary: json['summary'] as String,
    );

Map<String, dynamic> _$$OptionsSentimentImplToJson(
        _$OptionsSentimentImpl instance) =>
    <String, dynamic>{
      'overallSentiment': instance.overallSentiment,
      'callSentiment': instance.callSentiment,
      'putSentiment': instance.putSentiment,
      'institutionalSentiment': instance.institutionalSentiment,
      'retailSentiment': instance.retailSentiment,
      'bullishSignals': instance.bullishSignals,
      'bearishSignals': instance.bearishSignals,
      'summary': instance.summary,
    };

_$GammaExposureImpl _$$GammaExposureImplFromJson(Map<String, dynamic> json) =>
    _$GammaExposureImpl(
      totalGamma: (json['totalGamma'] as num).toDouble(),
      callGamma: (json['callGamma'] as num).toDouble(),
      putGamma: (json['putGamma'] as num).toDouble(),
      netGamma: (json['netGamma'] as num).toDouble(),
      gammaByStrike: (json['gammaByStrike'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      gammaSpikes: (json['gammaSpikes'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      analysis: json['analysis'] as String,
    );

Map<String, dynamic> _$$GammaExposureImplToJson(_$GammaExposureImpl instance) =>
    <String, dynamic>{
      'totalGamma': instance.totalGamma,
      'callGamma': instance.callGamma,
      'putGamma': instance.putGamma,
      'netGamma': instance.netGamma,
      'gammaByStrike': instance.gammaByStrike,
      'gammaSpikes': instance.gammaSpikes,
      'analysis': instance.analysis,
    };

_$PutCallRatioImpl _$$PutCallRatioImplFromJson(Map<String, dynamic> json) =>
    _$PutCallRatioImpl(
      ratio: (json['ratio'] as num).toDouble(),
      volumeRatio: (json['volumeRatio'] as num).toDouble(),
      openInterestRatio: (json['openInterestRatio'] as num).toDouble(),
      historicalAverage: (json['historicalAverage'] as num).toDouble(),
      interpretation: json['interpretation'] as String,
      signal: json['signal'] as String,
    );

Map<String, dynamic> _$$PutCallRatioImplToJson(_$PutCallRatioImpl instance) =>
    <String, dynamic>{
      'ratio': instance.ratio,
      'volumeRatio': instance.volumeRatio,
      'openInterestRatio': instance.openInterestRatio,
      'historicalAverage': instance.historicalAverage,
      'interpretation': instance.interpretation,
      'signal': instance.signal,
    };

_$FlowPatternImpl _$$FlowPatternImplFromJson(Map<String, dynamic> json) =>
    _$FlowPatternImpl(
      type: $enumDecode(_$PatternTypeEnumMap, json['type']),
      strength: (json['strength'] as num).toDouble(),
      timestamp: DateTime.parse(json['timestamp'] as String),
      contracts: (json['contracts'] as List<dynamic>)
          .map((e) => OptionsContract.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String,
      confidence: (json['confidence'] as num).toDouble(),
    );

Map<String, dynamic> _$$FlowPatternImplToJson(_$FlowPatternImpl instance) =>
    <String, dynamic>{
      'type': _$PatternTypeEnumMap[instance.type]!,
      'strength': instance.strength,
      'timestamp': instance.timestamp.toIso8601String(),
      'contracts': instance.contracts,
      'description': instance.description,
      'confidence': instance.confidence,
    };

const _$PatternTypeEnumMap = {
  PatternType.sweep: 'sweep',
  PatternType.block: 'block',
  PatternType.unusual: 'unusual',
  PatternType.gamma: 'gamma',
  PatternType.hedge: 'hedge',
};

_$StrikeAnalysisImpl _$$StrikeAnalysisImplFromJson(Map<String, dynamic> json) =>
    _$StrikeAnalysisImpl(
      strike: (json['strike'] as num).toDouble(),
      volume: (json['volume'] as num).toDouble(),
      openInterest: (json['openInterest'] as num).toDouble(),
      impliedVolatility: (json['impliedVolatility'] as num).toDouble(),
      delta: (json['delta'] as num).toDouble(),
      gamma: (json['gamma'] as num).toDouble(),
      analysis: json['analysis'] as String,
      significance: (json['significance'] as num).toDouble(),
    );

Map<String, dynamic> _$$StrikeAnalysisImplToJson(
        _$StrikeAnalysisImpl instance) =>
    <String, dynamic>{
      'strike': instance.strike,
      'volume': instance.volume,
      'openInterest': instance.openInterest,
      'impliedVolatility': instance.impliedVolatility,
      'delta': instance.delta,
      'gamma': instance.gamma,
      'analysis': instance.analysis,
      'significance': instance.significance,
    };

_$OptionsInsightImpl _$$OptionsInsightImplFromJson(Map<String, dynamic> json) =>
    _$OptionsInsightImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      type: $enumDecode(_$InsightTypeEnumMap, json['type']),
      confidence: (json['confidence'] as num).toDouble(),
      timestamp: DateTime.parse(json['timestamp'] as String),
      evidence:
          (json['evidence'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$OptionsInsightImplToJson(
        _$OptionsInsightImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'type': _$InsightTypeEnumMap[instance.type]!,
      'confidence': instance.confidence,
      'timestamp': instance.timestamp.toIso8601String(),
      'evidence': instance.evidence,
    };

const _$InsightTypeEnumMap = {
  InsightType.bullish: 'bullish',
  InsightType.bearish: 'bearish',
  InsightType.neutral: 'neutral',
  InsightType.volatility: 'volatility',
  InsightType.hedging: 'hedging',
};

_$OptionsRecommendationImpl _$$OptionsRecommendationImplFromJson(
        Map<String, dynamic> json) =>
    _$OptionsRecommendationImpl(
      action: json['action'] as String,
      reasoning: json['reasoning'] as String,
      confidence: (json['confidence'] as num).toDouble(),
      timestamp: DateTime.parse(json['timestamp'] as String),
      risks: (json['risks'] as List<dynamic>).map((e) => e as String).toList(),
      benefits:
          (json['benefits'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$OptionsRecommendationImplToJson(
        _$OptionsRecommendationImpl instance) =>
    <String, dynamic>{
      'action': instance.action,
      'reasoning': instance.reasoning,
      'confidence': instance.confidence,
      'timestamp': instance.timestamp.toIso8601String(),
      'risks': instance.risks,
      'benefits': instance.benefits,
    };
