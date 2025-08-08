// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Stock _$StockFromJson(Map<String, dynamic> json) {
  return _Stock.fromJson(json);
}

/// @nodoc
mixin _$Stock {
  String get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get sector => throw _privateConstructorUsedError;
  String get industry => throw _privateConstructorUsedError;
  double get currentPrice => throw _privateConstructorUsedError;
  double get previousClose => throw _privateConstructorUsedError;
  double get change => throw _privateConstructorUsedError;
  double get changePercent => throw _privateConstructorUsedError;
  double get open => throw _privateConstructorUsedError;
  double get high => throw _privateConstructorUsedError;
  double get low => throw _privateConstructorUsedError;
  double get volume => throw _privateConstructorUsedError;
  double get avgVolume => throw _privateConstructorUsedError;
  double get marketCap => throw _privateConstructorUsedError;
  double get peRatio => throw _privateConstructorUsedError;
  double get eps => throw _privateConstructorUsedError;
  double get dividendYield => throw _privateConstructorUsedError;
  double get beta => throw _privateConstructorUsedError;
  double get fiftyTwoWeekHigh => throw _privateConstructorUsedError;
  double get fiftyTwoWeekLow => throw _privateConstructorUsedError;
  double get fiftyDayAverage => throw _privateConstructorUsedError;
  double get twoHundredDayAverage => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  List<PricePoint> get priceHistory => throw _privateConstructorUsedError;
  List<VolumeData> get volumeData => throw _privateConstructorUsedError;
  TechnicalIndicators get technicalIndicators =>
      throw _privateConstructorUsedError;
  SentimentData get sentimentData => throw _privateConstructorUsedError;
  List<NewsArticle> get relatedNews => throw _privateConstructorUsedError;
  List<OptionFlow> get optionFlow => throw _privateConstructorUsedError;
  SupplyDemandZones get supplyDemandZones => throw _privateConstructorUsedError;
  ElliottWaveData get elliottWaveData => throw _privateConstructorUsedError;
  FibonacciLevels get fibonacciLevels => throw _privateConstructorUsedError;
  PatternRecognition get patternRecognition =>
      throw _privateConstructorUsedError;
  InstitutionalActivity get institutionalActivity =>
      throw _privateConstructorUsedError;
  double get relativeStrengthIndex => throw _privateConstructorUsedError;
  double get macd => throw _privateConstructorUsedError;
  double get macdSignal => throw _privateConstructorUsedError;
  double get macdHistogram => throw _privateConstructorUsedError;
  double get bollingerUpper => throw _privateConstructorUsedError;
  double get bollingerMiddle => throw _privateConstructorUsedError;
  double get bollingerLower => throw _privateConstructorUsedError;
  double get stochasticK => throw _privateConstructorUsedError;
  double get stochasticD => throw _privateConstructorUsedError;
  double get williamsR => throw _privateConstructorUsedError;
  double get atr => throw _privateConstructorUsedError;
  double get adx => throw _privateConstructorUsedError;
  double get obv => throw _privateConstructorUsedError;
  double get vwap => throw _privateConstructorUsedError;
  double get pivotPoint => throw _privateConstructorUsedError;
  double get support1 => throw _privateConstructorUsedError;
  double get support2 => throw _privateConstructorUsedError;
  double get resistance1 => throw _privateConstructorUsedError;
  double get resistance2 => throw _privateConstructorUsedError;
  bool get isWatched => throw _privateConstructorUsedError;
  int get userViews => throw _privateConstructorUsedError;
  DateTime get lastViewed => throw _privateConstructorUsedError;
  List<String> get userNotes => throw _privateConstructorUsedError;
  double get userRating => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;

  /// Serializes this Stock to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Stock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StockCopyWith<Stock> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockCopyWith<$Res> {
  factory $StockCopyWith(Stock value, $Res Function(Stock) then) =
      _$StockCopyWithImpl<$Res, Stock>;
  @useResult
  $Res call(
      {String symbol,
      String name,
      String sector,
      String industry,
      double currentPrice,
      double previousClose,
      double change,
      double changePercent,
      double open,
      double high,
      double low,
      double volume,
      double avgVolume,
      double marketCap,
      double peRatio,
      double eps,
      double dividendYield,
      double beta,
      double fiftyTwoWeekHigh,
      double fiftyTwoWeekLow,
      double fiftyDayAverage,
      double twoHundredDayAverage,
      DateTime lastUpdated,
      List<PricePoint> priceHistory,
      List<VolumeData> volumeData,
      TechnicalIndicators technicalIndicators,
      SentimentData sentimentData,
      List<NewsArticle> relatedNews,
      List<OptionFlow> optionFlow,
      SupplyDemandZones supplyDemandZones,
      ElliottWaveData elliottWaveData,
      FibonacciLevels fibonacciLevels,
      PatternRecognition patternRecognition,
      InstitutionalActivity institutionalActivity,
      double relativeStrengthIndex,
      double macd,
      double macdSignal,
      double macdHistogram,
      double bollingerUpper,
      double bollingerMiddle,
      double bollingerLower,
      double stochasticK,
      double stochasticD,
      double williamsR,
      double atr,
      double adx,
      double obv,
      double vwap,
      double pivotPoint,
      double support1,
      double support2,
      double resistance1,
      double resistance2,
      bool isWatched,
      int userViews,
      DateTime lastViewed,
      List<String> userNotes,
      double userRating,
      List<String> tags});

  $TechnicalIndicatorsCopyWith<$Res> get technicalIndicators;
  $SentimentDataCopyWith<$Res> get sentimentData;
  $SupplyDemandZonesCopyWith<$Res> get supplyDemandZones;
  $ElliottWaveDataCopyWith<$Res> get elliottWaveData;
  $FibonacciLevelsCopyWith<$Res> get fibonacciLevels;
  $PatternRecognitionCopyWith<$Res> get patternRecognition;
  $InstitutionalActivityCopyWith<$Res> get institutionalActivity;
}

