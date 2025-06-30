import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'stock_model.freezed.dart';
part 'stock_model.g.dart';

@freezed
class Stock with _$Stock {
  const factory Stock({
    required String symbol,
    required String name,
    required String sector,
    required String industry,
    required double currentPrice,
    required double previousClose,
    required double change,
    required double changePercent,
    required double open,
    required double high,
    required double low,
    required double volume,
    required double avgVolume,
    required double marketCap,
    required double peRatio,
    required double eps,
    required double dividendYield,
    required double beta,
    required double fiftyTwoWeekHigh,
    required double fiftyTwoWeekLow,
    required double fiftyDayAverage,
    required double twoHundredDayAverage,
    required DateTime lastUpdated,
    required List<PricePoint> priceHistory,
    required List<VolumeData> volumeData,
    required TechnicalIndicators technicalIndicators,
    required SentimentData sentimentData,
    required List<NewsArticle> relatedNews,
    required List<OptionFlow> optionFlow,
    required SupplyDemandZones supplyDemandZones,
    required ElliottWaveData elliottWaveData,
    required FibonacciLevels fibonacciLevels,
    required PatternRecognition patternRecognition,
    required InstitutionalActivity institutionalActivity,
    required double relativeStrengthIndex,
    required double macd,
    required double macdSignal,
    required double macdHistogram,
    required double bollingerUpper,
    required double bollingerMiddle,
    required double bollingerLower,
    required double stochasticK,
    required double stochasticD,
    required double williamsR,
    required double atr,
    required double adx,
    required double obv,
    required double vwap,
    required double pivotPoint,
    required double support1,
    required double support2,
    required double resistance1,
    required double resistance2,
    required bool isWatched,
    required int userViews,
    required DateTime lastViewed,
    required List<String> userNotes,
    required double userRating,
    required List<String> tags,
  }) = _Stock;

  factory Stock.fromJson(Map<String, dynamic> json) => _$StockFromJson(json);
}

@freezed
class PricePoint with _$PricePoint {
  const factory PricePoint({
    required DateTime timestamp,
    required double open,
    required double high,
    required double low,
    required double close,
    required double volume,
  }) = _PricePoint;

  factory PricePoint.fromJson(Map<String, dynamic> json) => _$PricePointFromJson(json);
}

@freezed
class VolumeData with _$VolumeData {
  const factory VolumeData({
    required DateTime timestamp,
    required double volume,
    required double avgVolume,
    required double volumeRatio,
    required List<TradeType> tradeTypes,
    required double largeTradeVolume,
    required double institutionalVolume,
  }) = _VolumeData;

  factory VolumeData.fromJson(Map<String, dynamic> json) => _$VolumeDataFromJson(json);
}

@freezed
class TradeType with _$TradeType {
  const factory TradeType({
    required String type,
    required double volume,
    required double price,
    required DateTime timestamp,
  }) = _TradeType;

  factory TradeType.fromJson(Map<String, dynamic> json) => _$TradeTypeFromJson(json);
}

@freezed
class TechnicalIndicators with _$TechnicalIndicators {
  const factory TechnicalIndicators({
    required double rsi,
    required double macd,
    required double macdSignal,
    required double macdHistogram,
    required double bollingerUpper,
    required double bollingerMiddle,
    required double bollingerLower,
    required double stochasticK,
    required double stochasticD,
    required double williamsR,
    required double atr,
    required double adx,
    required double obv,
    required double vwap,
  }) = _TechnicalIndicators;

  factory TechnicalIndicators.fromJson(Map<String, dynamic> json) => _$TechnicalIndicatorsFromJson(json);
}

@freezed
class SentimentData with _$SentimentData {
  const factory SentimentData({
    required double overallSentiment,
    required double newsSentiment,
    required double socialSentiment,
    required double analystSentiment,
    required int bullishArticles,
    required int bearishArticles,
    required int neutralArticles,
    required List<SentimentSource> sources,
  }) = _SentimentData;

  factory SentimentData.fromJson(Map<String, dynamic> json) => _$SentimentDataFromJson(json);
}

@freezed
class SentimentSource with _$SentimentSource {
  const factory SentimentSource({
    required String source,
    required double sentiment,
    required DateTime timestamp,
  }) = _SentimentSource;