/// @nodoc
class _$StockCopyWithImpl<$Res, $Val extends Stock>
    implements $StockCopyWith<$Res> {
  _$StockCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Stock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? sector = null,
    Object? industry = null,
    Object? currentPrice = null,
    Object? previousClose = null,
    Object? change = null,
    Object? changePercent = null,
    Object? open = null,
    Object? high = null,
    Object? low = null,
    Object? volume = null,
    Object? avgVolume = null,
    Object? marketCap = null,
    Object? peRatio = null,
    Object? eps = null,
    Object? dividendYield = null,
    Object? beta = null,
    Object? fiftyTwoWeekHigh = null,
    Object? fiftyTwoWeekLow = null,
    Object? fiftyDayAverage = null,
    Object? twoHundredDayAverage = null,
    Object? lastUpdated = null,
    Object? priceHistory = null,
    Object? volumeData = null,
    Object? technicalIndicators = null,
    Object? sentimentData = null,
    Object? relatedNews = null,
    Object? optionFlow = null,
    Object? supplyDemandZones = null,
    Object? elliottWaveData = null,
    Object? fibonacciLevels = null,
    Object? patternRecognition = null,
    Object? institutionalActivity = null,
    Object? relativeStrengthIndex = null,
    Object? macd = null,
    Object? macdSignal = null,
    Object? macdHistogram = null,
    Object? bollingerUpper = null,
    Object? bollingerMiddle = null,
    Object? bollingerLower = null,
    Object? stochasticK = null,
    Object? stochasticD = null,
    Object? williamsR = null,
    Object? atr = null,
    Object? adx = null,
    Object? obv = null,
    Object? vwap = null,
    Object? pivotPoint = null,
    Object? support1 = null,
    Object? support2 = null,
    Object? resistance1 = null,
    Object? resistance2 = null,
    Object? isWatched = null,
    Object? userViews = null,
    Object? lastViewed = null,
    Object? userNotes = null,
    Object? userRating = null,
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sector: null == sector
          ? _value.sector
          : sector // ignore: cast_nullable_to_non_nullable
              as String,
      industry: null == industry
          ? _value.industry
          : industry // ignore: cast_nullable_to_non_nullable
              as String,
      currentPrice: null == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
      previousClose: null == previousClose
          ? _value.previousClose
          : previousClose // ignore: cast_nullable_to_non_nullable
              as double,
      change: null == change
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as double,
      changePercent: null == changePercent
          ? _value.changePercent
          : changePercent // ignore: cast_nullable_to_non_nullable
              as double,
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as double,
      high: null == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as double,
      low: null == low
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as double,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      avgVolume: null == avgVolume
          ? _value.avgVolume
          : avgVolume // ignore: cast_nullable_to_non_nullable
              as double,
      marketCap: null == marketCap
          ? _value.marketCap
          : marketCap // ignore: cast_nullable_to_non_nullable
              as double,
      peRatio: null == peRatio
          ? _value.peRatio
          : peRatio // ignore: cast_nullable_to_non_nullable
              as double,
      eps: null == eps
          ? _value.eps
          : eps // ignore: cast_nullable_to_non_nullable
              as double,
      dividendYield: null == dividendYield
          ? _value.dividendYield
          : dividendYield // ignore: cast_nullable_to_non_nullable
              as double,
      beta: null == beta
          ? _value.beta
          : beta // ignore: cast_nullable_to_non_nullable
              as double,
      fiftyTwoWeekHigh: null == fiftyTwoWeekHigh
          ? _value.fiftyTwoWeekHigh
          : fiftyTwoWeekHigh // ignore: cast_nullable_to_non_nullable
              as double,
      fiftyTwoWeekLow: null == fiftyTwoWeekLow
          ? _value.fiftyTwoWeekLow
          : fiftyTwoWeekLow // ignore: cast_nullable_to_non_nullable
              as double,
      fiftyDayAverage: null == fiftyDayAverage
          ? _value.fiftyDayAverage
          : fiftyDayAverage // ignore: cast_nullable_to_non_nullable
              as double,
      twoHundredDayAverage: null == twoHundredDayAverage
          ? _value.twoHundredDayAverage
          : twoHundredDayAverage // ignore: cast_nullable_to_non_nullable
              as double,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      priceHistory: null == priceHistory
          ? _value.priceHistory
          : priceHistory // ignore: cast_nullable_to_non_nullable
              as List<PricePoint>,
      volumeData: null == volumeData
          ? _value.volumeData
          : volumeData // ignore: cast_nullable_to_non_nullable
              as List<VolumeData>,
      technicalIndicators: null == technicalIndicators
          ? _value.technicalIndicators
          : technicalIndicators // ignore: cast_nullable_to_non_nullable
              as TechnicalIndicators,
      sentimentData: null == sentimentData
          ? _value.sentimentData
          : sentimentData // ignore: cast_nullable_to_non_nullable
              as SentimentData,
      relatedNews: null == relatedNews
          ? _value.relatedNews
          : relatedNews // ignore: cast_nullable_to_non_nullable
              as List<NewsArticle>,
      optionFlow: null == optionFlow
          ? _value.optionFlow
          : optionFlow // ignore: cast_nullable_to_non_nullable
              as List<OptionFlow>,
      supplyDemandZones: null == supplyDemandZones
          ? _value.supplyDemandZones
          : supplyDemandZones // ignore: cast_nullable_to_non_nullable
              as SupplyDemandZones,
      elliottWaveData: null == elliottWaveData
          ? _value.elliottWaveData
          : elliottWaveData // ignore: cast_nullable_to_non_nullable
              as ElliottWaveData,
      fibonacciLevels: null == fibonacciLevels
          ? _value.fibonacciLevels
          : fibonacciLevels // ignore: cast_nullable_to_non_nullable
              as FibonacciLevels,
      patternRecognition: null == patternRecognition
          ? _value.patternRecognition
          : patternRecognition // ignore: cast_nullable_to_non_nullable
              as PatternRecognition,
      institutionalActivity: null == institutionalActivity
          ? _value.institutionalActivity
          : institutionalActivity // ignore: cast_nullable_to_non_nullable
              as InstitutionalActivity,
      relativeStrengthIndex: null == relativeStrengthIndex
          ? _value.relativeStrengthIndex
          : relativeStrengthIndex // ignore: cast_nullable_to_non_nullable
              as double,
      macd: null == macd
          ? _value.macd
          : macd // ignore: cast_nullable_to_non_nullable
              as double,
      macdSignal: null == macdSignal
          ? _value.macdSignal
          : macdSignal // ignore: cast_nullable_to_non_nullable
              as double,
      macdHistogram: null == macdHistogram
          ? _value.macdHistogram
          : macdHistogram // ignore: cast_nullable_to_non_nullable
              as double,
      bollingerUpper: null == bollingerUpper
          ? _value.bollingerUpper
          : bollingerUpper // ignore: cast_nullable_to_non_nullable
              as double,
      bollingerMiddle: null == bollingerMiddle
          ? _value.bollingerMiddle
          : bollingerMiddle // ignore: cast_nullable_to_non_nullable
              as double,
      bollingerLower: null == bollingerLower
          ? _value.bollingerLower
          : bollingerLower // ignore: cast_nullable_to_non_nullable
              as double,
      stochasticK: null == stochasticK
          ? _value.stochasticK
          : stochasticK // ignore: cast_nullable_to_non_nullable
              as double,
      stochasticD: null == stochasticD
          ? _value.stochasticD
          : stochasticD // ignore: cast_nullable_to_non_nullable
              as double,
      williamsR: null == williamsR
          ? _value.williamsR
          : williamsR // ignore: cast_nullable_to_non_nullable
              as double,
      atr: null == atr
          ? _value.atr
          : atr // ignore: cast_nullable_to_non_nullable
              as double,
      adx: null == adx
          ? _value.adx
          : adx // ignore: cast_nullable_to_non_nullable
              as double,
      obv: null == obv
          ? _value.obv
          : obv // ignore: cast_nullable_to_non_nullable
              as double,
      vwap: null == vwap
          ? _value.vwap
          : vwap // ignore: cast_nullable_to_non_nullable
              as double,
      pivotPoint: null == pivotPoint
          ? _value.pivotPoint
          : pivotPoint // ignore: cast_nullable_to_non_nullable
              as double,
      support1: null == support1
          ? _value.support1
          : support1 // ignore: cast_nullable_to_non_nullable
              as double,
      support2: null == support2
          ? _value.support2
          : support2 // ignore: cast_nullable_to_non_nullable
              as double,
      resistance1: null == resistance1
          ? _value.resistance1
          : resistance1 // ignore: cast_nullable_to_non_nullable
              as double,
      resistance2: null == resistance2
          ? _value.resistance2
          : resistance2 // ignore: cast_nullable_to_non_nullable
              as double,
      isWatched: null == isWatched
          ? _value.isWatched
          : isWatched // ignore: cast_nullable_to_non_nullable
              as bool,
      userViews: null == userViews
          ? _value.userViews
          : userViews // ignore: cast_nullable_to_non_nullable
              as int,
      lastViewed: null == lastViewed
          ? _value.lastViewed
          : lastViewed // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userNotes: null == userNotes
          ? _value.userNotes
          : userNotes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userRating: null == userRating
          ? _value.userRating
          : userRating // ignore: cast_nullable_to_non_nullable
              as double,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  /// Create a copy of Stock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TechnicalIndicatorsCopyWith<$Res> get technicalIndicators {
    return $TechnicalIndicatorsCopyWith<$Res>(_value.technicalIndicators,
        (value) {
      return _then(_value.copyWith(technicalIndicators: value) as $Val);
    });
  }

  /// Create a copy of Stock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SentimentDataCopyWith<$Res> get sentimentData {
    return $SentimentDataCopyWith<$Res>(_value.sentimentData, (value) {
      return _then(_value.copyWith(sentimentData: value) as $Val);
    });
  }

  /// Create a copy of Stock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupplyDemandZonesCopyWith<$Res> get supplyDemandZones {
    return $SupplyDemandZonesCopyWith<$Res>(_value.supplyDemandZones, (value) {
      return _then(_value.copyWith(supplyDemandZones: value) as $Val);
    });
  }

  /// Create a copy of Stock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ElliottWaveDataCopyWith<$Res> get elliottWaveData {
    return $ElliottWaveDataCopyWith<$Res>(_value.elliottWaveData, (value) {
      return _then(_value.copyWith(elliottWaveData: value) as $Val);
    });
  }

  /// Create a copy of Stock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FibonacciLevelsCopyWith<$Res> get fibonacciLevels {
    return $FibonacciLevelsCopyWith<$Res>(_value.fibonacciLevels, (value) {
      return _then(_value.copyWith(fibonacciLevels: value) as $Val);
    });
  }

  /// Create a copy of Stock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PatternRecognitionCopyWith<$Res> get patternRecognition {
    return $PatternRecognitionCopyWith<$Res>(_value.patternRecognition,
        (value) {
      return _then(_value.copyWith(patternRecognition: value) as $Val);
    });
  }

  /// Create a copy of Stock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InstitutionalActivityCopyWith<$Res> get institutionalActivity {
    return $InstitutionalActivityCopyWith<$Res>(_value.institutionalActivity,
        (value) {
      return _then(_value.copyWith(institutionalActivity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StockImplCopyWith<$Res> implements $StockCopyWith<$Res> {
  factory _$$StockImplCopyWith(
          _$StockImpl value, $Res Function(_$StockImpl) then) =
      __$$StockImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      String name,
      String sector,
      String industry,
      double currentPrice,
      double previousClose,
      double change,
      double changePercent,
      double open,
      double high,
      double low,
      double volume,
      double avgVolume,
      double marketCap,
      double peRatio,
      double eps,
      double dividendYield,
      double beta,
      double fiftyTwoWeekHigh,
      double fiftyTwoWeekLow,
      double fiftyDayAverage,
      double twoHundredDayAverage,
      DateTime lastUpdated,
      List<PricePoint> priceHistory,
      List<VolumeData> volumeData,
      TechnicalIndicators technicalIndicators,
      SentimentData sentimentData,
      List<NewsArticle> relatedNews,
      List<OptionFlow> optionFlow,
      SupplyDemandZones supplyDemandZones,
      ElliottWaveData elliottWaveData,
      FibonacciLevels fibonacciLevels,
      PatternRecognition patternRecognition,
      InstitutionalActivity institutionalActivity,
      double relativeStrengthIndex,
      double macd,
      double macdSignal,
      double macdHistogram,
      double bollingerUpper,
      double bollingerMiddle,
      double bollingerLower,
      double stochasticK,
      double stochasticD,
      double williamsR,
      double atr,
      double adx,
      double obv,
      double vwap,
      double pivotPoint,
      double support1,
      double support2,
      double resistance1,
      double resistance2,
      bool isWatched,
      int userViews,
      DateTime lastViewed,
      List<String> userNotes,
      double userRating,
      List<String> tags});

  @override
  $TechnicalIndicatorsCopyWith<$Res> get technicalIndicators;
  @override
  $SentimentDataCopyWith<$Res> get sentimentData;
  @override
  $SupplyDemandZonesCopyWith<$Res> get supplyDemandZones;
  @override
  $ElliottWaveDataCopyWith<$Res> get elliottWaveData;
  @override
  $FibonacciLevelsCopyWith<$Res> get fibonacciLevels;
  @override
  $PatternRecognitionCopyWith<$Res> get patternRecognition;
  @override
  $InstitutionalActivityCopyWith<$Res> get institutionalActivity;
}

/// @nodoc
class __$$StockImplCopyWithImpl<$Res>
    extends _$StockCopyWithImpl<$Res, _$StockImpl>
    implements _$$StockImplCopyWith<$Res> {
  __$$StockImplCopyWithImpl(
      _$StockImpl _value, $Res Function(_$StockImpl) _then)
      : super(_value, _then);

  /// Create a copy of Stock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? sector = null,
    Object? industry = null,
    Object? currentPrice = null,
    Object? previousClose = null,
    Object? change = null,
    Object? changePercent = null,
    Object? open = null,
    Object? high = null,
    Object? low = null,
    Object? volume = null,
    Object? avgVolume = null,
    Object? marketCap = null,
    Object? peRatio = null,
    Object? eps = null,
    Object? dividendYield = null,
    Object? beta = null,
    Object? fiftyTwoWeekHigh = null,
    Object? fiftyTwoWeekLow = null,
    Object? fiftyDayAverage = null,
    Object? twoHundredDayAverage = null,
    Object? lastUpdated = null,
    Object? priceHistory = null,
    Object? volumeData = null,
    Object? technicalIndicators = null,
    Object? sentimentData = null,
    Object? relatedNews = null,
    Object? optionFlow = null,
    Object? supplyDemandZones = null,
    Object? elliottWaveData = null,
    Object? fibonacciLevels = null,
    Object? patternRecognition = null,
    Object? institutionalActivity = null,
    Object? relativeStrengthIndex = null,
    Object? macd = null,
    Object? macdSignal = null,
    Object? macdHistogram = null,
    Object? bollingerUpper = null,
    Object? bollingerMiddle = null,
    Object? bollingerLower = null,
    Object? stochasticK = null,
    Object? stochasticD = null,
    Object? williamsR = null,
    Object? atr = null,
    Object? adx = null,
    Object? obv = null,
    Object? vwap = null,
    Object? pivotPoint = null,
    Object? support1 = null,
    Object? support2 = null,
    Object? resistance1 = null,
    Object? resistance2 = null,
    Object? isWatched = null,
    Object? userViews = null,
    Object? lastViewed = null,
    Object? userNotes = null,
    Object? userRating = null,
    Object? tags = null,
  }) {
    return _then(_$StockImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sector: null == sector
          ? _value.sector
          : sector // ignore: cast_nullable_to_non_nullable
              as String,
      industry: null == industry
          ? _value.industry
          : industry // ignore: cast_nullable_to_non_nullable
              as String,
      currentPrice: null == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
      previousClose: null == previousClose
          ? _value.previousClose
          : previousClose // ignore: cast_nullable_to_non_nullable
              as double,
      change: null == change
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as double,
      changePercent: null == changePercent
          ? _value.changePercent
          : changePercent // ignore: cast_nullable_to_non_nullable
              as double,
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as double,
      high: null == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as double,
      low: null == low
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as double,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      avgVolume: null == avgVolume
          ? _value.avgVolume
          : avgVolume // ignore: cast_nullable_to_non_nullable
              as double,
      marketCap: null == marketCap
          ? _value.marketCap
          : marketCap // ignore: cast_nullable_to_non_nullable
              as double,
      peRatio: null == peRatio
          ? _value.peRatio
          : peRatio // ignore: cast_nullable_to_non_nullable
              as double,
      eps: null == eps
          ? _value.eps
          : eps // ignore: cast_nullable_to_non_nullable
              as double,
      dividendYield: null == dividendYield
          ? _value.dividendYield
          : dividendYield // ignore: cast_nullable_to_non_nullable
              as double,
      beta: null == beta
          ? _value.beta
          : beta // ignore: cast_nullable_to_non_nullable
              as double,
      fiftyTwoWeekHigh: null == fiftyTwoWeekHigh
          ? _value.fiftyTwoWeekHigh
          : fiftyTwoWeekHigh // ignore: cast_nullable_to_non_nullable
              as double,
      fiftyTwoWeekLow: null == fiftyTwoWeekLow
          ? _value.fiftyTwoWeekLow
          : fiftyTwoWeekLow // ignore: cast_nullable_to_non_nullable
              as double,
      fiftyDayAverage: null == fiftyDayAverage
          ? _value.fiftyDayAverage
          : fiftyDayAverage // ignore: cast_nullable_to_non_nullable
              as double,
      twoHundredDayAverage: null == twoHundredDayAverage
          ? _value.twoHundredDayAverage
          : twoHundredDayAverage // ignore: cast_nullable_to_non_nullable
              as double,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      priceHistory: null == priceHistory
          ? _value._priceHistory
          : priceHistory // ignore: cast_nullable_to_non_nullable
              as List<PricePoint>,
      volumeData: null == volumeData
          ? _value._volumeData
          : volumeData // ignore: cast_nullable_to_non_nullable
              as List<VolumeData>,
      technicalIndicators: null == technicalIndicators
          ? _value.technicalIndicators
          : technicalIndicators // ignore: cast_nullable_to_non_nullable
              as TechnicalIndicators,
      sentimentData: null == sentimentData
          ? _value.sentimentData
          : sentimentData // ignore: cast_nullable_to_non_nullable
              as SentimentData,
      relatedNews: null == relatedNews
          ? _value._relatedNews
          : relatedNews // ignore: cast_nullable_to_non_nullable
              as List<NewsArticle>,
      optionFlow: null == optionFlow
          ? _value._optionFlow
          : optionFlow // ignore: cast_nullable_to_non_nullable
              as List<OptionFlow>,
      supplyDemandZones: null == supplyDemandZones
          ? _value.supplyDemandZones
          : supplyDemandZones // ignore: cast_nullable_to_non_nullable
              as SupplyDemandZones,
      elliottWaveData: null == elliottWaveData
          ? _value.elliottWaveData
          : elliottWaveData // ignore: cast_nullable_to_non_nullable
              as ElliottWaveData,
      fibonacciLevels: null == fibonacciLevels
          ? _value.fibonacciLevels
          : fibonacciLevels // ignore: cast_nullable_to_non_nullable
              as FibonacciLevels,
      patternRecognition: null == patternRecognition
          ? _value.patternRecognition
          : patternRecognition // ignore: cast_nullable_to_non_nullable
              as PatternRecognition,
      institutionalActivity: null == institutionalActivity
          ? _value.institutionalActivity
          : institutionalActivity // ignore: cast_nullable_to_non_nullable
              as InstitutionalActivity,
      relativeStrengthIndex: null == relativeStrengthIndex
          ? _value.relativeStrengthIndex
          : relativeStrengthIndex // ignore: cast_nullable_to_non_nullable
              as double,
      macd: null == macd
          ? _value.macd
          : macd // ignore: cast_nullable_to_non_nullable
              as double,
      macdSignal: null == macdSignal
          ? _value.macdSignal
          : macdSignal // ignore: cast_nullable_to_non_nullable
              as double,
      macdHistogram: null == macdHistogram
          ? _value.macdHistogram
          : macdHistogram // ignore: cast_nullable_to_non_nullable
              as double,
      bollingerUpper: null == bollingerUpper
          ? _value.bollingerUpper
          : bollingerUpper // ignore: cast_nullable_to_non_nullable
              as double,
      bollingerMiddle: null == bollingerMiddle
          ? _value.bollingerMiddle
          : bollingerMiddle // ignore: cast_nullable_to_non_nullable
              as double,
      bollingerLower: null == bollingerLower
          ? _value.bollingerLower
          : bollingerLower // ignore: cast_nullable_to_non_nullable
              as double,
      stochasticK: null == stochasticK
          ? _value.stochasticK
          : stochasticK // ignore: cast_nullable_to_non_nullable
              as double,
      stochasticD: null == stochasticD
          ? _value.stochasticD
          : stochasticD // ignore: cast_nullable_to_non_nullable
              as double,
      williamsR: null == williamsR
          ? _value.williamsR
          : williamsR // ignore: cast_nullable_to_non_nullable
              as double,
      atr: null == atr
          ? _value.atr
          : atr // ignore: cast_nullable_to_non_nullable
              as double,
      adx: null == adx
          ? _value.adx
          : adx // ignore: cast_nullable_to_non_nullable
              as double,
      obv: null == obv
          ? _value.obv
          : obv // ignore: cast_nullable_to_non_nullable
              as double,
      vwap: null == vwap
          ? _value.vwap
          : vwap // ignore: cast_nullable_to_non_nullable
              as double,
      pivotPoint: null == pivotPoint
          ? _value.pivotPoint
          : pivotPoint // ignore: cast_nullable_to_non_nullable
              as double,
      support1: null == support1
          ? _value.support1
          : support1 // ignore: cast_nullable_to_non_nullable
              as double,
      support2: null == support2
          ? _value.support2
          : support2 // ignore: cast_nullable_to_non_nullable
              as double,
      resistance1: null == resistance1
          ? _value.resistance1
          : resistance1 // ignore: cast_nullable_to_non_nullable
              as double,
      resistance2: null == resistance2
          ? _value.resistance2
          : resistance2 // ignore: cast_nullable_to_non_nullable
              as double,
      isWatched: null == isWatched
          ? _value.isWatched
          : isWatched // ignore: cast_nullable_to_non_nullable
              as bool,
      userViews: null == userViews
          ? _value.userViews
          : userViews // ignore: cast_nullable_to_non_nullable
              as int,
      lastViewed: null == lastViewed
          ? _value.lastViewed
          : lastViewed // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userNotes: null == userNotes
          ? _value._userNotes
          : userNotes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userRating: null == userRating
          ? _value.userRating
          : userRating // ignore: cast_nullable_to_non_nullable
              as double,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockImpl implements _Stock {
  const _$StockImpl(
      {required this.symbol,
      required this.name,
      required this.sector,
      required this.industry,
      required this.currentPrice,
      required this.previousClose,
      required this.change,
      required this.changePercent,
      required this.open,
      required this.high,
      required this.low,
      required this.volume,
      required this.avgVolume,
      required this.marketCap,
      required this.peRatio,
      required this.eps,
      required this.dividendYield,
      required this.beta,
      required this.fiftyTwoWeekHigh,
      required this.fiftyTwoWeekLow,
      required this.fiftyDayAverage,
      required this.twoHundredDayAverage,
      required this.lastUpdated,
      required final List<PricePoint> priceHistory,
      required final List<VolumeData> volumeData,
      required this.technicalIndicators,
      required this.sentimentData,
      required final List<NewsArticle> relatedNews,
      required final List<OptionFlow> optionFlow,
      required this.supplyDemandZones,
      required this.elliottWaveData,
      required this.fibonacciLevels,
      required this.patternRecognition,
      required this.institutionalActivity,
      required this.relativeStrengthIndex,
      required this.macd,
      required this.macdSignal,
      required this.macdHistogram,
      required this.bollingerUpper,
      required this.bollingerMiddle,
      required this.bollingerLower,
      required this.stochasticK,
      required this.stochasticD,
      required this.williamsR,
      required this.atr,
      required this.adx,
      required this.obv,
      required this.vwap,
      required this.pivotPoint,
      required this.support1,
      required this.support2,
      required this.resistance1,
      required this.resistance2,
      required this.isWatched,
      required this.userViews,
      required this.lastViewed,
      required final List<String> userNotes,
      required this.userRating,
      required final List<String> tags})
      : _priceHistory = priceHistory,
        _volumeData = volumeData,
        _relatedNews = relatedNews,
        _optionFlow = optionFlow,
        _userNotes = userNotes,
        _tags = tags;

  factory _$StockImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockImplFromJson(json);

  @override
  final String symbol;
  @override
  final String name;
  @override
  final String sector;
  @override
  final String industry;
  @override
  final double currentPrice;
  @override
  final double previousClose;
  @override
  final double change;
  @override
  final double changePercent;
  @override
  final double open;
  @override
  final double high;
  @override
  final double low;
  @override
  final double volume;
  @override
  final double avgVolume;
  @override
  final double marketCap;
  @override
  final double peRatio;
  @override
  final double eps;
  @override
  final double dividendYield;
  @override
  final double beta;
  @override
  final double fiftyTwoWeekHigh;
  @override
  final double fiftyTwoWeekLow;
  @override
  final double fiftyDayAverage;
  @override
  final double twoHundredDayAverage;
  @override
  final DateTime lastUpdated;
  final List<PricePoint> _priceHistory;
  @override
  List<PricePoint> get priceHistory {
    if (_priceHistory is EqualUnmodifiableListView) return _priceHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_priceHistory);
  }

  final List<VolumeData> _volumeData;
  @override
  List<VolumeData> get volumeData {
    if (_volumeData is EqualUnmodifiableListView) return _volumeData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_volumeData);
  }

  @override
  final TechnicalIndicators technicalIndicators;
  @override
  final SentimentData sentimentData;
  final List<NewsArticle> _relatedNews;
  @override
  List<NewsArticle> get relatedNews {
    if (_relatedNews is EqualUnmodifiableListView) return _relatedNews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relatedNews);
  }

  final List<OptionFlow> _optionFlow;
  @override
  List<OptionFlow> get optionFlow {
    if (_optionFlow is EqualUnmodifiableListView) return _optionFlow;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_optionFlow);
  }

  @override
  final SupplyDemandZones supplyDemandZones;
  @override
  final ElliottWaveData elliottWaveData;
  @override
  final FibonacciLevels fibonacciLevels;
  @override
  final PatternRecognition patternRecognition;
  @override
  final InstitutionalActivity institutionalActivity;
  @override
  final double relativeStrengthIndex;
  @override
  final double macd;
  @override
  final double macdSignal;
  @override
  final double macdHistogram;
  @override
  final double bollingerUpper;
  @override
  final double bollingerMiddle;
  @override
  final double bollingerLower;
  @override
  final double stochasticK;
  @override
  final double stochasticD;
  @override
  final double williamsR;
  @override
  final double atr;
  @override
  final double adx;
  @override
  final double obv;
  @override
  final double vwap;
  @override
  final double pivotPoint;
  @override
  final double support1;
  @override
  final double support2;
  @override
  final double resistance1;
  @override
  final double resistance2;
  @override
  final bool isWatched;
  @override
  final int userViews;
  @override
  final DateTime lastViewed;
  final List<String> _userNotes;
  @override
  List<String> get userNotes {
    if (_userNotes is EqualUnmodifiableListView) return _userNotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userNotes);
  }

  @override
  final double userRating;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'Stock(symbol: $symbol, name: $name, sector: $sector, industry: $industry, currentPrice: $currentPrice, previousClose: $previousClose, change: $change, changePercent: $changePercent, open: $open, high: $high, low: $low, volume: $volume, avgVolume: $avgVolume, marketCap: $marketCap, peRatio: $peRatio, eps: $eps, dividendYield: $dividendYield, beta: $beta, fiftyTwoWeekHigh: $fiftyTwoWeekHigh, fiftyTwoWeekLow: $fiftyTwoWeekLow, fiftyDayAverage: $fiftyDayAverage, twoHundredDayAverage: $twoHundredDayAverage, lastUpdated: $lastUpdated, priceHistory: $priceHistory, volumeData: $volumeData, technicalIndicators: $technicalIndicators, sentimentData: $sentimentData, relatedNews: $relatedNews, optionFlow: $optionFlow, supplyDemandZones: $supplyDemandZones, elliottWaveData: $elliottWaveData, fibonacciLevels: $fibonacciLevels, patternRecognition: $patternRecognition, institutionalActivity: $institutionalActivity, relativeStrengthIndex: $relativeStrengthIndex, macd: $macd, macdSignal: $macdSignal, macdHistogram: $macdHistogram, bollingerUpper: $bollingerUpper, bollingerMiddle: $bollingerMiddle, bollingerLower: $bollingerLower, stochasticK: $stochasticK, stochasticD: $stochasticD, williamsR: $williamsR, atr: $atr, adx: $adx, obv: $obv, vwap: $vwap, pivotPoint: $pivotPoint, support1: $support1, support2: $support2, resistance1: $resistance1, resistance2: $resistance2, isWatched: $isWatched, userViews: $userViews, lastViewed: $lastViewed, userNotes: $userNotes, userRating: $userRating, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sector, sector) || other.sector == sector) &&
            (identical(other.industry, industry) ||
                other.industry == industry) &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice) &&
            (identical(other.previousClose, previousClose) ||
                other.previousClose == previousClose) &&
            (identical(other.change, change) || other.change == change) &&
            (identical(other.changePercent, changePercent) ||
                other.changePercent == changePercent) &&
            (identical(other.open, open) || other.open == open) &&
            (identical(other.high, high) || other.high == high) &&
            (identical(other.low, low) || other.low == low) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.avgVolume, avgVolume) ||
                other.avgVolume == avgVolume) &&
            (identical(other.marketCap, marketCap) ||
                other.marketCap == marketCap) &&
            (identical(other.peRatio, peRatio) || other.peRatio == peRatio) &&
            (identical(other.eps, eps) || other.eps == eps) &&
            (identical(other.dividendYield, dividendYield) ||
                other.dividendYield == dividendYield) &&
            (identical(other.beta, beta) || other.beta == beta) &&
            (identical(other.fiftyTwoWeekHigh, fiftyTwoWeekHigh) ||
                other.fiftyTwoWeekHigh == fiftyTwoWeekHigh) &&
            (identical(other.fiftyTwoWeekLow, fiftyTwoWeekLow) ||
                other.fiftyTwoWeekLow == fiftyTwoWeekLow) &&
            (identical(other.fiftyDayAverage, fiftyDayAverage) ||
                other.fiftyDayAverage == fiftyDayAverage) &&
            (identical(other.twoHundredDayAverage, twoHundredDayAverage) ||
                other.twoHundredDayAverage == twoHundredDayAverage) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            const DeepCollectionEquality()
                .equals(other._priceHistory, _priceHistory) &&
            const DeepCollectionEquality()
                .equals(other._volumeData, _volumeData) &&
            (identical(other.technicalIndicators, technicalIndicators) ||
                other.technicalIndicators == technicalIndicators) &&
            (identical(other.sentimentData, sentimentData) ||
                other.sentimentData == sentimentData) &&
            const DeepCollectionEquality()
                .equals(other._relatedNews, _relatedNews) &&
            const DeepCollectionEquality()
                .equals(other._optionFlow, _optionFlow) &&
            (identical(other.supplyDemandZones, supplyDemandZones) ||
                other.supplyDemandZones == supplyDemandZones) &&
            (identical(other.elliottWaveData, elliottWaveData) ||
                other.elliottWaveData == elliottWaveData) &&
            (identical(other.fibonacciLevels, fibonacciLevels) ||
                other.fibonacciLevels == fibonacciLevels) &&
            (identical(other.patternRecognition, patternRecognition) ||
                other.patternRecognition == patternRecognition) &&
            (identical(other.institutionalActivity, institutionalActivity) ||
                other.institutionalActivity == institutionalActivity) &&
            (identical(other.relativeStrengthIndex, relativeStrengthIndex) ||
                other.relativeStrengthIndex == relativeStrengthIndex) &&
            (identical(other.macd, macd) || other.macd == macd) &&
            (identical(other.macdSignal, macdSignal) ||
                other.macdSignal == macdSignal) &&
            (identical(other.macdHistogram, macdHistogram) ||
                other.macdHistogram == macdHistogram) &&
            (identical(other.bollingerUpper, bollingerUpper) ||
                other.bollingerUpper == bollingerUpper) &&
            (identical(other.bollingerMiddle, bollingerMiddle) ||
                other.bollingerMiddle == bollingerMiddle) &&
            (identical(other.bollingerLower, bollingerLower) ||
                other.bollingerLower == bollingerLower) &&
            (identical(other.stochasticK, stochasticK) ||
                other.stochasticK == stochasticK) &&
            (identical(other.stochasticD, stochasticD) ||
                other.stochasticD == stochasticD) &&
            (identical(other.williamsR, williamsR) ||
                other.williamsR == williamsR) &&
            (identical(other.atr, atr) || other.atr == atr) &&
            (identical(other.adx, adx) || other.adx == adx) &&
            (identical(other.obv, obv) || other.obv == obv) &&
            (identical(other.vwap, vwap) || other.vwap == vwap) &&
            (identical(other.pivotPoint, pivotPoint) ||
                other.pivotPoint == pivotPoint) &&
            (identical(other.support1, support1) ||
                other.support1 == support1) &&
            (identical(other.support2, support2) ||
                other.support2 == support2) &&
            (identical(other.resistance1, resistance1) ||
                other.resistance1 == resistance1) &&
            (identical(other.resistance2, resistance2) ||
                other.resistance2 == resistance2) &&
            (identical(other.isWatched, isWatched) ||
                other.isWatched == isWatched) &&
            (identical(other.userViews, userViews) ||
                other.userViews == userViews) &&
            (identical(other.lastViewed, lastViewed) ||
                other.lastViewed == lastViewed) &&
            const DeepCollectionEquality()
                .equals(other._userNotes, _userNotes) &&
            (identical(other.userRating, userRating) ||
                other.userRating == userRating) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        symbol,
        name,
        sector,
        industry,
        currentPrice,
        previousClose,
        change,
        changePercent,
        open,
        high,
        low,
        volume,
        avgVolume,
        marketCap,
        peRatio,
        eps,
        dividendYield,
        beta,
        fiftyTwoWeekHigh,
        fiftyTwoWeekLow,
        fiftyDayAverage,
        twoHundredDayAverage,
        lastUpdated,
        const DeepCollectionEquality().hash(_priceHistory),
        const DeepCollectionEquality().hash(_volumeData),
        technicalIndicators,
        sentimentData,
        const DeepCollectionEquality().hash(_relatedNews),
        const DeepCollectionEquality().hash(_optionFlow),
        supplyDemandZones,
        elliottWaveData,
        fibonacciLevels,
        patternRecognition,
        institutionalActivity,
        relativeStrengthIndex,
        macd,
        macdSignal,
        macdHistogram,
        bollingerUpper,
        bollingerMiddle,
        bollingerLower,
        stochasticK,
        stochasticD,
        williamsR,
        atr,
        adx,
        obv,
        vwap,
        pivotPoint,
        support1,
        support2,
        resistance1,
        resistance2,
        isWatched,
        userViews,
        lastViewed,
        const DeepCollectionEquality().hash(_userNotes),
        userRating,
        const DeepCollectionEquality().hash(_tags)
      ]);

  /// Create a copy of Stock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StockImplCopyWith<_$StockImpl> get copyWith =>
      __$$StockImplCopyWithImpl<_$StockImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockImplToJson(
      this,
    );
  }
}

abstract class _Stock implements Stock {
  const factory _Stock(
      {required final String symbol,
      required final String name,
      required final String sector,
      required final String industry,
      required final double currentPrice,
      required final double previousClose,
      required final double change,
      required final double changePercent,
      required final double open,
      required final double high,
      required final double low,
      required final double volume,
      required final double avgVolume,
      required final double marketCap,
      required final double peRatio,
      required final double eps,
      required final double dividendYield,
      required final double beta,
      required final double fiftyTwoWeekHigh,
      required final double fiftyTwoWeekLow,
      required final double fiftyDayAverage,
      required final double twoHundredDayAverage,
      required final DateTime lastUpdated,
      required final List<PricePoint> priceHistory,
      required final List<VolumeData> volumeData,
      required final TechnicalIndicators technicalIndicators,
      required final SentimentData sentimentData,
      required final List<NewsArticle> relatedNews,
      required final List<OptionFlow> optionFlow,
      required final SupplyDemandZones supplyDemandZones,
      required final ElliottWaveData elliottWaveData,
      required final FibonacciLevels fibonacciLevels,
      required final PatternRecognition patternRecognition,
      required final InstitutionalActivity institutionalActivity,
      required final double relativeStrengthIndex,
      required final double macd,
      required final double macdSignal,
      required final double macdHistogram,
      required final double bollingerUpper,
      required final double bollingerMiddle,
      required final double bollingerLower,
      required final double stochasticK,
      required final double stochasticD,
      required final double williamsR,
      required final double atr,
      required final double adx,
      required final double obv,
      required final double vwap,
      required final double pivotPoint,
      required final double support1,
      required final double support2,
      required final double resistance1,
      required final double resistance2,
      required final bool isWatched,
      required final int userViews,
      required final DateTime lastViewed,
      required final List<String> userNotes,
      required final double userRating,
      required final List<String> tags}) = _$StockImpl;

  factory _Stock.fromJson(Map<String, dynamic> json) = _$StockImpl.fromJson;

  @override
  String get symbol;
  @override
  String get name;
  @override
  String get sector;
  @override
  String get industry;
  @override
  double get currentPrice;
  @override
  double get previousClose;
  @override
  double get change;
  @override
  double get changePercent;
  @override
  double get open;
  @override
  double get high;
  @override
  double get low;
  @override
  double get volume;
  @override
  double get avgVolume;
  @override
  double get marketCap;
  @override
  double get peRatio;
  @override
  double get eps;
  @override
  double get dividendYield;
  @override
  double get beta;
  @override
  double get fiftyTwoWeekHigh;
  @override
  double get fiftyTwoWeekLow;
  @override
  double get fiftyDayAverage;
  @override
  double get twoHundredDayAverage;
  @override
  DateTime get lastUpdated;
  @override
  List<PricePoint> get priceHistory;
  @override
  List<VolumeData> get volumeData;
  @override
  TechnicalIndicators get technicalIndicators;
  @override
  SentimentData get sentimentData;
  @override
  List<NewsArticle> get relatedNews;
  @override
  List<OptionFlow> get optionFlow;
  @override
  SupplyDemandZones get supplyDemandZones;
  @override
  ElliottWaveData get elliottWaveData;
  @override
  FibonacciLevels get fibonacciLevels;
  @override
  PatternRecognition get patternRecognition;
  @override
  InstitutionalActivity get institutionalActivity;
  @override
  double get relativeStrengthIndex;
  @override
  double get macd;
  @override
  double get macdSignal;
  @override
  double get macdHistogram;
  @override
  double get bollingerUpper;
  @override
  double get bollingerMiddle;
  @override
  double get bollingerLower;
  @override
  double get stochasticK;
  @override
  double get stochasticD;
  @override
  double get williamsR;
  @override
  double get atr;
  @override
  double get adx;
  @override
  double get obv;
  @override
  double get vwap;
  @override
  double get pivotPoint;
  @override
  double get support1;
  @override
  double get support2;
  @override
  double get resistance1;
  @override
  double get resistance2;
  @override
  bool get isWatched;
  @override
  int get userViews;
  @override
  DateTime get lastViewed;
  @override
  List<String> get userNotes;
  @override
  double get userRating;
  @override
  List<String> get tags;

  /// Create a copy of Stock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StockImplCopyWith<_$StockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PricePoint _$PricePointFromJson(Map<String, dynamic> json) {
  return _PricePoint.fromJson(json);
}

/// @nodoc
mixin _$PricePoint {
  DateTime get timestamp => throw _privateConstructorUsedError;
  double get open => throw _privateConstructorUsedError;
  double get high => throw _privateConstructorUsedError;
  double get low => throw _privateConstructorUsedError;
  double get close => throw _privateConstructorUsedError;
  double get volume => throw _privateConstructorUsedError;

  /// Serializes this PricePoint to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PricePoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PricePointCopyWith<PricePoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricePointCopyWith<$Res> {
  factory $PricePointCopyWith(
          PricePoint value, $Res Function(PricePoint) then) =
      _$PricePointCopyWithImpl<$Res, PricePoint>;
  @useResult
  $Res call(
      {DateTime timestamp,
      double open,
      double high,
      double low,
      double close,
      double volume});
}

/// @nodoc
class _$PricePointCopyWithImpl<$Res, $Val extends PricePoint>
    implements $PricePointCopyWith<$Res> {
  _$PricePointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PricePoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? open = null,
    Object? high = null,
    Object? low = null,
    Object? close = null,
    Object? volume = null,
  }) {
    return _then(_value.copyWith(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as double,
      high: null == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as double,
      low: null == low
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as double,
      close: null == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as double,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PricePointImplCopyWith<$Res>
    implements $PricePointCopyWith<$Res> {
  factory _$$PricePointImplCopyWith(
          _$PricePointImpl value, $Res Function(_$PricePointImpl) then) =
      __$$PricePointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime timestamp,
      double open,
      double high,
      double low,
      double close,
      double volume});
}

/// @nodoc
class __$$PricePointImplCopyWithImpl<$Res>
    extends _$PricePointCopyWithImpl<$Res, _$PricePointImpl>
    implements _$$PricePointImplCopyWith<$Res> {
  __$$PricePointImplCopyWithImpl(
      _$PricePointImpl _value, $Res Function(_$PricePointImpl) _then)
      : super(_value, _then);

  /// Create a copy of PricePoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? open = null,
    Object? high = null,
    Object? low = null,
    Object? close = null,
    Object? volume = null,
  }) {
    return _then(_$PricePointImpl(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as double,
      high: null == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as double,
      low: null == low
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as double,
      close: null == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as double,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PricePointImpl implements _PricePoint {
  const _$PricePointImpl(
      {required this.timestamp,
      required this.open,
      required this.high,
      required this.low,
      required this.close,
      required this.volume});

  factory _$PricePointImpl.fromJson(Map<String, dynamic> json) =>
      _$$PricePointImplFromJson(json);

  @override
  final DateTime timestamp;
  @override
  final double open;
  @override
  final double high;
  @override
  final double low;
  @override
  final double close;
  @override
  final double volume;

  @override
  String toString() {
    return 'PricePoint(timestamp: $timestamp, open: $open, high: $high, low: $low, close: $close, volume: $volume)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PricePointImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.open, open) || other.open == open) &&
            (identical(other.high, high) || other.high == high) &&
            (identical(other.low, low) || other.low == low) &&
            (identical(other.close, close) || other.close == close) &&
            (identical(other.volume, volume) || other.volume == volume));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, timestamp, open, high, low, close, volume);

  /// Create a copy of PricePoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PricePointImplCopyWith<_$PricePointImpl> get copyWith =>
      __$$PricePointImplCopyWithImpl<_$PricePointImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PricePointImplToJson(
      this,
    );
  }
}

abstract class _PricePoint implements PricePoint {
  const factory _PricePoint(
      {required final DateTime timestamp,
      required final double open,
      required final double high,
      required final double low,
      required final double close,
      required final double volume}) = _$PricePointImpl;

  factory _PricePoint.fromJson(Map<String, dynamic> json) =
      _$PricePointImpl.fromJson;

  @override
  DateTime get timestamp;
  @override
  double get open;
  @override
  double get high;
  @override
  double get low;
  @override
  double get close;
  @override
  double get volume;

  /// Create a copy of PricePoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PricePointImplCopyWith<_$PricePointImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VolumeData _$VolumeDataFromJson(Map<String, dynamic> json) {
  return _VolumeData.fromJson(json);
}

/// @nodoc
mixin _$VolumeData {
  DateTime get timestamp => throw _privateConstructorUsedError;
  double get volume => throw _privateConstructorUsedError;
  double get avgVolume => throw _privateConstructorUsedError;
  double get volumeRatio => throw _privateConstructorUsedError;
  List<TradeType> get tradeTypes => throw _privateConstructorUsedError;
  double get largeTradeVolume => throw _privateConstructorUsedError;
  double get institutionalVolume => throw _privateConstructorUsedError;

  /// Serializes this VolumeData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VolumeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VolumeDataCopyWith<VolumeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VolumeDataCopyWith<$Res> {
  factory $VolumeDataCopyWith(
          VolumeData value, $Res Function(VolumeData) then) =
      _$VolumeDataCopyWithImpl<$Res, VolumeData>;
  @useResult
  $Res call(
      {DateTime timestamp,
      double volume,
      double avgVolume,
      double volumeRatio,
      List<TradeType> tradeTypes,
      double largeTradeVolume,
      double institutionalVolume});
}

/// @nodoc
class _$VolumeDataCopyWithImpl<$Res, $Val extends VolumeData>
    implements $VolumeDataCopyWith<$Res> {
  _$VolumeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VolumeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? volume = null,
    Object? avgVolume = null,
    Object? volumeRatio = null,
    Object? tradeTypes = null,
    Object? largeTradeVolume = null,
    Object? institutionalVolume = null,
  }) {
    return _then(_value.copyWith(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      avgVolume: null == avgVolume
          ? _value.avgVolume
          : avgVolume // ignore: cast_nullable_to_non_nullable
              as double,
      volumeRatio: null == volumeRatio
          ? _value.volumeRatio
          : volumeRatio // ignore: cast_nullable_to_non_nullable
              as double,
      tradeTypes: null == tradeTypes
          ? _value.tradeTypes
          : tradeTypes // ignore: cast_nullable_to_non_nullable
              as List<TradeType>,
      largeTradeVolume: null == largeTradeVolume
          ? _value.largeTradeVolume
          : largeTradeVolume // ignore: cast_nullable_to_non_nullable
              as double,
      institutionalVolume: null == institutionalVolume
          ? _value.institutionalVolume
          : institutionalVolume // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VolumeDataImplCopyWith<$Res>
    implements $VolumeDataCopyWith<$Res> {
  factory _$$VolumeDataImplCopyWith(
          _$VolumeDataImpl value, $Res Function(_$VolumeDataImpl) then) =
      __$$VolumeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime timestamp,
      double volume,
      double avgVolume,
      double volumeRatio,
      List<TradeType> tradeTypes,
      double largeTradeVolume,
      double institutionalVolume});
}

/// @nodoc
class __$$VolumeDataImplCopyWithImpl<$Res>
    extends _$VolumeDataCopyWithImpl<$Res, _$VolumeDataImpl>
    implements _$$VolumeDataImplCopyWith<$Res> {
  __$$VolumeDataImplCopyWithImpl(
      _$VolumeDataImpl _value, $Res Function(_$VolumeDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of VolumeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? volume = null,
    Object? avgVolume = null,
    Object? volumeRatio = null,
    Object? tradeTypes = null,
    Object? largeTradeVolume = null,
    Object? institutionalVolume = null,
  }) {
    return _then(_$VolumeDataImpl(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      avgVolume: null == avgVolume
          ? _value.avgVolume
          : avgVolume // ignore: cast_nullable_to_non_nullable
              as double,
      volumeRatio: null == volumeRatio
          ? _value.volumeRatio
          : volumeRatio // ignore: cast_nullable_to_non_nullable
              as double,
      tradeTypes: null == tradeTypes
          ? _value._tradeTypes
          : tradeTypes // ignore: cast_nullable_to_non_nullable
              as List<TradeType>,
      largeTradeVolume: null == largeTradeVolume
          ? _value.largeTradeVolume
          : largeTradeVolume // ignore: cast_nullable_to_non_nullable
              as double,
      institutionalVolume: null == institutionalVolume
          ? _value.institutionalVolume
          : institutionalVolume // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VolumeDataImpl implements _VolumeData {
  const _$VolumeDataImpl(
      {required this.timestamp,
      required this.volume,
      required this.avgVolume,
      required this.volumeRatio,
      required final List<TradeType> tradeTypes,
      required this.largeTradeVolume,
      required this.institutionalVolume})
      : _tradeTypes = tradeTypes;

  factory _$VolumeDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$VolumeDataImplFromJson(json);

  @override
  final DateTime timestamp;
  @override
  final double volume;
  @override
  final double avgVolume;
  @override
  final double volumeRatio;
  final List<TradeType> _tradeTypes;
  @override
  List<TradeType> get tradeTypes {
    if (_tradeTypes is EqualUnmodifiableListView) return _tradeTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tradeTypes);
  }

  @override
  final double largeTradeVolume;
  @override
  final double institutionalVolume;

  @override
  String toString() {
    return 'VolumeData(timestamp: $timestamp, volume: $volume, avgVolume: $avgVolume, volumeRatio: $volumeRatio, tradeTypes: $tradeTypes, largeTradeVolume: $largeTradeVolume, institutionalVolume: $institutionalVolume)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VolumeDataImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.avgVolume, avgVolume) ||
                other.avgVolume == avgVolume) &&
            (identical(other.volumeRatio, volumeRatio) ||
                other.volumeRatio == volumeRatio) &&
            const DeepCollectionEquality()
                .equals(other._tradeTypes, _tradeTypes) &&
            (identical(other.largeTradeVolume, largeTradeVolume) ||
                other.largeTradeVolume == largeTradeVolume) &&
            (identical(other.institutionalVolume, institutionalVolume) ||
                other.institutionalVolume == institutionalVolume));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timestamp,
      volume,
      avgVolume,
      volumeRatio,
      const DeepCollectionEquality().hash(_tradeTypes),
      largeTradeVolume,
      institutionalVolume);

  /// Create a copy of VolumeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VolumeDataImplCopyWith<_$VolumeDataImpl> get copyWith =>
      __$$VolumeDataImplCopyWithImpl<_$VolumeDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VolumeDataImplToJson(
      this,
    );
  }
}