  factory SentimentSource.fromJson(Map<String, dynamic> json) => _$SentimentSourceFromJson(json);
}

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
    required double sentiment,
    required List<String> mentionedStocks,
    required List<String> tags,
    required bool isRead,
    required DateTime? readAt,
  }) = _NewsArticle;

  factory NewsArticle.fromJson(Map<String, dynamic> json) => _$NewsArticleFromJson(json);
}

@freezed
class OptionFlow with _$OptionFlow {
  const factory OptionFlow({
    required DateTime timestamp,
    required double putVolume,
    required double callVolume,
    required double putCallRatio,
    required List<OptionTrade> unusualActivity,
    required double totalVolume,
  }) = _OptionFlow;

  factory OptionFlow.fromJson(Map<String, dynamic> json) => _$OptionFlowFromJson(json);
}

@freezed
class OptionTrade with _$OptionTrade {
  const factory OptionTrade({
    required String symbol,
    required String type,
    required double strike,
    required DateTime expiration,
    required double volume,
    required double price,
    required String trader,
    required DateTime timestamp,
  }) = _OptionTrade;

  factory OptionTrade.fromJson(Map<String, dynamic> json) => _$OptionTradeFromJson(json);
}

@freezed
class SupplyDemandZones with _$SupplyDemandZones {
  const factory SupplyDemandZones({
    required List<Zone> supplyZones,
    required List<Zone> demandZones,
    required double currentPrice,
  }) = _SupplyDemandZones;

  factory SupplyDemandZones.fromJson(Map<String, dynamic> json) => _$SupplyDemandZonesFromJson(json);
}

@freezed
class Zone with _$Zone {
  const factory Zone({
    required double price,
    required double strength,
    required DateTime created,
    required int touches,
    required DateTime lastTouch,
  }) = _Zone;

  factory Zone.fromJson(Map<String, dynamic> json) => _$ZoneFromJson(json);
}

@freezed
class ElliottWaveData with _$ElliottWaveData {
  const factory ElliottWaveData({
    required int currentWave,
    required double wave1Start,
    required double wave1End,
    required double wave2End,
    required double wave3End,
    required double wave4End,
    required double wave5End,
    required DateTime analysisDate,
    required double confidence,
  }) = _ElliottWaveData;

  factory ElliottWaveData.fromJson(Map<String, dynamic> json) => _$ElliottWaveDataFromJson(json);
}

@freezed
class FibonacciLevels with _$FibonacciLevels {
  const factory FibonacciLevels({
    required double high,
    required double low,
    required double level236,
    required double level382,
    required double level500,
    required double level618,
    required double level786,
  }) = _FibonacciLevels;

  factory FibonacciLevels.fromJson(Map<String, dynamic> json) => _$FibonacciLevelsFromJson(json);
}

@freezed
class PatternRecognition with _$PatternRecognition {
  const factory PatternRecognition({
    required List<Pattern> patterns,
    required double confidence,
    required DateTime detectedAt,
  }) = _PatternRecognition;

  factory PatternRecognition.fromJson(Map<String, dynamic> json) => _$PatternRecognitionFromJson(json);
}

@freezed
class Pattern with _$Pattern {
  const factory Pattern({
    required String name,
    required String type,
    required double confidence,
    required DateTime startDate,
    required DateTime endDate,
    required double targetPrice,
    required String description,
  }) = _Pattern;

  factory Pattern.fromJson(Map<String, dynamic> json) => _$PatternFromJson(json);
}

@freezed
class InstitutionalActivity with _$InstitutionalActivity {
  const factory InstitutionalActivity({
    required List<InstitutionalTrade> trades,
    required double netFlow,
    required DateTime lastUpdated,
  }) = _InstitutionalActivity;

  factory InstitutionalActivity.fromJson(Map<String, dynamic> json) => _$InstitutionalActivityFromJson(json);
}

@freezed
class InstitutionalTrade with _$InstitutionalTrade {
  const factory InstitutionalTrade({
    required String institution,
    required String action,
    required double shares,
    required double value,
    required DateTime date,
  }) = _InstitutionalTrade;

  factory InstitutionalTrade.fromJson(Map<String, dynamic> json) => _$InstitutionalTradeFromJson(json);
} 