abstract class _VolumeData implements VolumeData {
  const factory _VolumeData(
      {required final DateTime timestamp,
      required final double volume,
      required final double avgVolume,
      required final double volumeRatio,
      required final List<TradeType> tradeTypes,
      required final double largeTradeVolume,
      required final double institutionalVolume}) = _$VolumeDataImpl;

  factory _VolumeData.fromJson(Map<String, dynamic> json) =
      _$VolumeDataImpl.fromJson;

  @override
  DateTime get timestamp;
  @override
  double get volume;
  @override
  double get avgVolume;
  @override
  double get volumeRatio;
  @override
  List<TradeType> get tradeTypes;
  @override
  double get largeTradeVolume;
  @override
  double get institutionalVolume;

  /// Create a copy of VolumeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VolumeDataImplCopyWith<_$VolumeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TradeType _$TradeTypeFromJson(Map<String, dynamic> json) {
  return _TradeType.fromJson(json);
}

/// @nodoc
mixin _$TradeType {
  String get type => throw _privateConstructorUsedError;
  double get volume => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  /// Serializes this TradeType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TradeType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TradeTypeCopyWith<TradeType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradeTypeCopyWith<$Res> {
  factory $TradeTypeCopyWith(TradeType value, $Res Function(TradeType) then) =
      _$TradeTypeCopyWithImpl<$Res, TradeType>;
  @useResult
  $Res call({String type, double volume, double price, DateTime timestamp});
}

/// @nodoc
class _$TradeTypeCopyWithImpl<$Res, $Val extends TradeType>
    implements $TradeTypeCopyWith<$Res> {
  _$TradeTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TradeType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? volume = null,
    Object? price = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TradeTypeImplCopyWith<$Res>
    implements $TradeTypeCopyWith<$Res> {
  factory _$$TradeTypeImplCopyWith(
          _$TradeTypeImpl value, $Res Function(_$TradeTypeImpl) then) =
      __$$TradeTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, double volume, double price, DateTime timestamp});
}

/// @nodoc
class __$$TradeTypeImplCopyWithImpl<$Res>
    extends _$TradeTypeCopyWithImpl<$Res, _$TradeTypeImpl>
    implements _$$TradeTypeImplCopyWith<$Res> {
  __$$TradeTypeImplCopyWithImpl(
      _$TradeTypeImpl _value, $Res Function(_$TradeTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of TradeType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? volume = null,
    Object? price = null,
    Object? timestamp = null,
  }) {
    return _then(_$TradeTypeImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TradeTypeImpl implements _TradeType {
  const _$TradeTypeImpl(
      {required this.type,
      required this.volume,
      required this.price,
      required this.timestamp});

  factory _$TradeTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$TradeTypeImplFromJson(json);

  @override
  final String type;
  @override
  final double volume;
  @override
  final double price;
  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'TradeType(type: $type, volume: $volume, price: $price, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradeTypeImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, volume, price, timestamp);

  /// Create a copy of TradeType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TradeTypeImplCopyWith<_$TradeTypeImpl> get copyWith =>
      __$$TradeTypeImplCopyWithImpl<_$TradeTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TradeTypeImplToJson(
      this,
    );
  }
}

abstract class _TradeType implements TradeType {
  const factory _TradeType(
      {required final String type,
      required final double volume,
      required final double price,
      required final DateTime timestamp}) = _$TradeTypeImpl;

  factory _TradeType.fromJson(Map<String, dynamic> json) =
      _$TradeTypeImpl.fromJson;

  @override
  String get type;
  @override
  double get volume;
  @override
  double get price;
  @override
  DateTime get timestamp;

  /// Create a copy of TradeType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TradeTypeImplCopyWith<_$TradeTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TechnicalIndicators _$TechnicalIndicatorsFromJson(Map<String, dynamic> json) {
  return _TechnicalIndicators.fromJson(json);
}

/// @nodoc
mixin _$TechnicalIndicators {
  double get rsi => throw _privateConstructorUsedError;
  double get macd => throw _privateConstructorUsedError;
  double get macdSignal => throw _privateConstructorUsedError;
  double get macdHistogram => throw _privateConstructorUsedError;
  double get bollingerUpper => throw _privateConstructorUsedError;
  double get bollingerMiddle => throw _privateConstructorUsedError;
  double get bollingerLower => throw _privateConstructorUsedError;
  double get stochasticK => throw _privateConstructorUsedError;
  double get stochasticD => throw _privateConstructorUsedError;
  double get williamsR => throw _privateConstructorUsedError;
  double get atr => throw _privateConstructorUsedError;
  double get adx => throw _privateConstructorUsedError;
  double get obv => throw _privateConstructorUsedError;
  double get vwap => throw _privateConstructorUsedError;

  /// Serializes this TechnicalIndicators to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TechnicalIndicators
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TechnicalIndicatorsCopyWith<TechnicalIndicators> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TechnicalIndicatorsCopyWith<$Res> {
  factory $TechnicalIndicatorsCopyWith(
          TechnicalIndicators value, $Res Function(TechnicalIndicators) then) =
      _$TechnicalIndicatorsCopyWithImpl<$Res, TechnicalIndicators>;
  @useResult
  $Res call(
      {double rsi,
      double macd,
      double macdSignal,
      double macdHistogram,
      double bollingerUpper,
      double bollingerMiddle,
      double bollingerLower,
      double stochasticK,
      double stochasticD,
      double williamsR,
      double atr,
      double adx,
      double obv,
      double vwap});
}

/// @nodoc
class _$TechnicalIndicatorsCopyWithImpl<$Res, $Val extends TechnicalIndicators>
    implements $TechnicalIndicatorsCopyWith<$Res> {
  _$TechnicalIndicatorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TechnicalIndicators
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rsi = null,
    Object? macd = null,
    Object? macdSignal = null,
    Object? macdHistogram = null,
    Object? bollingerUpper = null,
    Object? bollingerMiddle = null,
    Object? bollingerLower = null,
    Object? stochasticK = null,
    Object? stochasticD = null,
    Object? williamsR = null,
    Object? atr = null,
    Object? adx = null,
    Object? obv = null,
    Object? vwap = null,
  }) {
    return _then(_value.copyWith(
      rsi: null == rsi
          ? _value.rsi
          : rsi // ignore: cast_nullable_to_non_nullable
              as double,
      macd: null == macd
          ? _value.macd
          : macd // ignore: cast_nullable_to_non_nullable
              as double,
      macdSignal: null == macdSignal
          ? _value.macdSignal
          : macdSignal // ignore: cast_nullable_to_non_nullable
              as double,
      macdHistogram: null == macdHistogram
          ? _value.macdHistogram
          : macdHistogram // ignore: cast_nullable_to_non_nullable
              as double,
      bollingerUpper: null == bollingerUpper
          ? _value.bollingerUpper
          : bollingerUpper // ignore: cast_nullable_to_non_nullable
              as double,
      bollingerMiddle: null == bollingerMiddle
          ? _value.bollingerMiddle
          : bollingerMiddle // ignore: cast_nullable_to_non_nullable
              as double,
      bollingerLower: null == bollingerLower
          ? _value.bollingerLower
          : bollingerLower // ignore: cast_nullable_to_non_nullable
              as double,
      stochasticK: null == stochasticK
          ? _value.stochasticK
          : stochasticK // ignore: cast_nullable_to_non_nullable
              as double,
      stochasticD: null == stochasticD
          ? _value.stochasticD
          : stochasticD // ignore: cast_nullable_to_non_nullable
              as double,
      williamsR: null == williamsR
          ? _value.williamsR
          : williamsR // ignore: cast_nullable_to_non_nullable
              as double,
      atr: null == atr
          ? _value.atr
          : atr // ignore: cast_nullable_to_non_nullable
              as double,
      adx: null == adx
          ? _value.adx
          : adx // ignore: cast_nullable_to_non_nullable
              as double,
      obv: null == obv
          ? _value.obv
          : obv // ignore: cast_nullable_to_non_nullable
              as double,
      vwap: null == vwap
          ? _value.vwap
          : vwap // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TechnicalIndicatorsImplCopyWith<$Res>
    implements $TechnicalIndicatorsCopyWith<$Res> {
  factory _$$TechnicalIndicatorsImplCopyWith(_$TechnicalIndicatorsImpl value,
          $Res Function(_$TechnicalIndicatorsImpl) then) =
      __$$TechnicalIndicatorsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double rsi,
      double macd,
      double macdSignal,
      double macdHistogram,
      double bollingerUpper,
      double bollingerMiddle,
      double bollingerLower,
      double stochasticK,
      double stochasticD,
      double williamsR,
      double atr,
      double adx,
      double obv,
      double vwap});
}

/// @nodoc
class __$$TechnicalIndicatorsImplCopyWithImpl<$Res>
    extends _$TechnicalIndicatorsCopyWithImpl<$Res, _$TechnicalIndicatorsImpl>
    implements _$$TechnicalIndicatorsImplCopyWith<$Res> {
  __$$TechnicalIndicatorsImplCopyWithImpl(_$TechnicalIndicatorsImpl _value,
      $Res Function(_$TechnicalIndicatorsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TechnicalIndicators
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rsi = null,
    Object? macd = null,
    Object? macdSignal = null,
    Object? macdHistogram = null,
    Object? bollingerUpper = null,
    Object? bollingerMiddle = null,
    Object? bollingerLower = null,
    Object? stochasticK = null,
    Object? stochasticD = null,
    Object? williamsR = null,
    Object? atr = null,
    Object? adx = null,
    Object? obv = null,
    Object? vwap = null,
  }) {
    return _then(_$TechnicalIndicatorsImpl(
      rsi: null == rsi
          ? _value.rsi
          : rsi // ignore: cast_nullable_to_non_nullable
              as double,
      macd: null == macd
          ? _value.macd
          : macd // ignore: cast_nullable_to_non_nullable
              as double,
      macdSignal: null == macdSignal
          ? _value.macdSignal
          : macdSignal // ignore: cast_nullable_to_non_nullable
              as double,
      macdHistogram: null == macdHistogram
          ? _value.macdHistogram
          : macdHistogram // ignore: cast_nullable_to_non_nullable
              as double,
      bollingerUpper: null == bollingerUpper
          ? _value.bollingerUpper
          : bollingerUpper // ignore: cast_nullable_to_non_nullable
              as double,
      bollingerMiddle: null == bollingerMiddle
          ? _value.bollingerMiddle
          : bollingerMiddle // ignore: cast_nullable_to_non_nullable
              as double,
      bollingerLower: null == bollingerLower
          ? _value.bollingerLower
          : bollingerLower // ignore: cast_nullable_to_non_nullable
              as double,
      stochasticK: null == stochasticK
          ? _value.stochasticK
          : stochasticK // ignore: cast_nullable_to_non_nullable
              as double,
      stochasticD: null == stochasticD
          ? _value.stochasticD
          : stochasticD // ignore: cast_nullable_to_non_nullable
              as double,
      williamsR: null == williamsR
          ? _value.williamsR
          : williamsR // ignore: cast_nullable_to_non_nullable
              as double,
      atr: null == atr
          ? _value.atr
          : atr // ignore: cast_nullable_to_non_nullable
              as double,
      adx: null == adx
          ? _value.adx
          : adx // ignore: cast_nullable_to_non_nullable
              as double,
      obv: null == obv
          ? _value.obv
          : obv // ignore: cast_nullable_to_non_nullable
              as double,
      vwap: null == vwap
          ? _value.vwap
          : vwap // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TechnicalIndicatorsImpl implements _TechnicalIndicators {
  const _$TechnicalIndicatorsImpl(
      {required this.rsi,
      required this.macd,
      required this.macdSignal,
      required this.macdHistogram,
      required this.bollingerUpper,
      required this.bollingerMiddle,
      required this.bollingerLower,
      required this.stochasticK,
      required this.stochasticD,
      required this.williamsR,
      required this.atr,
      required this.adx,
      required this.obv,
      required this.vwap});

  factory _$TechnicalIndicatorsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TechnicalIndicatorsImplFromJson(json);

  @override
  final double rsi;
  @override
  final double macd;
  @override
  final double macdSignal;
  @override
  final double macdHistogram;
  @override
  final double bollingerUpper;
  @override
  final double bollingerMiddle;
  @override
  final double bollingerLower;
  @override
  final double stochasticK;
  @override
  final double stochasticD;
  @override
  final double williamsR;
  @override
  final double atr;
  @override
  final double adx;
  @override
  final double obv;
  @override
  final double vwap;

  @override
  String toString() {
    return 'TechnicalIndicators(rsi: $rsi, macd: $macd, macdSignal: $macdSignal, macdHistogram: $macdHistogram, bollingerUpper: $bollingerUpper, bollingerMiddle: $bollingerMiddle, bollingerLower: $bollingerLower, stochasticK: $stochasticK, stochasticD: $stochasticD, williamsR: $williamsR, atr: $atr, adx: $adx, obv: $obv, vwap: $vwap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TechnicalIndicatorsImpl &&
            (identical(other.rsi, rsi) || other.rsi == rsi) &&
            (identical(other.macd, macd) || other.macd == macd) &&
            (identical(other.macdSignal, macdSignal) ||
                other.macdSignal == macdSignal) &&
            (identical(other.macdHistogram, macdHistogram) ||
                other.macdHistogram == macdHistogram) &&
            (identical(other.bollingerUpper, bollingerUpper) ||
                other.bollingerUpper == bollingerUpper) &&
            (identical(other.bollingerMiddle, bollingerMiddle) ||
                other.bollingerMiddle == bollingerMiddle) &&
            (identical(other.bollingerLower, bollingerLower) ||
                other.bollingerLower == bollingerLower) &&
            (identical(other.stochasticK, stochasticK) ||
                other.stochasticK == stochasticK) &&
            (identical(other.stochasticD, stochasticD) ||
                other.stochasticD == stochasticD) &&
            (identical(other.williamsR, williamsR) ||
                other.williamsR == williamsR) &&
            (identical(other.atr, atr) || other.atr == atr) &&
            (identical(other.adx, adx) || other.adx == adx) &&
            (identical(other.obv, obv) || other.obv == obv) &&
            (identical(other.vwap, vwap) || other.vwap == vwap));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      rsi,
      macd,
      macdSignal,
      macdHistogram,
      bollingerUpper,
      bollingerMiddle,
      bollingerLower,
      stochasticK,
      stochasticD,
      williamsR,
      atr,
      adx,
      obv,
      vwap);

  /// Create a copy of TechnicalIndicators
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TechnicalIndicatorsImplCopyWith<_$TechnicalIndicatorsImpl> get copyWith =>
      __$$TechnicalIndicatorsImplCopyWithImpl<_$TechnicalIndicatorsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TechnicalIndicatorsImplToJson(
      this,
    );
  }
}

abstract class _TechnicalIndicators implements TechnicalIndicators {
  const factory _TechnicalIndicators(
      {required final double rsi,
      required final double macd,
      required final double macdSignal,
      required final double macdHistogram,
      required final double bollingerUpper,
      required final double bollingerMiddle,
      required final double bollingerLower,
      required final double stochasticK,
      required final double stochasticD,
      required final double williamsR,
      required final double atr,
      required final double adx,
      required final double obv,
      required final double vwap}) = _$TechnicalIndicatorsImpl;

  factory _TechnicalIndicators.fromJson(Map<String, dynamic> json) =
      _$TechnicalIndicatorsImpl.fromJson;

  @override
  double get rsi;
  @override
  double get macd;
  @override
  double get macdSignal;
  @override
  double get macdHistogram;
  @override
  double get bollingerUpper;
  @override
  double get bollingerMiddle;
  @override
  double get bollingerLower;
  @override
  double get stochasticK;
  @override
  double get stochasticD;
  @override
  double get williamsR;
  @override
  double get atr;
  @override
  double get adx;
  @override
  double get obv;
  @override
  double get vwap;

  /// Create a copy of TechnicalIndicators
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TechnicalIndicatorsImplCopyWith<_$TechnicalIndicatorsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SentimentData _$SentimentDataFromJson(Map<String, dynamic> json) {
  return _SentimentData.fromJson(json);
}

/// @nodoc
mixin _$SentimentData {
  double get overallSentiment => throw _privateConstructorUsedError;
  double get newsSentiment => throw _privateConstructorUsedError;
  double get socialSentiment => throw _privateConstructorUsedError;
  double get analystSentiment => throw _privateConstructorUsedError;
  int get bullishArticles => throw _privateConstructorUsedError;
  int get bearishArticles => throw _privateConstructorUsedError;
  int get neutralArticles => throw _privateConstructorUsedError;
  List<SentimentSource> get sources => throw _privateConstructorUsedError;

  /// Serializes this SentimentData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SentimentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SentimentDataCopyWith<SentimentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SentimentDataCopyWith<$Res> {
  factory $SentimentDataCopyWith(
          SentimentData value, $Res Function(SentimentData) then) =
      _$SentimentDataCopyWithImpl<$Res, SentimentData>;
  @useResult
  $Res call(
      {double overallSentiment,
      double newsSentiment,
      double socialSentiment,
      double analystSentiment,
      int bullishArticles,
      int bearishArticles,
      int neutralArticles,
      List<SentimentSource> sources});
}

/// @nodoc
class _$SentimentDataCopyWithImpl<$Res, $Val extends SentimentData>
    implements $SentimentDataCopyWith<$Res> {
  _$SentimentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SentimentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overallSentiment = null,
    Object? newsSentiment = null,
    Object? socialSentiment = null,
    Object? analystSentiment = null,
    Object? bullishArticles = null,
    Object? bearishArticles = null,
    Object? neutralArticles = null,
    Object? sources = null,
  }) {
    return _then(_value.copyWith(
      overallSentiment: null == overallSentiment
          ? _value.overallSentiment
          : overallSentiment // ignore: cast_nullable_to_non_nullable
              as double,
      newsSentiment: null == newsSentiment
          ? _value.newsSentiment
          : newsSentiment // ignore: cast_nullable_to_non_nullable
              as double,
      socialSentiment: null == socialSentiment
          ? _value.socialSentiment
          : socialSentiment // ignore: cast_nullable_to_non_nullable
              as double,
      analystSentiment: null == analystSentiment
          ? _value.analystSentiment
          : analystSentiment // ignore: cast_nullable_to_non_nullable
              as double,
      bullishArticles: null == bullishArticles
          ? _value.bullishArticles
          : bullishArticles // ignore: cast_nullable_to_non_nullable
              as int,
      bearishArticles: null == bearishArticles
          ? _value.bearishArticles
          : bearishArticles // ignore: cast_nullable_to_non_nullable
              as int,
      neutralArticles: null == neutralArticles
          ? _value.neutralArticles
          : neutralArticles // ignore: cast_nullable_to_non_nullable
              as int,
      sources: null == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<SentimentSource>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SentimentDataImplCopyWith<$Res>
    implements $SentimentDataCopyWith<$Res> {
  factory _$$SentimentDataImplCopyWith(
          _$SentimentDataImpl value, $Res Function(_$SentimentDataImpl) then) =
      __$$SentimentDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double overallSentiment,
      double newsSentiment,
      double socialSentiment,
      double analystSentiment,
      int bullishArticles,
      int bearishArticles,
      int neutralArticles,
      List<SentimentSource> sources});
}

/// @nodoc
class __$$SentimentDataImplCopyWithImpl<$Res>
    extends _$SentimentDataCopyWithImpl<$Res, _$SentimentDataImpl>
    implements _$$SentimentDataImplCopyWith<$Res> {
  __$$SentimentDataImplCopyWithImpl(
      _$SentimentDataImpl _value, $Res Function(_$SentimentDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SentimentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overallSentiment = null,
    Object? newsSentiment = null,
    Object? socialSentiment = null,
    Object? analystSentiment = null,
    Object? bullishArticles = null,
    Object? bearishArticles = null,
    Object? neutralArticles = null,
    Object? sources = null,
  }) {
    return _then(_$SentimentDataImpl(
      overallSentiment: null == overallSentiment
          ? _value.overallSentiment
          : overallSentiment // ignore: cast_nullable_to_non_nullable
              as double,
      newsSentiment: null == newsSentiment
          ? _value.newsSentiment
          : newsSentiment // ignore: cast_nullable_to_non_nullable
              as double,
      socialSentiment: null == socialSentiment
          ? _value.socialSentiment
          : socialSentiment // ignore: cast_nullable_to_non_nullable
              as double,
      analystSentiment: null == analystSentiment
          ? _value.analystSentiment
          : analystSentiment // ignore: cast_nullable_to_non_nullable
              as double,
      bullishArticles: null == bullishArticles
          ? _value.bullishArticles
          : bullishArticles // ignore: cast_nullable_to_non_nullable
              as int,
      bearishArticles: null == bearishArticles
          ? _value.bearishArticles
          : bearishArticles // ignore: cast_nullable_to_non_nullable
              as int,
      neutralArticles: null == neutralArticles
          ? _value.neutralArticles
          : neutralArticles // ignore: cast_nullable_to_non_nullable
              as int,
      sources: null == sources
          ? _value._sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<SentimentSource>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SentimentDataImpl implements _SentimentData {
  const _$SentimentDataImpl(
      {required this.overallSentiment,
      required this.newsSentiment,
      required this.socialSentiment,
      required this.analystSentiment,
      required this.bullishArticles,
      required this.bearishArticles,
      required this.neutralArticles,
      required final List<SentimentSource> sources})
      : _sources = sources;

  factory _$SentimentDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SentimentDataImplFromJson(json);

  @override
  final double overallSentiment;
  @override
  final double newsSentiment;
  @override
  final double socialSentiment;
  @override
  final double analystSentiment;
  @override
  final int bullishArticles;
  @override
  final int bearishArticles;
  @override
  final int neutralArticles;
  final List<SentimentSource> _sources;
  @override
  List<SentimentSource> get sources {
    if (_sources is EqualUnmodifiableListView) return _sources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sources);
  }

  @override
  String toString() {
    return 'SentimentData(overallSentiment: $overallSentiment, newsSentiment: $newsSentiment, socialSentiment: $socialSentiment, analystSentiment: $analystSentiment, bullishArticles: $bullishArticles, bearishArticles: $bearishArticles, neutralArticles: $neutralArticles, sources: $sources)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SentimentDataImpl &&
            (identical(other.overallSentiment, overallSentiment) ||
                other.overallSentiment == overallSentiment) &&
            (identical(other.newsSentiment, newsSentiment) ||
                other.newsSentiment == newsSentiment) &&
            (identical(other.socialSentiment, socialSentiment) ||
                other.socialSentiment == socialSentiment) &&
            (identical(other.analystSentiment, analystSentiment) ||
                other.analystSentiment == analystSentiment) &&
            (identical(other.bullishArticles, bullishArticles) ||
                other.bullishArticles == bullishArticles) &&
            (identical(other.bearishArticles, bearishArticles) ||
                other.bearishArticles == bearishArticles) &&
            (identical(other.neutralArticles, neutralArticles) ||
                other.neutralArticles == neutralArticles) &&
            const DeepCollectionEquality().equals(other._sources, _sources));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      overallSentiment,
      newsSentiment,
      socialSentiment,
      analystSentiment,
      bullishArticles,
      bearishArticles,
      neutralArticles,
      const DeepCollectionEquality().hash(_sources));

  /// Create a copy of SentimentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SentimentDataImplCopyWith<_$SentimentDataImpl> get copyWith =>
      __$$SentimentDataImplCopyWithImpl<_$SentimentDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SentimentDataImplToJson(
      this,
    );
  }
}

abstract class _SentimentData implements SentimentData {
  const factory _SentimentData(
      {required final double overallSentiment,
      required final double newsSentiment,
      required final double socialSentiment,
      required final double analystSentiment,
      required final int bullishArticles,
      required final int bearishArticles,
      required final int neutralArticles,
      required final List<SentimentSource> sources}) = _$SentimentDataImpl;

  factory _SentimentData.fromJson(Map<String, dynamic> json) =
      _$SentimentDataImpl.fromJson;

  @override
  double get overallSentiment;
  @override
  double get newsSentiment;
  @override
  double get socialSentiment;
  @override
  double get analystSentiment;
  @override
  int get bullishArticles;
  @override
  int get bearishArticles;
  @override
  int get neutralArticles;
  @override
  List<SentimentSource> get sources;

  /// Create a copy of SentimentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SentimentDataImplCopyWith<_$SentimentDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SentimentSource _$SentimentSourceFromJson(Map<String, dynamic> json) {
  return _SentimentSource.fromJson(json);
}

/// @nodoc
mixin _$SentimentSource {
  String get source => throw _privateConstructorUsedError;
  double get sentiment => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  /// Serializes this SentimentSource to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SentimentSource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SentimentSourceCopyWith<SentimentSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SentimentSourceCopyWith<$Res> {
  factory $SentimentSourceCopyWith(
          SentimentSource value, $Res Function(SentimentSource) then) =
      _$SentimentSourceCopyWithImpl<$Res, SentimentSource>;
  @useResult
  $Res call({String source, double sentiment, DateTime timestamp});
}

/// @nodoc
class _$SentimentSourceCopyWithImpl<$Res, $Val extends SentimentSource>
    implements $SentimentSourceCopyWith<$Res> {
  _$SentimentSourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SentimentSource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? sentiment = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      sentiment: null == sentiment
          ? _value.sentiment
          : sentiment // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SentimentSourceImplCopyWith<$Res>
    implements $SentimentSourceCopyWith<$Res> {
  factory _$$SentimentSourceImplCopyWith(_$SentimentSourceImpl value,
          $Res Function(_$SentimentSourceImpl) then) =
      __$$SentimentSourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String source, double sentiment, DateTime timestamp});
}

/// @nodoc
class __$$SentimentSourceImplCopyWithImpl<$Res>
    extends _$SentimentSourceCopyWithImpl<$Res, _$SentimentSourceImpl>
    implements _$$SentimentSourceImplCopyWith<$Res> {
  __$$SentimentSourceImplCopyWithImpl(
      _$SentimentSourceImpl _value, $Res Function(_$SentimentSourceImpl) _then)
      : super(_value, _then);

  /// Create a copy of SentimentSource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? sentiment = null,
    Object? timestamp = null,
  }) {
    return _then(_$SentimentSourceImpl(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      sentiment: null == sentiment
          ? _value.sentiment
          : sentiment // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SentimentSourceImpl implements _SentimentSource {
  const _$SentimentSourceImpl(
      {required this.source, required this.sentiment, required this.timestamp});

  factory _$SentimentSourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$SentimentSourceImplFromJson(json);

  @override
  final String source;
  @override
  final double sentiment;
  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'SentimentSource(source: $source, sentiment: $sentiment, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SentimentSourceImpl &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.sentiment, sentiment) ||
                other.sentiment == sentiment) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, source, sentiment, timestamp);

  /// Create a copy of SentimentSource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SentimentSourceImplCopyWith<_$SentimentSourceImpl> get copyWith =>
      __$$SentimentSourceImplCopyWithImpl<_$SentimentSourceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SentimentSourceImplToJson(
      this,
    );
  }
}

abstract class _SentimentSource implements SentimentSource {
  const factory _SentimentSource(
      {required final String source,
      required final double sentiment,
      required final DateTime timestamp}) = _$SentimentSourceImpl;

  factory _SentimentSource.fromJson(Map<String, dynamic> json) =
      _$SentimentSourceImpl.fromJson;

  @override
  String get source;
  @override
  double get sentiment;
  @override
  DateTime get timestamp;

  /// Create a copy of SentimentSource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SentimentSourceImplCopyWith<_$SentimentSourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsArticle _$NewsArticleFromJson(Map<String, dynamic> json) {
  return _NewsArticle.fromJson(json);
}

/// @nodoc
mixin _$NewsArticle {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  DateTime get publishedAt => throw _privateConstructorUsedError;
  double get sentiment => throw _privateConstructorUsedError;
  List<String> get mentionedStocks => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  bool get isRead => throw _privateConstructorUsedError;
  DateTime? get readAt => throw _privateConstructorUsedError;

  /// Serializes this NewsArticle to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsArticle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsArticleCopyWith<NewsArticle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsArticleCopyWith<$Res> {
  factory $NewsArticleCopyWith(
          NewsArticle value, $Res Function(NewsArticle) then) =
      _$NewsArticleCopyWithImpl<$Res, NewsArticle>;
  @useResult
  $Res call(
      {String id,
      String title,
      String summary,
      String content,
      String source,
      String url,
      DateTime publishedAt,
      double sentiment,
      List<String> mentionedStocks,
      List<String> tags,
      bool isRead,
      DateTime? readAt});
}

/// @nodoc
class _$NewsArticleCopyWithImpl<$Res, $Val extends NewsArticle>
    implements $NewsArticleCopyWith<$Res> {
  _$NewsArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsArticle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? summary = null,
    Object? content = null,
    Object? source = null,
    Object? url = null,
    Object? publishedAt = null,
    Object? sentiment = null,
    Object? mentionedStocks = null,
    Object? tags = null,
    Object? isRead = null,
    Object? readAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sentiment: null == sentiment
          ? _value.sentiment
          : sentiment // ignore: cast_nullable_to_non_nullable
              as double,
      mentionedStocks: null == mentionedStocks
          ? _value.mentionedStocks
          : mentionedStocks // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      readAt: freezed == readAt
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsArticleImplCopyWith<$Res>
    implements $NewsArticleCopyWith<$Res> {
  factory _$$NewsArticleImplCopyWith(
          _$NewsArticleImpl value, $Res Function(_$NewsArticleImpl) then) =
      __$$NewsArticleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String summary,
      String content,
      String source,
      String url,
      DateTime publishedAt,
      double sentiment,
      List<String> mentionedStocks,
      List<String> tags,
      bool isRead,
      DateTime? readAt});
}

/// @nodoc
class __$$NewsArticleImplCopyWithImpl<$Res>
    extends _$NewsArticleCopyWithImpl<$Res, _$NewsArticleImpl>
    implements _$$NewsArticleImplCopyWith<$Res> {
  __$$NewsArticleImplCopyWithImpl(
      _$NewsArticleImpl _value, $Res Function(_$NewsArticleImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsArticle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? summary = null,
    Object? content = null,
    Object? source = null,
    Object? url = null,
    Object? publishedAt = null,
    Object? sentiment = null,
    Object? mentionedStocks = null,
    Object? tags = null,
    Object? isRead = null,
    Object? readAt = freezed,
  }) {
    return _then(_$NewsArticleImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sentiment: null == sentiment
          ? _value.sentiment
          : sentiment // ignore: cast_nullable_to_non_nullable
              as double,
      mentionedStocks: null == mentionedStocks
          ? _value._mentionedStocks
          : mentionedStocks // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      readAt: freezed == readAt
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsArticleImpl implements _NewsArticle {
  const _$NewsArticleImpl(
      {required this.id,
      required this.title,
      required this.summary,
      required this.content,
      required this.source,
      required this.url,
      required this.publishedAt,
      required this.sentiment,
      required final List<String> mentionedStocks,
      required final List<String> tags,
      required this.isRead,
      required this.readAt})
      : _mentionedStocks = mentionedStocks,
        _tags = tags;

  factory _$NewsArticleImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsArticleImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String summary;
  @override
  final String content;
  @override
  final String source;
  @override
  final String url;
  @override
  final DateTime publishedAt;
  @override
  final double sentiment;
  final List<String> _mentionedStocks;
  @override
  List<String> get mentionedStocks {
    if (_mentionedStocks is EqualUnmodifiableListView) return _mentionedStocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mentionedStocks);
  }

  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final bool isRead;
  @override
  final DateTime? readAt;

  @override
  String toString() {
    return 'NewsArticle(id: $id, title: $title, summary: $summary, content: $content, source: $source, url: $url, publishedAt: $publishedAt, sentiment: $sentiment, mentionedStocks: $mentionedStocks, tags: $tags, isRead: $isRead, readAt: $readAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsArticleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.sentiment, sentiment) ||
                other.sentiment == sentiment) &&
            const DeepCollectionEquality()
                .equals(other._mentionedStocks, _mentionedStocks) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.readAt, readAt) || other.readAt == readAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      summary,
      content,
      source,
      url,
      publishedAt,
      sentiment,
      const DeepCollectionEquality().hash(_mentionedStocks),
      const DeepCollectionEquality().hash(_tags),
      isRead,
      readAt);

  /// Create a copy of NewsArticle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsArticleImplCopyWith<_$NewsArticleImpl> get copyWith =>
      __$$NewsArticleImplCopyWithImpl<_$NewsArticleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsArticleImplToJson(
      this,
    );
  }
}

abstract class _NewsArticle implements NewsArticle {
  const factory _NewsArticle(
      {required final String id,
      required final String title,
      required final String summary,
      required final String content,
      required final String source,
      required final String url,
      required final DateTime publishedAt,
      required final double sentiment,
      required final List<String> mentionedStocks,
      required final List<String> tags,
      required final bool isRead,
      required final DateTime? readAt}) = _$NewsArticleImpl;

  factory _NewsArticle.fromJson(Map<String, dynamic> json) =
      _$NewsArticleImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get summary;
  @override
  String get content;
  @override
  String get source;
  @override
  String get url;
  @override
  DateTime get publishedAt;
  @override
  double get sentiment;
  @override
  List<String> get mentionedStocks;
  @override
  List<String> get tags;
  @override
  bool get isRead;
  @override
  DateTime? get readAt;

  /// Create a copy of NewsArticle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsArticleImplCopyWith<_$NewsArticleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OptionFlow _$OptionFlowFromJson(Map<String, dynamic> json) {
  return _OptionFlow.fromJson(json);
}

/// @nodoc
mixin _$OptionFlow {
  DateTime get timestamp => throw _privateConstructorUsedError;
  double get putVolume => throw _privateConstructorUsedError;
  double get callVolume => throw _privateConstructorUsedError;
  double get putCallRatio => throw _privateConstructorUsedError;
  List<OptionTrade> get unusualActivity => throw _privateConstructorUsedError;
  double get totalVolume => throw _privateConstructorUsedError;

  /// Serializes this OptionFlow to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OptionFlow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OptionFlowCopyWith<OptionFlow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionFlowCopyWith<$Res> {
  factory $OptionFlowCopyWith(
          OptionFlow value, $Res Function(OptionFlow) then) =
      _$OptionFlowCopyWithImpl<$Res, OptionFlow>;
  @useResult
  $Res call(
      {DateTime timestamp,
      double putVolume,
      double callVolume,
      double putCallRatio,
      List<OptionTrade> unusualActivity,
      double totalVolume});
}

/// @nodoc
class _$OptionFlowCopyWithImpl<$Res, $Val extends OptionFlow>
    implements $OptionFlowCopyWith<$Res> {
  _$OptionFlowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OptionFlow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? putVolume = null,
    Object? callVolume = null,
    Object? putCallRatio = null,
    Object? unusualActivity = null,
    Object? totalVolume = null,
  }) {
    return _then(_value.copyWith(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      putVolume: null == putVolume
          ? _value.putVolume
          : putVolume // ignore: cast_nullable_to_non_nullable
              as double,
      callVolume: null == callVolume
          ? _value.callVolume
          : callVolume // ignore: cast_nullable_to_non_nullable
              as double,
      putCallRatio: null == putCallRatio
          ? _value.putCallRatio
          : putCallRatio // ignore: cast_nullable_to_non_nullable
              as double,
      unusualActivity: null == unusualActivity
          ? _value.unusualActivity
          : unusualActivity // ignore: cast_nullable_to_non_nullable
              as List<OptionTrade>,
      totalVolume: null == totalVolume
          ? _value.totalVolume
          : totalVolume // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OptionFlowImplCopyWith<$Res>
    implements $OptionFlowCopyWith<$Res> {
  factory _$$OptionFlowImplCopyWith(
          _$OptionFlowImpl value, $Res Function(_$OptionFlowImpl) then) =
      __$$OptionFlowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime timestamp,
      double putVolume,
      double callVolume,
      double putCallRatio,
      List<OptionTrade> unusualActivity,
      double totalVolume});
}

/// @nodoc
class __$$OptionFlowImplCopyWithImpl<$Res>
    extends _$OptionFlowCopyWithImpl<$Res, _$OptionFlowImpl>
    implements _$$OptionFlowImplCopyWith<$Res> {
  __$$OptionFlowImplCopyWithImpl(
      _$OptionFlowImpl _value, $Res Function(_$OptionFlowImpl) _then)
      : super(_value, _then);

  /// Create a copy of OptionFlow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? putVolume = null,
    Object? callVolume = null,
    Object? putCallRatio = null,
    Object? unusualActivity = null,
    Object? totalVolume = null,
  }) {
    return _then(_$OptionFlowImpl(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      putVolume: null == putVolume
          ? _value.putVolume
          : putVolume // ignore: cast_nullable_to_non_nullable
              as double,
      callVolume: null == callVolume
          ? _value.callVolume
          : callVolume // ignore: cast_nullable_to_non_nullable
              as double,
      putCallRatio: null == putCallRatio
          ? _value.putCallRatio
          : putCallRatio // ignore: cast_nullable_to_non_nullable
              as double,
      unusualActivity: null == unusualActivity
          ? _value._unusualActivity
          : unusualActivity // ignore: cast_nullable_to_non_nullable
              as List<OptionTrade>,
      totalVolume: null == totalVolume
          ? _value.totalVolume
          : totalVolume // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OptionFlowImpl implements _OptionFlow {
  const _$OptionFlowImpl(
      {required this.timestamp,
      required this.putVolume,
      required this.callVolume,
      required this.putCallRatio,
      required final List<OptionTrade> unusualActivity,
      required this.totalVolume})
      : _unusualActivity = unusualActivity;

  factory _$OptionFlowImpl.fromJson(Map<String, dynamic> json) =>
      _$$OptionFlowImplFromJson(json);

  @override
  final DateTime timestamp;
  @override
  final double putVolume;
  @override
  final double callVolume;
  @override
  final double putCallRatio;
  final List<OptionTrade> _unusualActivity;
  @override
  List<OptionTrade> get unusualActivity {
    if (_unusualActivity is EqualUnmodifiableListView) return _unusualActivity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_unusualActivity);
  }

  @override
  final double totalVolume;

  @override
  String toString() {
    return 'OptionFlow(timestamp: $timestamp, putVolume: $putVolume, callVolume: $callVolume, putCallRatio: $putCallRatio, unusualActivity: $unusualActivity, totalVolume: $totalVolume)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OptionFlowImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.putVolume, putVolume) ||
                other.putVolume == putVolume) &&
            (identical(other.callVolume, callVolume) ||
                other.callVolume == callVolume) &&
            (identical(other.putCallRatio, putCallRatio) ||
                other.putCallRatio == putCallRatio) &&
            const DeepCollectionEquality()
                .equals(other._unusualActivity, _unusualActivity) &&
            (identical(other.totalVolume, totalVolume) ||
                other.totalVolume == totalVolume));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timestamp,
      putVolume,
      callVolume,
      putCallRatio,
      const DeepCollectionEquality().hash(_unusualActivity),
      totalVolume);

  /// Create a copy of OptionFlow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OptionFlowImplCopyWith<_$OptionFlowImpl> get copyWith =>
      __$$OptionFlowImplCopyWithImpl<_$OptionFlowImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OptionFlowImplToJson(
      this,
    );
  }
}

abstract class _OptionFlow implements OptionFlow {
  const factory _OptionFlow(
      {required final DateTime timestamp,
      required final double putVolume,
      required final double callVolume,
      required final double putCallRatio,
      required final List<OptionTrade> unusualActivity,
      required final double totalVolume}) = _$OptionFlowImpl;

  factory _OptionFlow.fromJson(Map<String, dynamic> json) =
      _$OptionFlowImpl.fromJson;

  @override
  DateTime get timestamp;
  @override
  double get putVolume;
  @override
  double get callVolume;
  @override
  double get putCallRatio;
  @override
  List<OptionTrade> get unusualActivity;
  @override
  double get totalVolume;

  /// Create a copy of OptionFlow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OptionFlowImplCopyWith<_$OptionFlowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OptionTrade _$OptionTradeFromJson(Map<String, dynamic> json) {
  return _OptionTrade.fromJson(json);
}

/// @nodoc
mixin _$OptionTrade {
  String get symbol => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  double get strike => throw _privateConstructorUsedError;
  DateTime get expiration => throw _privateConstructorUsedError;
  double get volume => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get trader => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  /// Serializes this OptionTrade to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OptionTrade
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OptionTradeCopyWith<OptionTrade> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionTradeCopyWith<$Res> {
  factory $OptionTradeCopyWith(
          OptionTrade value, $Res Function(OptionTrade) then) =
      _$OptionTradeCopyWithImpl<$Res, OptionTrade>;
  @useResult
  $Res call(
      {String symbol,
      String type,
      double strike,
      DateTime expiration,
      double volume,
      double price,
      String trader,
      DateTime timestamp});
}

/// @nodoc
class _$OptionTradeCopyWithImpl<$Res, $Val extends OptionTrade>
    implements $OptionTradeCopyWith<$Res> {
  _$OptionTradeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OptionTrade
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? type = null,
    Object? strike = null,
    Object? expiration = null,
    Object? volume = null,
    Object? price = null,
    Object? trader = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      strike: null == strike
          ? _value.strike
          : strike // ignore: cast_nullable_to_non_nullable
              as double,
      expiration: null == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as DateTime,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      trader: null == trader
          ? _value.trader
          : trader // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OptionTradeImplCopyWith<$Res>
    implements $OptionTradeCopyWith<$Res> {
  factory _$$OptionTradeImplCopyWith(
          _$OptionTradeImpl value, $Res Function(_$OptionTradeImpl) then) =
      __$$OptionTradeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      String type,
      double strike,
      DateTime expiration,
      double volume,
      double price,
      String trader,
      DateTime timestamp});
}

/// @nodoc
class __$$OptionTradeImplCopyWithImpl<$Res>
    extends _$OptionTradeCopyWithImpl<$Res, _$OptionTradeImpl>
    implements _$$OptionTradeImplCopyWith<$Res> {
  __$$OptionTradeImplCopyWithImpl(
      _$OptionTradeImpl _value, $Res Function(_$OptionTradeImpl) _then)
      : super(_value, _then);

  /// Create a copy of OptionTrade
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? type = null,
    Object? strike = null,
    Object? expiration = null,
    Object? volume = null,
    Object? price = null,
    Object? trader = null,
    Object? timestamp = null,
  }) {
    return _then(_$OptionTradeImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      strike: null == strike
          ? _value.strike
          : strike // ignore: cast_nullable_to_non_nullable
              as double,
      expiration: null == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as DateTime,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      trader: null == trader
          ? _value.trader
          : trader // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OptionTradeImpl implements _OptionTrade {
  const _$OptionTradeImpl(
      {required this.symbol,
      required this.type,
      required this.strike,
      required this.expiration,
      required this.volume,
      required this.price,
      required this.trader,
      required this.timestamp});

  factory _$OptionTradeImpl.fromJson(Map<String, dynamic> json) =>
      _$$OptionTradeImplFromJson(json);

  @override
  final String symbol;
  @override
  final String type;
  @override
  final double strike;
  @override
  final DateTime expiration;
  @override
  final double volume;
  @override
  final double price;
  @override
  final String trader;
  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'OptionTrade(symbol: $symbol, type: $type, strike: $strike, expiration: $expiration, volume: $volume, price: $price, trader: $trader, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OptionTradeImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.strike, strike) || other.strike == strike) &&
            (identical(other.expiration, expiration) ||
                other.expiration == expiration) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.trader, trader) || other.trader == trader) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, symbol, type, strike, expiration,
      volume, price, trader, timestamp);

  /// Create a copy of OptionTrade
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OptionTradeImplCopyWith<_$OptionTradeImpl> get copyWith =>
      __$$OptionTradeImplCopyWithImpl<_$OptionTradeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OptionTradeImplToJson(
      this,
    );
  }
}

abstract class _OptionTrade implements OptionTrade {
  const factory _OptionTrade(
      {required final String symbol,
      required final String type,
      required final double strike,
      required final DateTime expiration,
      required final double volume,
      required final double price,
      required final String trader,
      required final DateTime timestamp}) = _$OptionTradeImpl;

  factory _OptionTrade.fromJson(Map<String, dynamic> json) =
      _$OptionTradeImpl.fromJson;

  @override
  String get symbol;
  @override
  String get type;
  @override
  double get strike;
  @override
  DateTime get expiration;
  @override
  double get volume;
  @override
  double get price;
  @override
  String get trader;
  @override
  DateTime get timestamp;

  /// Create a copy of OptionTrade
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OptionTradeImplCopyWith<_$OptionTradeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SupplyDemandZones _$SupplyDemandZonesFromJson(Map<String, dynamic> json) {
  return _SupplyDemandZones.fromJson(json);
}

/// @nodoc
mixin _$SupplyDemandZones {
  List<Zone> get supplyZones => throw _privateConstructorUsedError;
  List<Zone> get demandZones => throw _privateConstructorUsedError;
  double get currentPrice => throw _privateConstructorUsedError;

  /// Serializes this SupplyDemandZones to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupplyDemandZones
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupplyDemandZonesCopyWith<SupplyDemandZones> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplyDemandZonesCopyWith<$Res> {
  factory $SupplyDemandZonesCopyWith(
          SupplyDemandZones value, $Res Function(SupplyDemandZones) then) =
      _$SupplyDemandZonesCopyWithImpl<$Res, SupplyDemandZones>;
  @useResult
  $Res call(
      {List<Zone> supplyZones, List<Zone> demandZones, double currentPrice});
}

/// @nodoc
class _$SupplyDemandZonesCopyWithImpl<$Res, $Val extends SupplyDemandZones>
    implements $SupplyDemandZonesCopyWith<$Res> {
  _$SupplyDemandZonesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupplyDemandZones
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supplyZones = null,
    Object? demandZones = null,
    Object? currentPrice = null,
  }) {
    return _then(_value.copyWith(
      supplyZones: null == supplyZones
          ? _value.supplyZones
          : supplyZones // ignore: cast_nullable_to_non_nullable
              as List<Zone>,
      demandZones: null == demandZones
          ? _value.demandZones
          : demandZones // ignore: cast_nullable_to_non_nullable
              as List<Zone>,
      currentPrice: null == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupplyDemandZonesImplCopyWith<$Res>
    implements $SupplyDemandZonesCopyWith<$Res> {
  factory _$$SupplyDemandZonesImplCopyWith(_$SupplyDemandZonesImpl value,
          $Res Function(_$SupplyDemandZonesImpl) then) =
      __$$SupplyDemandZonesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Zone> supplyZones, List<Zone> demandZones, double currentPrice});
}

/// @nodoc
class __$$SupplyDemandZonesImplCopyWithImpl<$Res>
    extends _$SupplyDemandZonesCopyWithImpl<$Res, _$SupplyDemandZonesImpl>
    implements _$$SupplyDemandZonesImplCopyWith<$Res> {
  __$$SupplyDemandZonesImplCopyWithImpl(_$SupplyDemandZonesImpl _value,
      $Res Function(_$SupplyDemandZonesImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupplyDemandZones
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supplyZones = null,
    Object? demandZones = null,
    Object? currentPrice = null,
  }) {
    return _then(_$SupplyDemandZonesImpl(
      supplyZones: null == supplyZones
          ? _value._supplyZones
          : supplyZones // ignore: cast_nullable_to_non_nullable
              as List<Zone>,
      demandZones: null == demandZones
          ? _value._demandZones
          : demandZones // ignore: cast_nullable_to_non_nullable
              as List<Zone>,
      currentPrice: null == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupplyDemandZonesImpl implements _SupplyDemandZones {
  const _$SupplyDemandZonesImpl(
      {required final List<Zone> supplyZones,
      required final List<Zone> demandZones,
      required this.currentPrice})
      : _supplyZones = supplyZones,
        _demandZones = demandZones;

  factory _$SupplyDemandZonesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupplyDemandZonesImplFromJson(json);

  final List<Zone> _supplyZones;
  @override
  List<Zone> get supplyZones {
    if (_supplyZones is EqualUnmodifiableListView) return _supplyZones;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_supplyZones);
  }

  final List<Zone> _demandZones;
  @override
  List<Zone> get demandZones {
    if (_demandZones is EqualUnmodifiableListView) return _demandZones;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_demandZones);
  }

  @override
  final double currentPrice;

  @override
  String toString() {
    return 'SupplyDemandZones(supplyZones: $supplyZones, demandZones: $demandZones, currentPrice: $currentPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupplyDemandZonesImpl &&
            const DeepCollectionEquality()
                .equals(other._supplyZones, _supplyZones) &&
            const DeepCollectionEquality()
                .equals(other._demandZones, _demandZones) &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_supplyZones),
      const DeepCollectionEquality().hash(_demandZones),
      currentPrice);

  /// Create a copy of SupplyDemandZones
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupplyDemandZonesImplCopyWith<_$SupplyDemandZonesImpl> get copyWith =>
      __$$SupplyDemandZonesImplCopyWithImpl<_$SupplyDemandZonesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupplyDemandZonesImplToJson(
      this,
    );
  }
}

abstract class _SupplyDemandZones implements SupplyDemandZones {
  const factory _SupplyDemandZones(
      {required final List<Zone> supplyZones,
      required final List<Zone> demandZones,
      required final double currentPrice}) = _$SupplyDemandZonesImpl;

  factory _SupplyDemandZones.fromJson(Map<String, dynamic> json) =
      _$SupplyDemandZonesImpl.fromJson;

  @override
  List<Zone> get supplyZones;
  @override
  List<Zone> get demandZones;
  @override
  double get currentPrice;

  /// Create a copy of SupplyDemandZones
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupplyDemandZonesImplCopyWith<_$SupplyDemandZonesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Zone _$ZoneFromJson(Map<String, dynamic> json) {
  return _Zone.fromJson(json);
}

/// @nodoc
mixin _$Zone {
  double get price => throw _privateConstructorUsedError;
  double get strength => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  int get touches => throw _privateConstructorUsedError;
  DateTime get lastTouch => throw _privateConstructorUsedError;

  /// Serializes this Zone to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Zone
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ZoneCopyWith<Zone> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZoneCopyWith<$Res> {
  factory $ZoneCopyWith(Zone value, $Res Function(Zone) then) =
      _$ZoneCopyWithImpl<$Res, Zone>;
  @useResult
  $Res call(
      {double price,
      double strength,
      DateTime created,
      int touches,
      DateTime lastTouch});
}

/// @nodoc
class _$ZoneCopyWithImpl<$Res, $Val extends Zone>
    implements $ZoneCopyWith<$Res> {
  _$ZoneCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Zone
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? strength = null,
    Object? created = null,
    Object? touches = null,
    Object? lastTouch = null,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      strength: null == strength
          ? _value.strength
          : strength // ignore: cast_nullable_to_non_nullable
              as double,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      touches: null == touches
          ? _value.touches
          : touches // ignore: cast_nullable_to_non_nullable
              as int,
      lastTouch: null == lastTouch
          ? _value.lastTouch
          : lastTouch // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ZoneImplCopyWith<$Res> implements $ZoneCopyWith<$Res> {
  factory _$$ZoneImplCopyWith(
          _$ZoneImpl value, $Res Function(_$ZoneImpl) then) =
      __$$ZoneImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double price,
      double strength,
      DateTime created,
      int touches,
      DateTime lastTouch});
}

/// @nodoc
class __$$ZoneImplCopyWithImpl<$Res>
    extends _$ZoneCopyWithImpl<$Res, _$ZoneImpl>
    implements _$$ZoneImplCopyWith<$Res> {
  __$$ZoneImplCopyWithImpl(_$ZoneImpl _value, $Res Function(_$ZoneImpl) _then)
      : super(_value, _then);

  /// Create a copy of Zone
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? strength = null,
    Object? created = null,
    Object? touches = null,
    Object? lastTouch = null,
  }) {
    return _then(_$ZoneImpl(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      strength: null == strength
          ? _value.strength
          : strength // ignore: cast_nullable_to_non_nullable
              as double,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      touches: null == touches
          ? _value.touches
          : touches // ignore: cast_nullable_to_non_nullable
              as int,
      lastTouch: null == lastTouch
          ? _value.lastTouch
          : lastTouch // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ZoneImpl implements _Zone {
  const _$ZoneImpl(
      {required this.price,
      required this.strength,
      required this.created,
      required this.touches,
      required this.lastTouch});

  factory _$ZoneImpl.fromJson(Map<String, dynamic> json) =>
      _$$ZoneImplFromJson(json);

  @override
  final double price;
  @override
  final double strength;
  @override
  final DateTime created;
  @override
  final int touches;
  @override
  final DateTime lastTouch;

  @override
  String toString() {
    return 'Zone(price: $price, strength: $strength, created: $created, touches: $touches, lastTouch: $lastTouch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZoneImpl &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.strength, strength) ||
                other.strength == strength) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.touches, touches) || other.touches == touches) &&
            (identical(other.lastTouch, lastTouch) ||
                other.lastTouch == lastTouch));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, price, strength, created, touches, lastTouch);

  /// Create a copy of Zone
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ZoneImplCopyWith<_$ZoneImpl> get copyWith =>
      __$$ZoneImplCopyWithImpl<_$ZoneImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ZoneImplToJson(
      this,
    );
  }
}

abstract class _Zone implements Zone {
  const factory _Zone(
      {required final double price,
      required final double strength,
      required final DateTime created,
      required final int touches,
      required final DateTime lastTouch}) = _$ZoneImpl;

  factory _Zone.fromJson(Map<String, dynamic> json) = _$ZoneImpl.fromJson;

  @override
  double get price;
  @override
  double get strength;
  @override
  DateTime get created;
  @override
  int get touches;
  @override
  DateTime get lastTouch;

  /// Create a copy of Zone
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ZoneImplCopyWith<_$ZoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ElliottWaveData _$ElliottWaveDataFromJson(Map<String, dynamic> json) {
  return _ElliottWaveData.fromJson(json);
}

/// @nodoc
mixin _$ElliottWaveData {
  int get currentWave => throw _privateConstructorUsedError;
  double get wave1Start => throw _privateConstructorUsedError;
  double get wave1End => throw _privateConstructorUsedError;
  double get wave2End => throw _privateConstructorUsedError;
  double get wave3End => throw _privateConstructorUsedError;
  double get wave4End => throw _privateConstructorUsedError;
  double get wave5End => throw _privateConstructorUsedError;
  DateTime get analysisDate => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;

  /// Serializes this ElliottWaveData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ElliottWaveData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ElliottWaveDataCopyWith<ElliottWaveData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElliottWaveDataCopyWith<$Res> {
  factory $ElliottWaveDataCopyWith(
          ElliottWaveData value, $Res Function(ElliottWaveData) then) =
      _$ElliottWaveDataCopyWithImpl<$Res, ElliottWaveData>;
  @useResult
  $Res call(
      {int currentWave,
      double wave1Start,
      double wave1End,
      double wave2End,
      double wave3End,
      double wave4End,
      double wave5End,
      DateTime analysisDate,
      double confidence});
}

/// @nodoc
class _$ElliottWaveDataCopyWithImpl<$Res, $Val extends ElliottWaveData>
    implements $ElliottWaveDataCopyWith<$Res> {
  _$ElliottWaveDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ElliottWaveData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentWave = null,
    Object? wave1Start = null,
    Object? wave1End = null,
    Object? wave2End = null,
    Object? wave3End = null,
    Object? wave4End = null,
    Object? wave5End = null,
    Object? analysisDate = null,
    Object? confidence = null,
  }) {
    return _then(_value.copyWith(
      currentWave: null == currentWave
          ? _value.currentWave
          : currentWave // ignore: cast_nullable_to_non_nullable
              as int,
      wave1Start: null == wave1Start
          ? _value.wave1Start
          : wave1Start // ignore: cast_nullable_to_non_nullable
              as double,
      wave1End: null == wave1End
          ? _value.wave1End
          : wave1End // ignore: cast_nullable_to_non_nullable
              as double,
      wave2End: null == wave2End
          ? _value.wave2End
          : wave2End // ignore: cast_nullable_to_non_nullable
              as double,
      wave3End: null == wave3End
          ? _value.wave3End
          : wave3End // ignore: cast_nullable_to_non_nullable
              as double,
      wave4End: null == wave4End
          ? _value.wave4End
          : wave4End // ignore: cast_nullable_to_non_nullable
              as double,
      wave5End: null == wave5End
          ? _value.wave5End
          : wave5End // ignore: cast_nullable_to_non_nullable
              as double,
      analysisDate: null == analysisDate
          ? _value.analysisDate
          : analysisDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ElliottWaveDataImplCopyWith<$Res>
    implements $ElliottWaveDataCopyWith<$Res> {
  factory _$$ElliottWaveDataImplCopyWith(_$ElliottWaveDataImpl value,
          $Res Function(_$ElliottWaveDataImpl) then) =
      __$$ElliottWaveDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentWave,
      double wave1Start,
      double wave1End,
      double wave2End,
      double wave3End,
      double wave4End,
      double wave5End,
      DateTime analysisDate,
      double confidence});
}

/// @nodoc
class __$$ElliottWaveDataImplCopyWithImpl<$Res>
    extends _$ElliottWaveDataCopyWithImpl<$Res, _$ElliottWaveDataImpl>
    implements _$$ElliottWaveDataImplCopyWith<$Res> {
  __$$ElliottWaveDataImplCopyWithImpl(
      _$ElliottWaveDataImpl _value, $Res Function(_$ElliottWaveDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ElliottWaveData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentWave = null,
    Object? wave1Start = null,
    Object? wave1End = null,
    Object? wave2End = null,
    Object? wave3End = null,
    Object? wave4End = null,
    Object? wave5End = null,
    Object? analysisDate = null,
    Object? confidence = null,
  }) {
    return _then(_$ElliottWaveDataImpl(
      currentWave: null == currentWave
          ? _value.currentWave
          : currentWave // ignore: cast_nullable_to_non_nullable
              as int,
      wave1Start: null == wave1Start
          ? _value.wave1Start
          : wave1Start // ignore: cast_nullable_to_non_nullable
              as double,
      wave1End: null == wave1End
          ? _value.wave1End
          : wave1End // ignore: cast_nullable_to_non_nullable
              as double,
      wave2End: null == wave2End
          ? _value.wave2End
          : wave2End // ignore: cast_nullable_to_non_nullable
              as double,
      wave3End: null == wave3End
          ? _value.wave3End
          : wave3End // ignore: cast_nullable_to_non_nullable
              as double,
      wave4End: null == wave4End
          ? _value.wave4End
          : wave4End // ignore: cast_nullable_to_non_nullable
              as double,
      wave5End: null == wave5End
          ? _value.wave5End
          : wave5End // ignore: cast_nullable_to_non_nullable
              as double,
      analysisDate: null == analysisDate
          ? _value.analysisDate
          : analysisDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ElliottWaveDataImpl implements _ElliottWaveData {
  const _$ElliottWaveDataImpl(
      {required this.currentWave,
      required this.wave1Start,
      required this.wave1End,
      required this.wave2End,
      required this.wave3End,
      required this.wave4End,
      required this.wave5End,
      required this.analysisDate,
      required this.confidence});

  factory _$ElliottWaveDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ElliottWaveDataImplFromJson(json);

  @override
  final int currentWave;
  @override
  final double wave1Start;
  @override
  final double wave1End;
  @override
  final double wave2End;
  @override
  final double wave3End;
  @override
  final double wave4End;
  @override
  final double wave5End;
  @override
  final DateTime analysisDate;
  @override
  final double confidence;

  @override
  String toString() {
    return 'ElliottWaveData(currentWave: $currentWave, wave1Start: $wave1Start, wave1End: $wave1End, wave2End: $wave2End, wave3End: $wave3End, wave4End: $wave4End, wave5End: $wave5End, analysisDate: $analysisDate, confidence: $confidence)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElliottWaveDataImpl &&
            (identical(other.currentWave, currentWave) ||
                other.currentWave == currentWave) &&
            (identical(other.wave1Start, wave1Start) ||
                other.wave1Start == wave1Start) &&
            (identical(other.wave1End, wave1End) ||
                other.wave1End == wave1End) &&
            (identical(other.wave2End, wave2End) ||
                other.wave2End == wave2End) &&
            (identical(other.wave3End, wave3End) ||
                other.wave3End == wave3End) &&
            (identical(other.wave4End, wave4End) ||
                other.wave4End == wave4End) &&
            (identical(other.wave5End, wave5End) ||
                other.wave5End == wave5End) &&
            (identical(other.analysisDate, analysisDate) ||
                other.analysisDate == analysisDate) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentWave,
      wave1Start,
      wave1End,
      wave2End,
      wave3End,
      wave4End,
      wave5End,
      analysisDate,
      confidence);

  /// Create a copy of ElliottWaveData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ElliottWaveDataImplCopyWith<_$ElliottWaveDataImpl> get copyWith =>
      __$$ElliottWaveDataImplCopyWithImpl<_$ElliottWaveDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ElliottWaveDataImplToJson(
      this,
    );
  }
}

abstract class _ElliottWaveData implements ElliottWaveData {
  const factory _ElliottWaveData(
      {required final int currentWave,
      required final double wave1Start,
      required final double wave1End,
      required final double wave2End,
      required final double wave3End,
      required final double wave4End,
      required final double wave5End,
      required final DateTime analysisDate,
      required final double confidence}) = _$ElliottWaveDataImpl;

  factory _ElliottWaveData.fromJson(Map<String, dynamic> json) =
      _$ElliottWaveDataImpl.fromJson;

  @override
  int get currentWave;
  @override
  double get wave1Start;
  @override
  double get wave1End;
  @override
  double get wave2End;
  @override
  double get wave3End;
  @override
  double get wave4End;
  @override
  double get wave5End;
  @override
  DateTime get analysisDate;
  @override
  double get confidence;

  /// Create a copy of ElliottWaveData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ElliottWaveDataImplCopyWith<_$ElliottWaveDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FibonacciLevels _$FibonacciLevelsFromJson(Map<String, dynamic> json) {
  return _FibonacciLevels.fromJson(json);
}

/// @nodoc
mixin _$FibonacciLevels {
  double get high => throw _privateConstructorUsedError;
  double get low => throw _privateConstructorUsedError;
  double get level236 => throw _privateConstructorUsedError;
  double get level382 => throw _privateConstructorUsedError;
  double get level500 => throw _privateConstructorUsedError;
  double get level618 => throw _privateConstructorUsedError;
  double get level786 => throw _privateConstructorUsedError;

  /// Serializes this FibonacciLevels to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FibonacciLevels
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FibonacciLevelsCopyWith<FibonacciLevels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FibonacciLevelsCopyWith<$Res> {
  factory $FibonacciLevelsCopyWith(
          FibonacciLevels value, $Res Function(FibonacciLevels) then) =
      _$FibonacciLevelsCopyWithImpl<$Res, FibonacciLevels>;
  @useResult
  $Res call(
      {double high,
      double low,
      double level236,
      double level382,
      double level500,
      double level618,
      double level786});
}

/// @nodoc
class _$FibonacciLevelsCopyWithImpl<$Res, $Val extends FibonacciLevels>
    implements $FibonacciLevelsCopyWith<$Res> {
  _$FibonacciLevelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FibonacciLevels
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? high = null,
    Object? low = null,
    Object? level236 = null,
    Object? level382 = null,
    Object? level500 = null,
    Object? level618 = null,
    Object? level786 = null,
  }) {
    return _then(_value.copyWith(
      high: null == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as double,
      low: null == low
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as double,
      level236: null == level236
          ? _value.level236
          : level236 // ignore: cast_nullable_to_non_nullable
              as double,
      level382: null == level382
          ? _value.level382
          : level382 // ignore: cast_nullable_to_non_nullable
              as double,
      level500: null == level500
          ? _value.level500
          : level500 // ignore: cast_nullable_to_non_nullable
              as double,
      level618: null == level618
          ? _value.level618
          : level618 // ignore: cast_nullable_to_non_nullable
              as double,
      level786: null == level786
          ? _value.level786
          : level786 // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FibonacciLevelsImplCopyWith<$Res>
    implements $FibonacciLevelsCopyWith<$Res> {
  factory _$$FibonacciLevelsImplCopyWith(_$FibonacciLevelsImpl value,
          $Res Function(_$FibonacciLevelsImpl) then) =
      __$$FibonacciLevelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double high,
      double low,
      double level236,
      double level382,
      double level500,
      double level618,
      double level786});
}

/// @nodoc
class __$$FibonacciLevelsImplCopyWithImpl<$Res>
    extends _$FibonacciLevelsCopyWithImpl<$Res, _$FibonacciLevelsImpl>
    implements _$$FibonacciLevelsImplCopyWith<$Res> {
  __$$FibonacciLevelsImplCopyWithImpl(
      _$FibonacciLevelsImpl _value, $Res Function(_$FibonacciLevelsImpl) _then)
      : super(_value, _then);

  /// Create a copy of FibonacciLevels
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? high = null,
    Object? low = null,
    Object? level236 = null,
    Object? level382 = null,
    Object? level500 = null,
    Object? level618 = null,
    Object? level786 = null,
  }) {
    return _then(_$FibonacciLevelsImpl(
      high: null == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as double,
      low: null == low
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as double,
      level236: null == level236
          ? _value.level236
          : level236 // ignore: cast_nullable_to_non_nullable
              as double,
      level382: null == level382
          ? _value.level382
          : level382 // ignore: cast_nullable_to_non_nullable
              as double,
      level500: null == level500
          ? _value.level500
          : level500 // ignore: cast_nullable_to_non_nullable
              as double,
      level618: null == level618
          ? _value.level618
          : level618 // ignore: cast_nullable_to_non_nullable
              as double,
      level786: null == level786
          ? _value.level786
          : level786 // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FibonacciLevelsImpl implements _FibonacciLevels {
  const _$FibonacciLevelsImpl(
      {required this.high,
      required this.low,
      required this.level236,
      required this.level382,
      required this.level500,
      required this.level618,
      required this.level786});

  factory _$FibonacciLevelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FibonacciLevelsImplFromJson(json);

  @override
  final double high;
  @override
  final double low;
  @override
  final double level236;
  @override
  final double level382;
  @override
  final double level500;
  @override
  final double level618;
  @override
  final double level786;

  @override
  String toString() {
    return 'FibonacciLevels(high: $high, low: $low, level236: $level236, level382: $level382, level500: $level500, level618: $level618, level786: $level786)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FibonacciLevelsImpl &&
            (identical(other.high, high) || other.high == high) &&
            (identical(other.low, low) || other.low == low) &&
            (identical(other.level236, level236) ||
                other.level236 == level236) &&
            (identical(other.level382, level382) ||
                other.level382 == level382) &&
            (identical(other.level500, level500) ||
                other.level500 == level500) &&
            (identical(other.level618, level618) ||
                other.level618 == level618) &&
            (identical(other.level786, level786) ||
                other.level786 == level786));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, high, low, level236, level382, level500, level618, level786);

  /// Create a copy of FibonacciLevels
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FibonacciLevelsImplCopyWith<_$FibonacciLevelsImpl> get copyWith =>
      __$$FibonacciLevelsImplCopyWithImpl<_$FibonacciLevelsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FibonacciLevelsImplToJson(
      this,
    );
  }
}

abstract class _FibonacciLevels implements FibonacciLevels {
  const factory _FibonacciLevels(
      {required final double high,
      required final double low,
      required final double level236,
      required final double level382,
      required final double level500,
      required final double level618,
      required final double level786}) = _$FibonacciLevelsImpl;

  factory _FibonacciLevels.fromJson(Map<String, dynamic> json) =
      _$FibonacciLevelsImpl.fromJson;

  @override
  double get high;
  @override
  double get low;
  @override
  double get level236;
  @override
  double get level382;
  @override
  double get level500;
  @override
  double get level618;
  @override
  double get level786;

  /// Create a copy of FibonacciLevels
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FibonacciLevelsImplCopyWith<_$FibonacciLevelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PatternRecognition _$PatternRecognitionFromJson(Map<String, dynamic> json) {
  return _PatternRecognition.fromJson(json);
}

/// @nodoc
mixin _$PatternRecognition {
  List<Pattern> get patterns => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;
  DateTime get detectedAt => throw _privateConstructorUsedError;

  /// Serializes this PatternRecognition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PatternRecognition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatternRecognitionCopyWith<PatternRecognition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatternRecognitionCopyWith<$Res> {
  factory $PatternRecognitionCopyWith(
          PatternRecognition value, $Res Function(PatternRecognition) then) =
      _$PatternRecognitionCopyWithImpl<$Res, PatternRecognition>;
  @useResult
  $Res call({List<Pattern> patterns, double confidence, DateTime detectedAt});
}

/// @nodoc
class _$PatternRecognitionCopyWithImpl<$Res, $Val extends PatternRecognition>
    implements $PatternRecognitionCopyWith<$Res> {
  _$PatternRecognitionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PatternRecognition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patterns = null,
    Object? confidence = null,
    Object? detectedAt = null,
  }) {
    return _then(_value.copyWith(
      patterns: null == patterns
          ? _value.patterns
          : patterns // ignore: cast_nullable_to_non_nullable
              as List<Pattern>,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      detectedAt: null == detectedAt
          ? _value.detectedAt
          : detectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatternRecognitionImplCopyWith<$Res>
    implements $PatternRecognitionCopyWith<$Res> {
  factory _$$PatternRecognitionImplCopyWith(_$PatternRecognitionImpl value,
          $Res Function(_$PatternRecognitionImpl) then) =
      __$$PatternRecognitionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Pattern> patterns, double confidence, DateTime detectedAt});
}

/// @nodoc
class __$$PatternRecognitionImplCopyWithImpl<$Res>
    extends _$PatternRecognitionCopyWithImpl<$Res, _$PatternRecognitionImpl>
    implements _$$PatternRecognitionImplCopyWith<$Res> {
  __$$PatternRecognitionImplCopyWithImpl(_$PatternRecognitionImpl _value,
      $Res Function(_$PatternRecognitionImpl) _then)
      : super(_value, _then);

  /// Create a copy of PatternRecognition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patterns = null,
    Object? confidence = null,
    Object? detectedAt = null,
  }) {
    return _then(_$PatternRecognitionImpl(
      patterns: null == patterns
          ? _value._patterns
          : patterns // ignore: cast_nullable_to_non_nullable
              as List<Pattern>,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      detectedAt: null == detectedAt
          ? _value.detectedAt
          : detectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatternRecognitionImpl implements _PatternRecognition {
  const _$PatternRecognitionImpl(
      {required final List<Pattern> patterns,
      required this.confidence,
      required this.detectedAt})
      : _patterns = patterns;

  factory _$PatternRecognitionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatternRecognitionImplFromJson(json);

  final List<Pattern> _patterns;
  @override
  List<Pattern> get patterns {
    if (_patterns is EqualUnmodifiableListView) return _patterns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_patterns);
  }

  @override
  final double confidence;
  @override
  final DateTime detectedAt;

  @override
  String toString() {
    return 'PatternRecognition(patterns: $patterns, confidence: $confidence, detectedAt: $detectedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatternRecognitionImpl &&
            const DeepCollectionEquality().equals(other._patterns, _patterns) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            (identical(other.detectedAt, detectedAt) ||
                other.detectedAt == detectedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_patterns), confidence, detectedAt);

  /// Create a copy of PatternRecognition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatternRecognitionImplCopyWith<_$PatternRecognitionImpl> get copyWith =>
      __$$PatternRecognitionImplCopyWithImpl<_$PatternRecognitionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatternRecognitionImplToJson(
      this,
    );
  }
}

abstract class _PatternRecognition implements PatternRecognition {
  const factory _PatternRecognition(
      {required final List<Pattern> patterns,
      required final double confidence,
      required final DateTime detectedAt}) = _$PatternRecognitionImpl;

  factory _PatternRecognition.fromJson(Map<String, dynamic> json) =
      _$PatternRecognitionImpl.fromJson;

  @override
  List<Pattern> get patterns;
  @override
  double get confidence;
  @override
  DateTime get detectedAt;

  /// Create a copy of PatternRecognition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatternRecognitionImplCopyWith<_$PatternRecognitionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Pattern _$PatternFromJson(Map<String, dynamic> json) {
  return _Pattern.fromJson(json);
}

/// @nodoc
mixin _$Pattern {
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  double get targetPrice => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this Pattern to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Pattern
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatternCopyWith<Pattern> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatternCopyWith<$Res> {
  factory $PatternCopyWith(Pattern value, $Res Function(Pattern) then) =
      _$PatternCopyWithImpl<$Res, Pattern>;
  @useResult
  $Res call(
      {String name,
      String type,
      double confidence,
      DateTime startDate,
      DateTime endDate,
      double targetPrice,
      String description});
}

/// @nodoc
class _$PatternCopyWithImpl<$Res, $Val extends Pattern>
    implements $PatternCopyWith<$Res> {
  _$PatternCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Pattern
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? confidence = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? targetPrice = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      targetPrice: null == targetPrice
          ? _value.targetPrice
          : targetPrice // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatternImplCopyWith<$Res> implements $PatternCopyWith<$Res> {
  factory _$$PatternImplCopyWith(
          _$PatternImpl value, $Res Function(_$PatternImpl) then) =
      __$$PatternImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String type,
      double confidence,
      DateTime startDate,
      DateTime endDate,
      double targetPrice,
      String description});
}

/// @nodoc
class __$$PatternImplCopyWithImpl<$Res>
    extends _$PatternCopyWithImpl<$Res, _$PatternImpl>
    implements _$$PatternImplCopyWith<$Res> {
  __$$PatternImplCopyWithImpl(
      _$PatternImpl _value, $Res Function(_$PatternImpl) _then)
      : super(_value, _then);

  /// Create a copy of Pattern
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? confidence = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? targetPrice = null,
    Object? description = null,
  }) {
    return _then(_$PatternImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      targetPrice: null == targetPrice
          ? _value.targetPrice
          : targetPrice // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatternImpl implements _Pattern {
  const _$PatternImpl(
      {required this.name,
      required this.type,
      required this.confidence,
      required this.startDate,
      required this.endDate,
      required this.targetPrice,
      required this.description});

  factory _$PatternImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatternImplFromJson(json);

  @override
  final String name;
  @override
  final String type;
  @override
  final double confidence;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final double targetPrice;
  @override
  final String description;

  @override
  String toString() {
    return 'Pattern(name: $name, type: $type, confidence: $confidence, startDate: $startDate, endDate: $endDate, targetPrice: $targetPrice, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatternImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.targetPrice, targetPrice) ||
                other.targetPrice == targetPrice) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, type, confidence,
      startDate, endDate, targetPrice, description);

  /// Create a copy of Pattern
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatternImplCopyWith<_$PatternImpl> get copyWith =>
      __$$PatternImplCopyWithImpl<_$PatternImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatternImplToJson(
      this,
    );
  }
}

abstract class _Pattern implements Pattern {
  const factory _Pattern(
      {required final String name,
      required final String type,
      required final double confidence,
      required final DateTime startDate,
      required final DateTime endDate,
      required final double targetPrice,
      required final String description}) = _$PatternImpl;

  factory _Pattern.fromJson(Map<String, dynamic> json) = _$PatternImpl.fromJson;

  @override
  String get name;
  @override
  String get type;
  @override
  double get confidence;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  double get targetPrice;
  @override
  String get description;

  /// Create a copy of Pattern
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatternImplCopyWith<_$PatternImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InstitutionalActivity _$InstitutionalActivityFromJson(
    Map<String, dynamic> json) {
  return _InstitutionalActivity.fromJson(json);
}

/// @nodoc
mixin _$InstitutionalActivity {
  List<InstitutionalTrade> get trades => throw _privateConstructorUsedError;
  double get netFlow => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;

  /// Serializes this InstitutionalActivity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InstitutionalActivity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InstitutionalActivityCopyWith<InstitutionalActivity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstitutionalActivityCopyWith<$Res> {
  factory $InstitutionalActivityCopyWith(InstitutionalActivity value,
          $Res Function(InstitutionalActivity) then) =
      _$InstitutionalActivityCopyWithImpl<$Res, InstitutionalActivity>;
  @useResult
  $Res call(
      {List<InstitutionalTrade> trades, double netFlow, DateTime lastUpdated});
}

/// @nodoc
class _$InstitutionalActivityCopyWithImpl<$Res,
        $Val extends InstitutionalActivity>
    implements $InstitutionalActivityCopyWith<$Res> {
  _$InstitutionalActivityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InstitutionalActivity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trades = null,
    Object? netFlow = null,
    Object? lastUpdated = null,
  }) {
    return _then(_value.copyWith(
      trades: null == trades
          ? _value.trades
          : trades // ignore: cast_nullable_to_non_nullable
              as List<InstitutionalTrade>,
      netFlow: null == netFlow
          ? _value.netFlow
          : netFlow // ignore: cast_nullable_to_non_nullable
              as double,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InstitutionalActivityImplCopyWith<$Res>
    implements $InstitutionalActivityCopyWith<$Res> {
  factory _$$InstitutionalActivityImplCopyWith(
          _$InstitutionalActivityImpl value,
          $Res Function(_$InstitutionalActivityImpl) then) =
      __$$InstitutionalActivityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<InstitutionalTrade> trades, double netFlow, DateTime lastUpdated});
}

/// @nodoc
class __$$InstitutionalActivityImplCopyWithImpl<$Res>
    extends _$InstitutionalActivityCopyWithImpl<$Res,
        _$InstitutionalActivityImpl>
    implements _$$InstitutionalActivityImplCopyWith<$Res> {
  __$$InstitutionalActivityImplCopyWithImpl(_$InstitutionalActivityImpl _value,
      $Res Function(_$InstitutionalActivityImpl) _then)
      : super(_value, _then);

  /// Create a copy of InstitutionalActivity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trades = null,
    Object? netFlow = null,
    Object? lastUpdated = null,
  }) {
    return _then(_$InstitutionalActivityImpl(
      trades: null == trades
          ? _value._trades
          : trades // ignore: cast_nullable_to_non_nullable
              as List<InstitutionalTrade>,
      netFlow: null == netFlow
          ? _value.netFlow
          : netFlow // ignore: cast_nullable_to_non_nullable
              as double,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InstitutionalActivityImpl implements _InstitutionalActivity {
  const _$InstitutionalActivityImpl(
      {required final List<InstitutionalTrade> trades,
      required this.netFlow,
      required this.lastUpdated})
      : _trades = trades;

  factory _$InstitutionalActivityImpl.fromJson(Map<String, dynamic> json) =>
      _$$InstitutionalActivityImplFromJson(json);

  final List<InstitutionalTrade> _trades;
  @override
  List<InstitutionalTrade> get trades {
    if (_trades is EqualUnmodifiableListView) return _trades;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trades);
  }

  @override
  final double netFlow;
  @override
  final DateTime lastUpdated;

  @override
  String toString() {
    return 'InstitutionalActivity(trades: $trades, netFlow: $netFlow, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstitutionalActivityImpl &&
            const DeepCollectionEquality().equals(other._trades, _trades) &&
            (identical(other.netFlow, netFlow) || other.netFlow == netFlow) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_trades), netFlow, lastUpdated);

  /// Create a copy of InstitutionalActivity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InstitutionalActivityImplCopyWith<_$InstitutionalActivityImpl>
      get copyWith => __$$InstitutionalActivityImplCopyWithImpl<
          _$InstitutionalActivityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InstitutionalActivityImplToJson(
      this,
    );
  }
}

abstract class _InstitutionalActivity implements InstitutionalActivity {
  const factory _InstitutionalActivity(
      {required final List<InstitutionalTrade> trades,
      required final double netFlow,
      required final DateTime lastUpdated}) = _$InstitutionalActivityImpl;

  factory _InstitutionalActivity.fromJson(Map<String, dynamic> json) =
      _$InstitutionalActivityImpl.fromJson;

  @override
  List<InstitutionalTrade> get trades;
  @override
  double get netFlow;
  @override
  DateTime get lastUpdated;

  /// Create a copy of InstitutionalActivity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InstitutionalActivityImplCopyWith<_$InstitutionalActivityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InstitutionalTrade _$InstitutionalTradeFromJson(Map<String, dynamic> json) {
  return _InstitutionalTrade.fromJson(json);
}

/// @nodoc
mixin _$InstitutionalTrade {
  String get institution => throw _privateConstructorUsedError;
  String get action => throw _privateConstructorUsedError;
  double get shares => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  /// Serializes this InstitutionalTrade to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InstitutionalTrade
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InstitutionalTradeCopyWith<InstitutionalTrade> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstitutionalTradeCopyWith<$Res> {
  factory $InstitutionalTradeCopyWith(
          InstitutionalTrade value, $Res Function(InstitutionalTrade) then) =
      _$InstitutionalTradeCopyWithImpl<$Res, InstitutionalTrade>;
  @useResult
  $Res call(
      {String institution,
      String action,
      double shares,
      double value,
      DateTime date});
}

/// @nodoc
class _$InstitutionalTradeCopyWithImpl<$Res, $Val extends InstitutionalTrade>
    implements $InstitutionalTradeCopyWith<$Res> {
  _$InstitutionalTradeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InstitutionalTrade
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? institution = null,
    Object? action = null,
    Object? shares = null,
    Object? value = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      institution: null == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      shares: null == shares
          ? _value.shares
          : shares // ignore: cast_nullable_to_non_nullable
              as double,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InstitutionalTradeImplCopyWith<$Res>
    implements $InstitutionalTradeCopyWith<$Res> {
  factory _$$InstitutionalTradeImplCopyWith(_$InstitutionalTradeImpl value,
          $Res Function(_$InstitutionalTradeImpl) then) =
      __$$InstitutionalTradeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String institution,
      String action,
      double shares,
      double value,
      DateTime date});
}

/// @nodoc
class __$$InstitutionalTradeImplCopyWithImpl<$Res>
    extends _$InstitutionalTradeCopyWithImpl<$Res, _$InstitutionalTradeImpl>
    implements _$$InstitutionalTradeImplCopyWith<$Res> {
  __$$InstitutionalTradeImplCopyWithImpl(_$InstitutionalTradeImpl _value,
      $Res Function(_$InstitutionalTradeImpl) _then)
      : super(_value, _then);

  /// Create a copy of InstitutionalTrade
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? institution = null,
    Object? action = null,
    Object? shares = null,
    Object? value = null,
    Object? date = null,
  }) {
    return _then(_$InstitutionalTradeImpl(
      institution: null == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      shares: null == shares
          ? _value.shares
          : shares // ignore: cast_nullable_to_non_nullable
              as double,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InstitutionalTradeImpl implements _InstitutionalTrade {
  const _$InstitutionalTradeImpl(
      {required this.institution,
      required this.action,
      required this.shares,
      required this.value,
      required this.date});

  factory _$InstitutionalTradeImpl.fromJson(Map<String, dynamic> json) =>
      _$$InstitutionalTradeImplFromJson(json);

  @override
  final String institution;
  @override
  final String action;
  @override
  final double shares;
  @override
  final double value;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'InstitutionalTrade(institution: $institution, action: $action, shares: $shares, value: $value, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstitutionalTradeImpl &&
            (identical(other.institution, institution) ||
                other.institution == institution) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.shares, shares) || other.shares == shares) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, institution, action, shares, value, date);

  /// Create a copy of InstitutionalTrade
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InstitutionalTradeImplCopyWith<_$InstitutionalTradeImpl> get copyWith =>
      __$$InstitutionalTradeImplCopyWithImpl<_$InstitutionalTradeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InstitutionalTradeImplToJson(
      this,
    );
  }
}

abstract class _InstitutionalTrade implements InstitutionalTrade {
  const factory _InstitutionalTrade(
      {required final String institution,
      required final String action,
      required final double shares,
      required final double value,
      required final DateTime date}) = _$InstitutionalTradeImpl;

  factory _InstitutionalTrade.fromJson(Map<String, dynamic> json) =
      _$InstitutionalTradeImpl.fromJson;

  @override
  String get institution;
  @override
  String get action;
  @override
  double get shares;
  @override
  double get value;
  @override
  DateTime get date;

  /// Create a copy of InstitutionalTrade
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InstitutionalTradeImplCopyWith<_$InstitutionalTradeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
