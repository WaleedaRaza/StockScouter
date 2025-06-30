// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'options_flow_analysis.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OptionsFlowAnalysis _$OptionsFlowAnalysisFromJson(Map<String, dynamic> json) {
  return _OptionsFlowAnalysis.fromJson(json);
}

/// @nodoc
mixin _$OptionsFlowAnalysis {
  List<OptionsContract> get unusualActivity =>
      throw _privateConstructorUsedError;
  List<OptionsContract> get institutionalFlow =>
      throw _privateConstructorUsedError;
  OptionsSentiment get sentiment => throw _privateConstructorUsedError;
  GammaExposure get gammaExposure => throw _privateConstructorUsedError;
  PutCallRatio get putCallRatio => throw _privateConstructorUsedError;
  List<FlowPattern> get patterns => throw _privateConstructorUsedError;
  List<StrikeAnalysis> get strikeAnalysis => throw _privateConstructorUsedError;
  List<OptionsInsight> get insights => throw _privateConstructorUsedError;
  List<OptionsRecommendation> get recommendations =>
      throw _privateConstructorUsedError;

  /// Serializes this OptionsFlowAnalysis to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OptionsFlowAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OptionsFlowAnalysisCopyWith<OptionsFlowAnalysis> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionsFlowAnalysisCopyWith<$Res> {
  factory $OptionsFlowAnalysisCopyWith(
          OptionsFlowAnalysis value, $Res Function(OptionsFlowAnalysis) then) =
      _$OptionsFlowAnalysisCopyWithImpl<$Res, OptionsFlowAnalysis>;
  @useResult
  $Res call(
      {List<OptionsContract> unusualActivity,
      List<OptionsContract> institutionalFlow,
      OptionsSentiment sentiment,
      GammaExposure gammaExposure,
      PutCallRatio putCallRatio,
      List<FlowPattern> patterns,
      List<StrikeAnalysis> strikeAnalysis,
      List<OptionsInsight> insights,
      List<OptionsRecommendation> recommendations});

  $OptionsSentimentCopyWith<$Res> get sentiment;
  $GammaExposureCopyWith<$Res> get gammaExposure;
  $PutCallRatioCopyWith<$Res> get putCallRatio;
}

/// @nodoc
class _$OptionsFlowAnalysisCopyWithImpl<$Res, $Val extends OptionsFlowAnalysis>
    implements $OptionsFlowAnalysisCopyWith<$Res> {
  _$OptionsFlowAnalysisCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OptionsFlowAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unusualActivity = null,
    Object? institutionalFlow = null,
    Object? sentiment = null,
    Object? gammaExposure = null,
    Object? putCallRatio = null,
    Object? patterns = null,
    Object? strikeAnalysis = null,
    Object? insights = null,
    Object? recommendations = null,
  }) {
    return _then(_value.copyWith(
      unusualActivity: null == unusualActivity
          ? _value.unusualActivity
          : unusualActivity // ignore: cast_nullable_to_non_nullable
              as List<OptionsContract>,
      institutionalFlow: null == institutionalFlow
          ? _value.institutionalFlow
          : institutionalFlow // ignore: cast_nullable_to_non_nullable
              as List<OptionsContract>,
      sentiment: null == sentiment
          ? _value.sentiment
          : sentiment // ignore: cast_nullable_to_non_nullable
              as OptionsSentiment,
      gammaExposure: null == gammaExposure
          ? _value.gammaExposure
          : gammaExposure // ignore: cast_nullable_to_non_nullable
              as GammaExposure,
      putCallRatio: null == putCallRatio
          ? _value.putCallRatio
          : putCallRatio // ignore: cast_nullable_to_non_nullable
              as PutCallRatio,
      patterns: null == patterns
          ? _value.patterns
          : patterns // ignore: cast_nullable_to_non_nullable
              as List<FlowPattern>,
      strikeAnalysis: null == strikeAnalysis
          ? _value.strikeAnalysis
          : strikeAnalysis // ignore: cast_nullable_to_non_nullable
              as List<StrikeAnalysis>,
      insights: null == insights
          ? _value.insights
          : insights // ignore: cast_nullable_to_non_nullable
              as List<OptionsInsight>,
      recommendations: null == recommendations
          ? _value.recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as List<OptionsRecommendation>,
    ) as $Val);
  }

  /// Create a copy of OptionsFlowAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OptionsSentimentCopyWith<$Res> get sentiment {
    return $OptionsSentimentCopyWith<$Res>(_value.sentiment, (value) {
      return _then(_value.copyWith(sentiment: value) as $Val);
    });
  }

  /// Create a copy of OptionsFlowAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GammaExposureCopyWith<$Res> get gammaExposure {
    return $GammaExposureCopyWith<$Res>(_value.gammaExposure, (value) {
      return _then(_value.copyWith(gammaExposure: value) as $Val);
    });
  }

  /// Create a copy of OptionsFlowAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PutCallRatioCopyWith<$Res> get putCallRatio {
    return $PutCallRatioCopyWith<$Res>(_value.putCallRatio, (value) {
      return _then(_value.copyWith(putCallRatio: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OptionsFlowAnalysisImplCopyWith<$Res>
    implements $OptionsFlowAnalysisCopyWith<$Res> {
  factory _$$OptionsFlowAnalysisImplCopyWith(_$OptionsFlowAnalysisImpl value,
          $Res Function(_$OptionsFlowAnalysisImpl) then) =
      __$$OptionsFlowAnalysisImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<OptionsContract> unusualActivity,
      List<OptionsContract> institutionalFlow,
      OptionsSentiment sentiment,
      GammaExposure gammaExposure,
      PutCallRatio putCallRatio,
      List<FlowPattern> patterns,
      List<StrikeAnalysis> strikeAnalysis,
      List<OptionsInsight> insights,
      List<OptionsRecommendation> recommendations});

  @override
  $OptionsSentimentCopyWith<$Res> get sentiment;
  @override
  $GammaExposureCopyWith<$Res> get gammaExposure;
  @override
  $PutCallRatioCopyWith<$Res> get putCallRatio;
}

/// @nodoc
class __$$OptionsFlowAnalysisImplCopyWithImpl<$Res>
    extends _$OptionsFlowAnalysisCopyWithImpl<$Res, _$OptionsFlowAnalysisImpl>
    implements _$$OptionsFlowAnalysisImplCopyWith<$Res> {
  __$$OptionsFlowAnalysisImplCopyWithImpl(_$OptionsFlowAnalysisImpl _value,
      $Res Function(_$OptionsFlowAnalysisImpl) _then)
      : super(_value, _then);

  /// Create a copy of OptionsFlowAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unusualActivity = null,
    Object? institutionalFlow = null,
    Object? sentiment = null,
    Object? gammaExposure = null,
    Object? putCallRatio = null,
    Object? patterns = null,
    Object? strikeAnalysis = null,
    Object? insights = null,
    Object? recommendations = null,
  }) {
    return _then(_$OptionsFlowAnalysisImpl(
      unusualActivity: null == unusualActivity
          ? _value._unusualActivity
          : unusualActivity // ignore: cast_nullable_to_non_nullable
              as List<OptionsContract>,
      institutionalFlow: null == institutionalFlow
          ? _value._institutionalFlow
          : institutionalFlow // ignore: cast_nullable_to_non_nullable
              as List<OptionsContract>,
      sentiment: null == sentiment
          ? _value.sentiment
          : sentiment // ignore: cast_nullable_to_non_nullable
              as OptionsSentiment,
      gammaExposure: null == gammaExposure
          ? _value.gammaExposure
          : gammaExposure // ignore: cast_nullable_to_non_nullable
              as GammaExposure,
      putCallRatio: null == putCallRatio
          ? _value.putCallRatio
          : putCallRatio // ignore: cast_nullable_to_non_nullable
              as PutCallRatio,
      patterns: null == patterns
          ? _value._patterns
          : patterns // ignore: cast_nullable_to_non_nullable
              as List<FlowPattern>,
      strikeAnalysis: null == strikeAnalysis
          ? _value._strikeAnalysis
          : strikeAnalysis // ignore: cast_nullable_to_non_nullable
              as List<StrikeAnalysis>,
      insights: null == insights
          ? _value._insights
          : insights // ignore: cast_nullable_to_non_nullable
              as List<OptionsInsight>,
      recommendations: null == recommendations
          ? _value._recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as List<OptionsRecommendation>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OptionsFlowAnalysisImpl implements _OptionsFlowAnalysis {
  const _$OptionsFlowAnalysisImpl(
      {required final List<OptionsContract> unusualActivity,
      required final List<OptionsContract> institutionalFlow,
      required this.sentiment,
      required this.gammaExposure,
      required this.putCallRatio,
      required final List<FlowPattern> patterns,
      required final List<StrikeAnalysis> strikeAnalysis,
      required final List<OptionsInsight> insights,
      required final List<OptionsRecommendation> recommendations})
      : _unusualActivity = unusualActivity,
        _institutionalFlow = institutionalFlow,
        _patterns = patterns,
        _strikeAnalysis = strikeAnalysis,
        _insights = insights,
        _recommendations = recommendations;

  factory _$OptionsFlowAnalysisImpl.fromJson(Map<String, dynamic> json) =>
      _$$OptionsFlowAnalysisImplFromJson(json);

  final List<OptionsContract> _unusualActivity;
  @override
  List<OptionsContract> get unusualActivity {
    if (_unusualActivity is EqualUnmodifiableListView) return _unusualActivity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_unusualActivity);
  }

  final List<OptionsContract> _institutionalFlow;
  @override
  List<OptionsContract> get institutionalFlow {
    if (_institutionalFlow is EqualUnmodifiableListView)
      return _institutionalFlow;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_institutionalFlow);
  }

  @override
  final OptionsSentiment sentiment;
  @override
  final GammaExposure gammaExposure;
  @override
  final PutCallRatio putCallRatio;
  final List<FlowPattern> _patterns;
  @override
  List<FlowPattern> get patterns {
    if (_patterns is EqualUnmodifiableListView) return _patterns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_patterns);
  }

  final List<StrikeAnalysis> _strikeAnalysis;
  @override
  List<StrikeAnalysis> get strikeAnalysis {
    if (_strikeAnalysis is EqualUnmodifiableListView) return _strikeAnalysis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_strikeAnalysis);
  }

  final List<OptionsInsight> _insights;
  @override
  List<OptionsInsight> get insights {
    if (_insights is EqualUnmodifiableListView) return _insights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_insights);
  }

  final List<OptionsRecommendation> _recommendations;
  @override
  List<OptionsRecommendation> get recommendations {
    if (_recommendations is EqualUnmodifiableListView) return _recommendations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendations);
  }

  @override
  String toString() {
    return 'OptionsFlowAnalysis(unusualActivity: $unusualActivity, institutionalFlow: $institutionalFlow, sentiment: $sentiment, gammaExposure: $gammaExposure, putCallRatio: $putCallRatio, patterns: $patterns, strikeAnalysis: $strikeAnalysis, insights: $insights, recommendations: $recommendations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OptionsFlowAnalysisImpl &&
            const DeepCollectionEquality()
                .equals(other._unusualActivity, _unusualActivity) &&
            const DeepCollectionEquality()
                .equals(other._institutionalFlow, _institutionalFlow) &&
            (identical(other.sentiment, sentiment) ||
                other.sentiment == sentiment) &&
            (identical(other.gammaExposure, gammaExposure) ||
                other.gammaExposure == gammaExposure) &&
            (identical(other.putCallRatio, putCallRatio) ||
                other.putCallRatio == putCallRatio) &&
            const DeepCollectionEquality().equals(other._patterns, _patterns) &&
            const DeepCollectionEquality()
                .equals(other._strikeAnalysis, _strikeAnalysis) &&
            const DeepCollectionEquality().equals(other._insights, _insights) &&
            const DeepCollectionEquality()
                .equals(other._recommendations, _recommendations));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_unusualActivity),
      const DeepCollectionEquality().hash(_institutionalFlow),
      sentiment,
      gammaExposure,
      putCallRatio,
      const DeepCollectionEquality().hash(_patterns),
      const DeepCollectionEquality().hash(_strikeAnalysis),
      const DeepCollectionEquality().hash(_insights),
      const DeepCollectionEquality().hash(_recommendations));

  /// Create a copy of OptionsFlowAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OptionsFlowAnalysisImplCopyWith<_$OptionsFlowAnalysisImpl> get copyWith =>
      __$$OptionsFlowAnalysisImplCopyWithImpl<_$OptionsFlowAnalysisImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OptionsFlowAnalysisImplToJson(
      this,
    );
  }
}

abstract class _OptionsFlowAnalysis implements OptionsFlowAnalysis {
  const factory _OptionsFlowAnalysis(
          {required final List<OptionsContract> unusualActivity,
          required final List<OptionsContract> institutionalFlow,
          required final OptionsSentiment sentiment,
          required final GammaExposure gammaExposure,
          required final PutCallRatio putCallRatio,
          required final List<FlowPattern> patterns,
          required final List<StrikeAnalysis> strikeAnalysis,
          required final List<OptionsInsight> insights,
          required final List<OptionsRecommendation> recommendations}) =
      _$OptionsFlowAnalysisImpl;

  factory _OptionsFlowAnalysis.fromJson(Map<String, dynamic> json) =
      _$OptionsFlowAnalysisImpl.fromJson;

  @override
  List<OptionsContract> get unusualActivity;
  @override
  List<OptionsContract> get institutionalFlow;
  @override
  OptionsSentiment get sentiment;
  @override
  GammaExposure get gammaExposure;
  @override
  PutCallRatio get putCallRatio;
  @override
  List<FlowPattern> get patterns;
  @override
  List<StrikeAnalysis> get strikeAnalysis;
  @override
  List<OptionsInsight> get insights;
  @override
  List<OptionsRecommendation> get recommendations;

  /// Create a copy of OptionsFlowAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OptionsFlowAnalysisImplCopyWith<_$OptionsFlowAnalysisImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OptionsContract _$OptionsContractFromJson(Map<String, dynamic> json) {
  return _OptionsContract.fromJson(json);
}

/// @nodoc
mixin _$OptionsContract {
  String get symbol => throw _privateConstructorUsedError;
  double get strike => throw _privateConstructorUsedError;
  DateTime get expiration => throw _privateConstructorUsedError;
  OptionsType get type => throw _privateConstructorUsedError;
  double get lastPrice => throw _privateConstructorUsedError;
  int get volume => throw _privateConstructorUsedError;
  int get openInterest => throw _privateConstructorUsedError;
  double get impliedVolatility => throw _privateConstructorUsedError;
  double get delta => throw _privateConstructorUsedError;
  double get gamma => throw _privateConstructorUsedError;
  double get theta => throw _privateConstructorUsedError;
  double get vega => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  double get priceChange => throw _privateConstructorUsedError;
  double get volumeChange => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this OptionsContract to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OptionsContract
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OptionsContractCopyWith<OptionsContract> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionsContractCopyWith<$Res> {
  factory $OptionsContractCopyWith(
          OptionsContract value, $Res Function(OptionsContract) then) =
      _$OptionsContractCopyWithImpl<$Res, OptionsContract>;
  @useResult
  $Res call(
      {String symbol,
      double strike,
      DateTime expiration,
      OptionsType type,
      double lastPrice,
      int volume,
      int openInterest,
      double impliedVolatility,
      double delta,
      double gamma,
      double theta,
      double vega,
      DateTime timestamp,
      double priceChange,
      double volumeChange,
      String description});
}

/// @nodoc
class _$OptionsContractCopyWithImpl<$Res, $Val extends OptionsContract>
    implements $OptionsContractCopyWith<$Res> {
  _$OptionsContractCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OptionsContract
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? strike = null,
    Object? expiration = null,
    Object? type = null,
    Object? lastPrice = null,
    Object? volume = null,
    Object? openInterest = null,
    Object? impliedVolatility = null,
    Object? delta = null,
    Object? gamma = null,
    Object? theta = null,
    Object? vega = null,
    Object? timestamp = null,
    Object? priceChange = null,
    Object? volumeChange = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      strike: null == strike
          ? _value.strike
          : strike // ignore: cast_nullable_to_non_nullable
              as double,
      expiration: null == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OptionsType,
      lastPrice: null == lastPrice
          ? _value.lastPrice
          : lastPrice // ignore: cast_nullable_to_non_nullable
              as double,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as int,
      openInterest: null == openInterest
          ? _value.openInterest
          : openInterest // ignore: cast_nullable_to_non_nullable
              as int,
      impliedVolatility: null == impliedVolatility
          ? _value.impliedVolatility
          : impliedVolatility // ignore: cast_nullable_to_non_nullable
              as double,
      delta: null == delta
          ? _value.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as double,
      gamma: null == gamma
          ? _value.gamma
          : gamma // ignore: cast_nullable_to_non_nullable
              as double,
      theta: null == theta
          ? _value.theta
          : theta // ignore: cast_nullable_to_non_nullable
              as double,
      vega: null == vega
          ? _value.vega
          : vega // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      priceChange: null == priceChange
          ? _value.priceChange
          : priceChange // ignore: cast_nullable_to_non_nullable
              as double,
      volumeChange: null == volumeChange
          ? _value.volumeChange
          : volumeChange // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OptionsContractImplCopyWith<$Res>
    implements $OptionsContractCopyWith<$Res> {
  factory _$$OptionsContractImplCopyWith(_$OptionsContractImpl value,
          $Res Function(_$OptionsContractImpl) then) =
      __$$OptionsContractImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      double strike,
      DateTime expiration,
      OptionsType type,
      double lastPrice,
      int volume,
      int openInterest,
      double impliedVolatility,
      double delta,
      double gamma,
      double theta,
      double vega,
      DateTime timestamp,
      double priceChange,
      double volumeChange,
      String description});
}

/// @nodoc
class __$$OptionsContractImplCopyWithImpl<$Res>
    extends _$OptionsContractCopyWithImpl<$Res, _$OptionsContractImpl>
    implements _$$OptionsContractImplCopyWith<$Res> {
  __$$OptionsContractImplCopyWithImpl(
      _$OptionsContractImpl _value, $Res Function(_$OptionsContractImpl) _then)
      : super(_value, _then);

  /// Create a copy of OptionsContract
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? strike = null,
    Object? expiration = null,
    Object? type = null,
    Object? lastPrice = null,
    Object? volume = null,
    Object? openInterest = null,
    Object? impliedVolatility = null,
    Object? delta = null,
    Object? gamma = null,
    Object? theta = null,
    Object? vega = null,
    Object? timestamp = null,
    Object? priceChange = null,
    Object? volumeChange = null,
    Object? description = null,
  }) {
    return _then(_$OptionsContractImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      strike: null == strike
          ? _value.strike
          : strike // ignore: cast_nullable_to_non_nullable
              as double,
      expiration: null == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OptionsType,
      lastPrice: null == lastPrice
          ? _value.lastPrice
          : lastPrice // ignore: cast_nullable_to_non_nullable
              as double,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as int,
      openInterest: null == openInterest
          ? _value.openInterest
          : openInterest // ignore: cast_nullable_to_non_nullable
              as int,
      impliedVolatility: null == impliedVolatility
          ? _value.impliedVolatility
          : impliedVolatility // ignore: cast_nullable_to_non_nullable
              as double,
      delta: null == delta
          ? _value.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as double,
      gamma: null == gamma
          ? _value.gamma
          : gamma // ignore: cast_nullable_to_non_nullable
              as double,
      theta: null == theta
          ? _value.theta
          : theta // ignore: cast_nullable_to_non_nullable
              as double,
      vega: null == vega
          ? _value.vega
          : vega // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      priceChange: null == priceChange
          ? _value.priceChange
          : priceChange // ignore: cast_nullable_to_non_nullable
              as double,
      volumeChange: null == volumeChange
          ? _value.volumeChange
          : volumeChange // ignore: cast_nullable_to_non_nullable
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
class _$OptionsContractImpl implements _OptionsContract {
  const _$OptionsContractImpl(
      {required this.symbol,
      required this.strike,
      required this.expiration,
      required this.type,
      required this.lastPrice,
      required this.volume,
      required this.openInterest,
      required this.impliedVolatility,
      required this.delta,
      required this.gamma,
      required this.theta,
      required this.vega,
      required this.timestamp,
      required this.priceChange,
      required this.volumeChange,
      required this.description});

  factory _$OptionsContractImpl.fromJson(Map<String, dynamic> json) =>
      _$$OptionsContractImplFromJson(json);

  @override
  final String symbol;
  @override
  final double strike;
  @override
  final DateTime expiration;
  @override
  final OptionsType type;
  @override
  final double lastPrice;
  @override
  final int volume;
  @override
  final int openInterest;
  @override
  final double impliedVolatility;
  @override
  final double delta;
  @override
  final double gamma;
  @override
  final double theta;
  @override
  final double vega;
  @override
  final DateTime timestamp;
  @override
  final double priceChange;
  @override
  final double volumeChange;
  @override
  final String description;

  @override
  String toString() {
    return 'OptionsContract(symbol: $symbol, strike: $strike, expiration: $expiration, type: $type, lastPrice: $lastPrice, volume: $volume, openInterest: $openInterest, impliedVolatility: $impliedVolatility, delta: $delta, gamma: $gamma, theta: $theta, vega: $vega, timestamp: $timestamp, priceChange: $priceChange, volumeChange: $volumeChange, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OptionsContractImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.strike, strike) || other.strike == strike) &&
            (identical(other.expiration, expiration) ||
                other.expiration == expiration) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.lastPrice, lastPrice) ||
                other.lastPrice == lastPrice) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.openInterest, openInterest) ||
                other.openInterest == openInterest) &&
            (identical(other.impliedVolatility, impliedVolatility) ||
                other.impliedVolatility == impliedVolatility) &&
            (identical(other.delta, delta) || other.delta == delta) &&
            (identical(other.gamma, gamma) || other.gamma == gamma) &&
            (identical(other.theta, theta) || other.theta == theta) &&
            (identical(other.vega, vega) || other.vega == vega) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.priceChange, priceChange) ||
                other.priceChange == priceChange) &&
            (identical(other.volumeChange, volumeChange) ||
                other.volumeChange == volumeChange) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      symbol,
      strike,
      expiration,
      type,
      lastPrice,
      volume,
      openInterest,
      impliedVolatility,
      delta,
      gamma,
      theta,
      vega,
      timestamp,
      priceChange,
      volumeChange,
      description);

  /// Create a copy of OptionsContract
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OptionsContractImplCopyWith<_$OptionsContractImpl> get copyWith =>
      __$$OptionsContractImplCopyWithImpl<_$OptionsContractImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OptionsContractImplToJson(
      this,
    );
  }
}

abstract class _OptionsContract implements OptionsContract {
  const factory _OptionsContract(
      {required final String symbol,
      required final double strike,
      required final DateTime expiration,
      required final OptionsType type,
      required final double lastPrice,
      required final int volume,
      required final int openInterest,
      required final double impliedVolatility,
      required final double delta,
      required final double gamma,
      required final double theta,
      required final double vega,
      required final DateTime timestamp,
      required final double priceChange,
      required final double volumeChange,
      required final String description}) = _$OptionsContractImpl;

  factory _OptionsContract.fromJson(Map<String, dynamic> json) =
      _$OptionsContractImpl.fromJson;

  @override
  String get symbol;
  @override
  double get strike;
  @override
  DateTime get expiration;
  @override
  OptionsType get type;
  @override
  double get lastPrice;
  @override
  int get volume;
  @override
  int get openInterest;
  @override
  double get impliedVolatility;
  @override
  double get delta;
  @override
  double get gamma;
  @override
  double get theta;
  @override
  double get vega;
  @override
  DateTime get timestamp;
  @override
  double get priceChange;
  @override
  double get volumeChange;
  @override
  String get description;

  /// Create a copy of OptionsContract
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OptionsContractImplCopyWith<_$OptionsContractImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OptionsSentiment _$OptionsSentimentFromJson(Map<String, dynamic> json) {
  return _OptionsSentiment.fromJson(json);
}

/// @nodoc
mixin _$OptionsSentiment {
  double get overallSentiment => throw _privateConstructorUsedError;
  double get callSentiment => throw _privateConstructorUsedError;
  double get putSentiment => throw _privateConstructorUsedError;
  double get institutionalSentiment => throw _privateConstructorUsedError;
  double get retailSentiment => throw _privateConstructorUsedError;
  List<String> get bullishSignals => throw _privateConstructorUsedError;
  List<String> get bearishSignals => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;

  /// Serializes this OptionsSentiment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OptionsSentiment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OptionsSentimentCopyWith<OptionsSentiment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionsSentimentCopyWith<$Res> {
  factory $OptionsSentimentCopyWith(
          OptionsSentiment value, $Res Function(OptionsSentiment) then) =
      _$OptionsSentimentCopyWithImpl<$Res, OptionsSentiment>;
  @useResult
  $Res call(
      {double overallSentiment,
      double callSentiment,
      double putSentiment,
      double institutionalSentiment,
      double retailSentiment,
      List<String> bullishSignals,
      List<String> bearishSignals,
      String summary});
}

/// @nodoc
class _$OptionsSentimentCopyWithImpl<$Res, $Val extends OptionsSentiment>
    implements $OptionsSentimentCopyWith<$Res> {
  _$OptionsSentimentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OptionsSentiment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overallSentiment = null,
    Object? callSentiment = null,
    Object? putSentiment = null,
    Object? institutionalSentiment = null,
    Object? retailSentiment = null,
    Object? bullishSignals = null,
    Object? bearishSignals = null,
    Object? summary = null,
  }) {
    return _then(_value.copyWith(
      overallSentiment: null == overallSentiment
          ? _value.overallSentiment
          : overallSentiment // ignore: cast_nullable_to_non_nullable
              as double,
      callSentiment: null == callSentiment
          ? _value.callSentiment
          : callSentiment // ignore: cast_nullable_to_non_nullable
              as double,
      putSentiment: null == putSentiment
          ? _value.putSentiment
          : putSentiment // ignore: cast_nullable_to_non_nullable
              as double,
      institutionalSentiment: null == institutionalSentiment
          ? _value.institutionalSentiment
          : institutionalSentiment // ignore: cast_nullable_to_non_nullable
              as double,
      retailSentiment: null == retailSentiment
          ? _value.retailSentiment
          : retailSentiment // ignore: cast_nullable_to_non_nullable
              as double,
      bullishSignals: null == bullishSignals
          ? _value.bullishSignals
          : bullishSignals // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bearishSignals: null == bearishSignals
          ? _value.bearishSignals
          : bearishSignals // ignore: cast_nullable_to_non_nullable
              as List<String>,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OptionsSentimentImplCopyWith<$Res>
    implements $OptionsSentimentCopyWith<$Res> {
  factory _$$OptionsSentimentImplCopyWith(_$OptionsSentimentImpl value,
          $Res Function(_$OptionsSentimentImpl) then) =
      __$$OptionsSentimentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double overallSentiment,
      double callSentiment,
      double putSentiment,
      double institutionalSentiment,
      double retailSentiment,
      List<String> bullishSignals,
      List<String> bearishSignals,
      String summary});
}

/// @nodoc
class __$$OptionsSentimentImplCopyWithImpl<$Res>
    extends _$OptionsSentimentCopyWithImpl<$Res, _$OptionsSentimentImpl>
    implements _$$OptionsSentimentImplCopyWith<$Res> {
  __$$OptionsSentimentImplCopyWithImpl(_$OptionsSentimentImpl _value,
      $Res Function(_$OptionsSentimentImpl) _then)
      : super(_value, _then);

  /// Create a copy of OptionsSentiment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overallSentiment = null,
    Object? callSentiment = null,
    Object? putSentiment = null,
    Object? institutionalSentiment = null,
    Object? retailSentiment = null,
    Object? bullishSignals = null,
    Object? bearishSignals = null,
    Object? summary = null,
  }) {
    return _then(_$OptionsSentimentImpl(
      overallSentiment: null == overallSentiment
          ? _value.overallSentiment
          : overallSentiment // ignore: cast_nullable_to_non_nullable
              as double,
      callSentiment: null == callSentiment
          ? _value.callSentiment
          : callSentiment // ignore: cast_nullable_to_non_nullable
              as double,
      putSentiment: null == putSentiment
          ? _value.putSentiment
          : putSentiment // ignore: cast_nullable_to_non_nullable
              as double,
      institutionalSentiment: null == institutionalSentiment
          ? _value.institutionalSentiment
          : institutionalSentiment // ignore: cast_nullable_to_non_nullable
              as double,
      retailSentiment: null == retailSentiment
          ? _value.retailSentiment
          : retailSentiment // ignore: cast_nullable_to_non_nullable
              as double,
      bullishSignals: null == bullishSignals
          ? _value._bullishSignals
          : bullishSignals // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bearishSignals: null == bearishSignals
          ? _value._bearishSignals
          : bearishSignals // ignore: cast_nullable_to_non_nullable
              as List<String>,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OptionsSentimentImpl implements _OptionsSentiment {
  const _$OptionsSentimentImpl(
      {required this.overallSentiment,
      required this.callSentiment,
      required this.putSentiment,
      required this.institutionalSentiment,
      required this.retailSentiment,
      required final List<String> bullishSignals,
      required final List<String> bearishSignals,
      required this.summary})
      : _bullishSignals = bullishSignals,
        _bearishSignals = bearishSignals;

  factory _$OptionsSentimentImpl.fromJson(Map<String, dynamic> json) =>
      _$$OptionsSentimentImplFromJson(json);

  @override
  final double overallSentiment;
  @override
  final double callSentiment;
  @override
  final double putSentiment;
  @override
  final double institutionalSentiment;
  @override
  final double retailSentiment;
  final List<String> _bullishSignals;
  @override
  List<String> get bullishSignals {
    if (_bullishSignals is EqualUnmodifiableListView) return _bullishSignals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bullishSignals);
  }

  final List<String> _bearishSignals;
  @override
  List<String> get bearishSignals {
    if (_bearishSignals is EqualUnmodifiableListView) return _bearishSignals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bearishSignals);
  }

  @override
  final String summary;

  @override
  String toString() {
    return 'OptionsSentiment(overallSentiment: $overallSentiment, callSentiment: $callSentiment, putSentiment: $putSentiment, institutionalSentiment: $institutionalSentiment, retailSentiment: $retailSentiment, bullishSignals: $bullishSignals, bearishSignals: $bearishSignals, summary: $summary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OptionsSentimentImpl &&
            (identical(other.overallSentiment, overallSentiment) ||
                other.overallSentiment == overallSentiment) &&
            (identical(other.callSentiment, callSentiment) ||
                other.callSentiment == callSentiment) &&
            (identical(other.putSentiment, putSentiment) ||
                other.putSentiment == putSentiment) &&
            (identical(other.institutionalSentiment, institutionalSentiment) ||
                other.institutionalSentiment == institutionalSentiment) &&
            (identical(other.retailSentiment, retailSentiment) ||
                other.retailSentiment == retailSentiment) &&
            const DeepCollectionEquality()
                .equals(other._bullishSignals, _bullishSignals) &&
            const DeepCollectionEquality()
                .equals(other._bearishSignals, _bearishSignals) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      overallSentiment,
      callSentiment,
      putSentiment,
      institutionalSentiment,
      retailSentiment,
      const DeepCollectionEquality().hash(_bullishSignals),
      const DeepCollectionEquality().hash(_bearishSignals),
      summary);

  /// Create a copy of OptionsSentiment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OptionsSentimentImplCopyWith<_$OptionsSentimentImpl> get copyWith =>
      __$$OptionsSentimentImplCopyWithImpl<_$OptionsSentimentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OptionsSentimentImplToJson(
      this,
    );
  }
}

abstract class _OptionsSentiment implements OptionsSentiment {
  const factory _OptionsSentiment(
      {required final double overallSentiment,
      required final double callSentiment,
      required final double putSentiment,
      required final double institutionalSentiment,
      required final double retailSentiment,
      required final List<String> bullishSignals,
      required final List<String> bearishSignals,
      required final String summary}) = _$OptionsSentimentImpl;

  factory _OptionsSentiment.fromJson(Map<String, dynamic> json) =
      _$OptionsSentimentImpl.fromJson;

  @override
  double get overallSentiment;
  @override
  double get callSentiment;
  @override
  double get putSentiment;
  @override
  double get institutionalSentiment;
  @override
  double get retailSentiment;
  @override
  List<String> get bullishSignals;
  @override
  List<String> get bearishSignals;
  @override
  String get summary;

  /// Create a copy of OptionsSentiment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OptionsSentimentImplCopyWith<_$OptionsSentimentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GammaExposure _$GammaExposureFromJson(Map<String, dynamic> json) {
  return _GammaExposure.fromJson(json);
}

/// @nodoc
mixin _$GammaExposure {
  double get totalGamma => throw _privateConstructorUsedError;
  double get callGamma => throw _privateConstructorUsedError;
  double get putGamma => throw _privateConstructorUsedError;
  double get netGamma => throw _privateConstructorUsedError;
  Map<String, double> get gammaByStrike => throw _privateConstructorUsedError;
  List<double> get gammaSpikes => throw _privateConstructorUsedError;
  String get analysis => throw _privateConstructorUsedError;

  /// Serializes this GammaExposure to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GammaExposure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GammaExposureCopyWith<GammaExposure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GammaExposureCopyWith<$Res> {
  factory $GammaExposureCopyWith(
          GammaExposure value, $Res Function(GammaExposure) then) =
      _$GammaExposureCopyWithImpl<$Res, GammaExposure>;
  @useResult
  $Res call(
      {double totalGamma,
      double callGamma,
      double putGamma,
      double netGamma,
      Map<String, double> gammaByStrike,
      List<double> gammaSpikes,
      String analysis});
}

/// @nodoc
class _$GammaExposureCopyWithImpl<$Res, $Val extends GammaExposure>
    implements $GammaExposureCopyWith<$Res> {
  _$GammaExposureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GammaExposure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalGamma = null,
    Object? callGamma = null,
    Object? putGamma = null,
    Object? netGamma = null,
    Object? gammaByStrike = null,
    Object? gammaSpikes = null,
    Object? analysis = null,
  }) {
    return _then(_value.copyWith(
      totalGamma: null == totalGamma
          ? _value.totalGamma
          : totalGamma // ignore: cast_nullable_to_non_nullable
              as double,
      callGamma: null == callGamma
          ? _value.callGamma
          : callGamma // ignore: cast_nullable_to_non_nullable
              as double,
      putGamma: null == putGamma
          ? _value.putGamma
          : putGamma // ignore: cast_nullable_to_non_nullable
              as double,
      netGamma: null == netGamma
          ? _value.netGamma
          : netGamma // ignore: cast_nullable_to_non_nullable
              as double,
      gammaByStrike: null == gammaByStrike
          ? _value.gammaByStrike
          : gammaByStrike // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      gammaSpikes: null == gammaSpikes
          ? _value.gammaSpikes
          : gammaSpikes // ignore: cast_nullable_to_non_nullable
              as List<double>,
      analysis: null == analysis
          ? _value.analysis
          : analysis // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GammaExposureImplCopyWith<$Res>
    implements $GammaExposureCopyWith<$Res> {
  factory _$$GammaExposureImplCopyWith(
          _$GammaExposureImpl value, $Res Function(_$GammaExposureImpl) then) =
      __$$GammaExposureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double totalGamma,
      double callGamma,
      double putGamma,
      double netGamma,
      Map<String, double> gammaByStrike,
      List<double> gammaSpikes,
      String analysis});
}

/// @nodoc
class __$$GammaExposureImplCopyWithImpl<$Res>
    extends _$GammaExposureCopyWithImpl<$Res, _$GammaExposureImpl>
    implements _$$GammaExposureImplCopyWith<$Res> {
  __$$GammaExposureImplCopyWithImpl(
      _$GammaExposureImpl _value, $Res Function(_$GammaExposureImpl) _then)
      : super(_value, _then);

  /// Create a copy of GammaExposure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalGamma = null,
    Object? callGamma = null,
    Object? putGamma = null,
    Object? netGamma = null,
    Object? gammaByStrike = null,
    Object? gammaSpikes = null,
    Object? analysis = null,
  }) {
    return _then(_$GammaExposureImpl(
      totalGamma: null == totalGamma
          ? _value.totalGamma
          : totalGamma // ignore: cast_nullable_to_non_nullable
              as double,
      callGamma: null == callGamma
          ? _value.callGamma
          : callGamma // ignore: cast_nullable_to_non_nullable
              as double,
      putGamma: null == putGamma
          ? _value.putGamma
          : putGamma // ignore: cast_nullable_to_non_nullable
              as double,
      netGamma: null == netGamma
          ? _value.netGamma
          : netGamma // ignore: cast_nullable_to_non_nullable
              as double,
      gammaByStrike: null == gammaByStrike
          ? _value._gammaByStrike
          : gammaByStrike // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      gammaSpikes: null == gammaSpikes
          ? _value._gammaSpikes
          : gammaSpikes // ignore: cast_nullable_to_non_nullable
              as List<double>,
      analysis: null == analysis
          ? _value.analysis
          : analysis // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GammaExposureImpl implements _GammaExposure {
  const _$GammaExposureImpl(
      {required this.totalGamma,
      required this.callGamma,
      required this.putGamma,
      required this.netGamma,
      required final Map<String, double> gammaByStrike,
      required final List<double> gammaSpikes,
      required this.analysis})
      : _gammaByStrike = gammaByStrike,
        _gammaSpikes = gammaSpikes;

  factory _$GammaExposureImpl.fromJson(Map<String, dynamic> json) =>
      _$$GammaExposureImplFromJson(json);

  @override
  final double totalGamma;
  @override
  final double callGamma;
  @override
  final double putGamma;
  @override
  final double netGamma;
  final Map<String, double> _gammaByStrike;
  @override
  Map<String, double> get gammaByStrike {
    if (_gammaByStrike is EqualUnmodifiableMapView) return _gammaByStrike;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_gammaByStrike);
  }

  final List<double> _gammaSpikes;
  @override
  List<double> get gammaSpikes {
    if (_gammaSpikes is EqualUnmodifiableListView) return _gammaSpikes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gammaSpikes);
  }

  @override
  final String analysis;

  @override
  String toString() {
    return 'GammaExposure(totalGamma: $totalGamma, callGamma: $callGamma, putGamma: $putGamma, netGamma: $netGamma, gammaByStrike: $gammaByStrike, gammaSpikes: $gammaSpikes, analysis: $analysis)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GammaExposureImpl &&
            (identical(other.totalGamma, totalGamma) ||
                other.totalGamma == totalGamma) &&
            (identical(other.callGamma, callGamma) ||
                other.callGamma == callGamma) &&
            (identical(other.putGamma, putGamma) ||
                other.putGamma == putGamma) &&
            (identical(other.netGamma, netGamma) ||
                other.netGamma == netGamma) &&
            const DeepCollectionEquality()
                .equals(other._gammaByStrike, _gammaByStrike) &&
            const DeepCollectionEquality()
                .equals(other._gammaSpikes, _gammaSpikes) &&
            (identical(other.analysis, analysis) ||
                other.analysis == analysis));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalGamma,
      callGamma,
      putGamma,
      netGamma,
      const DeepCollectionEquality().hash(_gammaByStrike),
      const DeepCollectionEquality().hash(_gammaSpikes),
      analysis);

  /// Create a copy of GammaExposure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GammaExposureImplCopyWith<_$GammaExposureImpl> get copyWith =>
      __$$GammaExposureImplCopyWithImpl<_$GammaExposureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GammaExposureImplToJson(
      this,
    );
  }
}

abstract class _GammaExposure implements GammaExposure {
  const factory _GammaExposure(
      {required final double totalGamma,
      required final double callGamma,
      required final double putGamma,
      required final double netGamma,
      required final Map<String, double> gammaByStrike,
      required final List<double> gammaSpikes,
      required final String analysis}) = _$GammaExposureImpl;

  factory _GammaExposure.fromJson(Map<String, dynamic> json) =
      _$GammaExposureImpl.fromJson;

  @override
  double get totalGamma;
  @override
  double get callGamma;
  @override
  double get putGamma;
  @override
  double get netGamma;
  @override
  Map<String, double> get gammaByStrike;
  @override
  List<double> get gammaSpikes;
  @override
  String get analysis;

  /// Create a copy of GammaExposure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GammaExposureImplCopyWith<_$GammaExposureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PutCallRatio _$PutCallRatioFromJson(Map<String, dynamic> json) {
  return _PutCallRatio.fromJson(json);
}

/// @nodoc
mixin _$PutCallRatio {
  double get ratio => throw _privateConstructorUsedError;
  double get volumeRatio => throw _privateConstructorUsedError;
  double get openInterestRatio => throw _privateConstructorUsedError;
  double get historicalAverage => throw _privateConstructorUsedError;
  String get interpretation => throw _privateConstructorUsedError;
  String get signal => throw _privateConstructorUsedError;

  /// Serializes this PutCallRatio to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PutCallRatio
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PutCallRatioCopyWith<PutCallRatio> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PutCallRatioCopyWith<$Res> {
  factory $PutCallRatioCopyWith(
          PutCallRatio value, $Res Function(PutCallRatio) then) =
      _$PutCallRatioCopyWithImpl<$Res, PutCallRatio>;
  @useResult
  $Res call(
      {double ratio,
      double volumeRatio,
      double openInterestRatio,
      double historicalAverage,
      String interpretation,
      String signal});
}

/// @nodoc
class _$PutCallRatioCopyWithImpl<$Res, $Val extends PutCallRatio>
    implements $PutCallRatioCopyWith<$Res> {
  _$PutCallRatioCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PutCallRatio
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ratio = null,
    Object? volumeRatio = null,
    Object? openInterestRatio = null,
    Object? historicalAverage = null,
    Object? interpretation = null,
    Object? signal = null,
  }) {
    return _then(_value.copyWith(
      ratio: null == ratio
          ? _value.ratio
          : ratio // ignore: cast_nullable_to_non_nullable
              as double,
      volumeRatio: null == volumeRatio
          ? _value.volumeRatio
          : volumeRatio // ignore: cast_nullable_to_non_nullable
              as double,
      openInterestRatio: null == openInterestRatio
          ? _value.openInterestRatio
          : openInterestRatio // ignore: cast_nullable_to_non_nullable
              as double,
      historicalAverage: null == historicalAverage
          ? _value.historicalAverage
          : historicalAverage // ignore: cast_nullable_to_non_nullable
              as double,
      interpretation: null == interpretation
          ? _value.interpretation
          : interpretation // ignore: cast_nullable_to_non_nullable
              as String,
      signal: null == signal
          ? _value.signal
          : signal // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PutCallRatioImplCopyWith<$Res>
    implements $PutCallRatioCopyWith<$Res> {
  factory _$$PutCallRatioImplCopyWith(
          _$PutCallRatioImpl value, $Res Function(_$PutCallRatioImpl) then) =
      __$$PutCallRatioImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double ratio,
      double volumeRatio,
      double openInterestRatio,
      double historicalAverage,
      String interpretation,
      String signal});
}

/// @nodoc
class __$$PutCallRatioImplCopyWithImpl<$Res>
    extends _$PutCallRatioCopyWithImpl<$Res, _$PutCallRatioImpl>
    implements _$$PutCallRatioImplCopyWith<$Res> {
  __$$PutCallRatioImplCopyWithImpl(
      _$PutCallRatioImpl _value, $Res Function(_$PutCallRatioImpl) _then)
      : super(_value, _then);

  /// Create a copy of PutCallRatio
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ratio = null,
    Object? volumeRatio = null,
    Object? openInterestRatio = null,
    Object? historicalAverage = null,
    Object? interpretation = null,
    Object? signal = null,
  }) {
    return _then(_$PutCallRatioImpl(
      ratio: null == ratio
          ? _value.ratio
          : ratio // ignore: cast_nullable_to_non_nullable
              as double,
      volumeRatio: null == volumeRatio
          ? _value.volumeRatio
          : volumeRatio // ignore: cast_nullable_to_non_nullable
              as double,
      openInterestRatio: null == openInterestRatio
          ? _value.openInterestRatio
          : openInterestRatio // ignore: cast_nullable_to_non_nullable
              as double,
      historicalAverage: null == historicalAverage
          ? _value.historicalAverage
          : historicalAverage // ignore: cast_nullable_to_non_nullable
              as double,
      interpretation: null == interpretation
          ? _value.interpretation
          : interpretation // ignore: cast_nullable_to_non_nullable
              as String,
      signal: null == signal
          ? _value.signal
          : signal // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PutCallRatioImpl implements _PutCallRatio {
  const _$PutCallRatioImpl(
      {required this.ratio,
      required this.volumeRatio,
      required this.openInterestRatio,
      required this.historicalAverage,
      required this.interpretation,
      required this.signal});

  factory _$PutCallRatioImpl.fromJson(Map<String, dynamic> json) =>
      _$$PutCallRatioImplFromJson(json);

  @override
  final double ratio;
  @override
  final double volumeRatio;
  @override
  final double openInterestRatio;
  @override
  final double historicalAverage;
  @override
  final String interpretation;
  @override
  final String signal;

  @override
  String toString() {
    return 'PutCallRatio(ratio: $ratio, volumeRatio: $volumeRatio, openInterestRatio: $openInterestRatio, historicalAverage: $historicalAverage, interpretation: $interpretation, signal: $signal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PutCallRatioImpl &&
            (identical(other.ratio, ratio) || other.ratio == ratio) &&
            (identical(other.volumeRatio, volumeRatio) ||
                other.volumeRatio == volumeRatio) &&
            (identical(other.openInterestRatio, openInterestRatio) ||
                other.openInterestRatio == openInterestRatio) &&
            (identical(other.historicalAverage, historicalAverage) ||
                other.historicalAverage == historicalAverage) &&
            (identical(other.interpretation, interpretation) ||
                other.interpretation == interpretation) &&
            (identical(other.signal, signal) || other.signal == signal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ratio, volumeRatio,
      openInterestRatio, historicalAverage, interpretation, signal);

  /// Create a copy of PutCallRatio
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PutCallRatioImplCopyWith<_$PutCallRatioImpl> get copyWith =>
      __$$PutCallRatioImplCopyWithImpl<_$PutCallRatioImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PutCallRatioImplToJson(
      this,
    );
  }
}

abstract class _PutCallRatio implements PutCallRatio {
  const factory _PutCallRatio(
      {required final double ratio,
      required final double volumeRatio,
      required final double openInterestRatio,
      required final double historicalAverage,
      required final String interpretation,
      required final String signal}) = _$PutCallRatioImpl;

  factory _PutCallRatio.fromJson(Map<String, dynamic> json) =
      _$PutCallRatioImpl.fromJson;

  @override
  double get ratio;
  @override
  double get volumeRatio;
  @override
  double get openInterestRatio;
  @override
  double get historicalAverage;
  @override
  String get interpretation;
  @override
  String get signal;

  /// Create a copy of PutCallRatio
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PutCallRatioImplCopyWith<_$PutCallRatioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FlowPattern _$FlowPatternFromJson(Map<String, dynamic> json) {
  return _FlowPattern.fromJson(json);
}

/// @nodoc
mixin _$FlowPattern {
  PatternType get type => throw _privateConstructorUsedError;
  double get strength => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  List<OptionsContract> get contracts => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;

  /// Serializes this FlowPattern to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FlowPattern
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlowPatternCopyWith<FlowPattern> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlowPatternCopyWith<$Res> {
  factory $FlowPatternCopyWith(
          FlowPattern value, $Res Function(FlowPattern) then) =
      _$FlowPatternCopyWithImpl<$Res, FlowPattern>;
  @useResult
  $Res call(
      {PatternType type,
      double strength,
      DateTime timestamp,
      List<OptionsContract> contracts,
      String description,
      double confidence});
}

/// @nodoc
class _$FlowPatternCopyWithImpl<$Res, $Val extends FlowPattern>
    implements $FlowPatternCopyWith<$Res> {
  _$FlowPatternCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlowPattern
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? strength = null,
    Object? timestamp = null,
    Object? contracts = null,
    Object? description = null,
    Object? confidence = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PatternType,
      strength: null == strength
          ? _value.strength
          : strength // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      contracts: null == contracts
          ? _value.contracts
          : contracts // ignore: cast_nullable_to_non_nullable
              as List<OptionsContract>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlowPatternImplCopyWith<$Res>
    implements $FlowPatternCopyWith<$Res> {
  factory _$$FlowPatternImplCopyWith(
          _$FlowPatternImpl value, $Res Function(_$FlowPatternImpl) then) =
      __$$FlowPatternImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PatternType type,
      double strength,
      DateTime timestamp,
      List<OptionsContract> contracts,
      String description,
      double confidence});
}

/// @nodoc
class __$$FlowPatternImplCopyWithImpl<$Res>
    extends _$FlowPatternCopyWithImpl<$Res, _$FlowPatternImpl>
    implements _$$FlowPatternImplCopyWith<$Res> {
  __$$FlowPatternImplCopyWithImpl(
      _$FlowPatternImpl _value, $Res Function(_$FlowPatternImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlowPattern
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? strength = null,
    Object? timestamp = null,
    Object? contracts = null,
    Object? description = null,
    Object? confidence = null,
  }) {
    return _then(_$FlowPatternImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PatternType,
      strength: null == strength
          ? _value.strength
          : strength // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      contracts: null == contracts
          ? _value._contracts
          : contracts // ignore: cast_nullable_to_non_nullable
              as List<OptionsContract>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlowPatternImpl implements _FlowPattern {
  const _$FlowPatternImpl(
      {required this.type,
      required this.strength,
      required this.timestamp,
      required final List<OptionsContract> contracts,
      required this.description,
      required this.confidence})
      : _contracts = contracts;

  factory _$FlowPatternImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlowPatternImplFromJson(json);

  @override
  final PatternType type;
  @override
  final double strength;
  @override
  final DateTime timestamp;
  final List<OptionsContract> _contracts;
  @override
  List<OptionsContract> get contracts {
    if (_contracts is EqualUnmodifiableListView) return _contracts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contracts);
  }

  @override
  final String description;
  @override
  final double confidence;

  @override
  String toString() {
    return 'FlowPattern(type: $type, strength: $strength, timestamp: $timestamp, contracts: $contracts, description: $description, confidence: $confidence)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlowPatternImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.strength, strength) ||
                other.strength == strength) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality()
                .equals(other._contracts, _contracts) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, strength, timestamp,
      const DeepCollectionEquality().hash(_contracts), description, confidence);

  /// Create a copy of FlowPattern
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlowPatternImplCopyWith<_$FlowPatternImpl> get copyWith =>
      __$$FlowPatternImplCopyWithImpl<_$FlowPatternImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlowPatternImplToJson(
      this,
    );
  }
}

abstract class _FlowPattern implements FlowPattern {
  const factory _FlowPattern(
      {required final PatternType type,
      required final double strength,
      required final DateTime timestamp,
      required final List<OptionsContract> contracts,
      required final String description,
      required final double confidence}) = _$FlowPatternImpl;

  factory _FlowPattern.fromJson(Map<String, dynamic> json) =
      _$FlowPatternImpl.fromJson;

  @override
  PatternType get type;
  @override
  double get strength;
  @override
  DateTime get timestamp;
  @override
  List<OptionsContract> get contracts;
  @override
  String get description;
  @override
  double get confidence;

  /// Create a copy of FlowPattern
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlowPatternImplCopyWith<_$FlowPatternImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StrikeAnalysis _$StrikeAnalysisFromJson(Map<String, dynamic> json) {
  return _StrikeAnalysis.fromJson(json);
}

/// @nodoc
mixin _$StrikeAnalysis {
  double get strike => throw _privateConstructorUsedError;
  double get volume => throw _privateConstructorUsedError;
  double get openInterest => throw _privateConstructorUsedError;
  double get impliedVolatility => throw _privateConstructorUsedError;
  double get delta => throw _privateConstructorUsedError;
  double get gamma => throw _privateConstructorUsedError;
  String get analysis => throw _privateConstructorUsedError;
  double get significance => throw _privateConstructorUsedError;

  /// Serializes this StrikeAnalysis to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StrikeAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StrikeAnalysisCopyWith<StrikeAnalysis> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StrikeAnalysisCopyWith<$Res> {
  factory $StrikeAnalysisCopyWith(
          StrikeAnalysis value, $Res Function(StrikeAnalysis) then) =
      _$StrikeAnalysisCopyWithImpl<$Res, StrikeAnalysis>;
  @useResult
  $Res call(
      {double strike,
      double volume,
      double openInterest,
      double impliedVolatility,
      double delta,
      double gamma,
      String analysis,
      double significance});
}

/// @nodoc
class _$StrikeAnalysisCopyWithImpl<$Res, $Val extends StrikeAnalysis>
    implements $StrikeAnalysisCopyWith<$Res> {
  _$StrikeAnalysisCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StrikeAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? strike = null,
    Object? volume = null,
    Object? openInterest = null,
    Object? impliedVolatility = null,
    Object? delta = null,
    Object? gamma = null,
    Object? analysis = null,
    Object? significance = null,
  }) {
    return _then(_value.copyWith(
      strike: null == strike
          ? _value.strike
          : strike // ignore: cast_nullable_to_non_nullable
              as double,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      openInterest: null == openInterest
          ? _value.openInterest
          : openInterest // ignore: cast_nullable_to_non_nullable
              as double,
      impliedVolatility: null == impliedVolatility
          ? _value.impliedVolatility
          : impliedVolatility // ignore: cast_nullable_to_non_nullable
              as double,
      delta: null == delta
          ? _value.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as double,
      gamma: null == gamma
          ? _value.gamma
          : gamma // ignore: cast_nullable_to_non_nullable
              as double,
      analysis: null == analysis
          ? _value.analysis
          : analysis // ignore: cast_nullable_to_non_nullable
              as String,
      significance: null == significance
          ? _value.significance
          : significance // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StrikeAnalysisImplCopyWith<$Res>
    implements $StrikeAnalysisCopyWith<$Res> {
  factory _$$StrikeAnalysisImplCopyWith(_$StrikeAnalysisImpl value,
          $Res Function(_$StrikeAnalysisImpl) then) =
      __$$StrikeAnalysisImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double strike,
      double volume,
      double openInterest,
      double impliedVolatility,
      double delta,
      double gamma,
      String analysis,
      double significance});
}

/// @nodoc
class __$$StrikeAnalysisImplCopyWithImpl<$Res>
    extends _$StrikeAnalysisCopyWithImpl<$Res, _$StrikeAnalysisImpl>
    implements _$$StrikeAnalysisImplCopyWith<$Res> {
  __$$StrikeAnalysisImplCopyWithImpl(
      _$StrikeAnalysisImpl _value, $Res Function(_$StrikeAnalysisImpl) _then)
      : super(_value, _then);

  /// Create a copy of StrikeAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? strike = null,
    Object? volume = null,
    Object? openInterest = null,
    Object? impliedVolatility = null,
    Object? delta = null,
    Object? gamma = null,
    Object? analysis = null,
    Object? significance = null,
  }) {
    return _then(_$StrikeAnalysisImpl(
      strike: null == strike
          ? _value.strike
          : strike // ignore: cast_nullable_to_non_nullable
              as double,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      openInterest: null == openInterest
          ? _value.openInterest
          : openInterest // ignore: cast_nullable_to_non_nullable
              as double,
      impliedVolatility: null == impliedVolatility
          ? _value.impliedVolatility
          : impliedVolatility // ignore: cast_nullable_to_non_nullable
              as double,
      delta: null == delta
          ? _value.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as double,
      gamma: null == gamma
          ? _value.gamma
          : gamma // ignore: cast_nullable_to_non_nullable
              as double,
      analysis: null == analysis
          ? _value.analysis
          : analysis // ignore: cast_nullable_to_non_nullable
              as String,
      significance: null == significance
          ? _value.significance
          : significance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StrikeAnalysisImpl implements _StrikeAnalysis {
  const _$StrikeAnalysisImpl(
      {required this.strike,
      required this.volume,
      required this.openInterest,
      required this.impliedVolatility,
      required this.delta,
      required this.gamma,
      required this.analysis,
      required this.significance});

  factory _$StrikeAnalysisImpl.fromJson(Map<String, dynamic> json) =>
      _$$StrikeAnalysisImplFromJson(json);

  @override
  final double strike;
  @override
  final double volume;
  @override
  final double openInterest;
  @override
  final double impliedVolatility;
  @override
  final double delta;
  @override
  final double gamma;
  @override
  final String analysis;
  @override
  final double significance;

  @override
  String toString() {
    return 'StrikeAnalysis(strike: $strike, volume: $volume, openInterest: $openInterest, impliedVolatility: $impliedVolatility, delta: $delta, gamma: $gamma, analysis: $analysis, significance: $significance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StrikeAnalysisImpl &&
            (identical(other.strike, strike) || other.strike == strike) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.openInterest, openInterest) ||
                other.openInterest == openInterest) &&
            (identical(other.impliedVolatility, impliedVolatility) ||
                other.impliedVolatility == impliedVolatility) &&
            (identical(other.delta, delta) || other.delta == delta) &&
            (identical(other.gamma, gamma) || other.gamma == gamma) &&
            (identical(other.analysis, analysis) ||
                other.analysis == analysis) &&
            (identical(other.significance, significance) ||
                other.significance == significance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, strike, volume, openInterest,
      impliedVolatility, delta, gamma, analysis, significance);

  /// Create a copy of StrikeAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StrikeAnalysisImplCopyWith<_$StrikeAnalysisImpl> get copyWith =>
      __$$StrikeAnalysisImplCopyWithImpl<_$StrikeAnalysisImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StrikeAnalysisImplToJson(
      this,
    );
  }
}

abstract class _StrikeAnalysis implements StrikeAnalysis {
  const factory _StrikeAnalysis(
      {required final double strike,
      required final double volume,
      required final double openInterest,
      required final double impliedVolatility,
      required final double delta,
      required final double gamma,
      required final String analysis,
      required final double significance}) = _$StrikeAnalysisImpl;

  factory _StrikeAnalysis.fromJson(Map<String, dynamic> json) =
      _$StrikeAnalysisImpl.fromJson;

  @override
  double get strike;
  @override
  double get volume;
  @override
  double get openInterest;
  @override
  double get impliedVolatility;
  @override
  double get delta;
  @override
  double get gamma;
  @override
  String get analysis;
  @override
  double get significance;

  /// Create a copy of StrikeAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StrikeAnalysisImplCopyWith<_$StrikeAnalysisImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OptionsInsight _$OptionsInsightFromJson(Map<String, dynamic> json) {
  return _OptionsInsight.fromJson(json);
}

/// @nodoc
mixin _$OptionsInsight {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  InsightType get type => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  List<String> get evidence => throw _privateConstructorUsedError;

  /// Serializes this OptionsInsight to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OptionsInsight
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OptionsInsightCopyWith<OptionsInsight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionsInsightCopyWith<$Res> {
  factory $OptionsInsightCopyWith(
          OptionsInsight value, $Res Function(OptionsInsight) then) =
      _$OptionsInsightCopyWithImpl<$Res, OptionsInsight>;
  @useResult
  $Res call(
      {String title,
      String description,
      InsightType type,
      double confidence,
      DateTime timestamp,
      List<String> evidence});
}

/// @nodoc
class _$OptionsInsightCopyWithImpl<$Res, $Val extends OptionsInsight>
    implements $OptionsInsightCopyWith<$Res> {
  _$OptionsInsightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OptionsInsight
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? confidence = null,
    Object? timestamp = null,
    Object? evidence = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InsightType,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      evidence: null == evidence
          ? _value.evidence
          : evidence // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OptionsInsightImplCopyWith<$Res>
    implements $OptionsInsightCopyWith<$Res> {
  factory _$$OptionsInsightImplCopyWith(_$OptionsInsightImpl value,
          $Res Function(_$OptionsInsightImpl) then) =
      __$$OptionsInsightImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      InsightType type,
      double confidence,
      DateTime timestamp,
      List<String> evidence});
}

/// @nodoc
class __$$OptionsInsightImplCopyWithImpl<$Res>
    extends _$OptionsInsightCopyWithImpl<$Res, _$OptionsInsightImpl>
    implements _$$OptionsInsightImplCopyWith<$Res> {
  __$$OptionsInsightImplCopyWithImpl(
      _$OptionsInsightImpl _value, $Res Function(_$OptionsInsightImpl) _then)
      : super(_value, _then);

  /// Create a copy of OptionsInsight
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? confidence = null,
    Object? timestamp = null,
    Object? evidence = null,
  }) {
    return _then(_$OptionsInsightImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InsightType,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      evidence: null == evidence
          ? _value._evidence
          : evidence // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OptionsInsightImpl implements _OptionsInsight {
  const _$OptionsInsightImpl(
      {required this.title,
      required this.description,
      required this.type,
      required this.confidence,
      required this.timestamp,
      required final List<String> evidence})
      : _evidence = evidence;

  factory _$OptionsInsightImpl.fromJson(Map<String, dynamic> json) =>
      _$$OptionsInsightImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final InsightType type;
  @override
  final double confidence;
  @override
  final DateTime timestamp;
  final List<String> _evidence;
  @override
  List<String> get evidence {
    if (_evidence is EqualUnmodifiableListView) return _evidence;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_evidence);
  }

  @override
  String toString() {
    return 'OptionsInsight(title: $title, description: $description, type: $type, confidence: $confidence, timestamp: $timestamp, evidence: $evidence)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OptionsInsightImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality().equals(other._evidence, _evidence));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, type,
      confidence, timestamp, const DeepCollectionEquality().hash(_evidence));

  /// Create a copy of OptionsInsight
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OptionsInsightImplCopyWith<_$OptionsInsightImpl> get copyWith =>
      __$$OptionsInsightImplCopyWithImpl<_$OptionsInsightImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OptionsInsightImplToJson(
      this,
    );
  }
}

abstract class _OptionsInsight implements OptionsInsight {
  const factory _OptionsInsight(
      {required final String title,
      required final String description,
      required final InsightType type,
      required final double confidence,
      required final DateTime timestamp,
      required final List<String> evidence}) = _$OptionsInsightImpl;

  factory _OptionsInsight.fromJson(Map<String, dynamic> json) =
      _$OptionsInsightImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  InsightType get type;
  @override
  double get confidence;
  @override
  DateTime get timestamp;
  @override
  List<String> get evidence;

  /// Create a copy of OptionsInsight
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OptionsInsightImplCopyWith<_$OptionsInsightImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OptionsRecommendation _$OptionsRecommendationFromJson(
    Map<String, dynamic> json) {
  return _OptionsRecommendation.fromJson(json);
}

/// @nodoc
mixin _$OptionsRecommendation {
  String get action => throw _privateConstructorUsedError;
  String get reasoning => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  List<String> get risks => throw _privateConstructorUsedError;
  List<String> get benefits => throw _privateConstructorUsedError;

  /// Serializes this OptionsRecommendation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OptionsRecommendation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OptionsRecommendationCopyWith<OptionsRecommendation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionsRecommendationCopyWith<$Res> {
  factory $OptionsRecommendationCopyWith(OptionsRecommendation value,
          $Res Function(OptionsRecommendation) then) =
      _$OptionsRecommendationCopyWithImpl<$Res, OptionsRecommendation>;
  @useResult
  $Res call(
      {String action,
      String reasoning,
      double confidence,
      DateTime timestamp,
      List<String> risks,
      List<String> benefits});
}

/// @nodoc
class _$OptionsRecommendationCopyWithImpl<$Res,
        $Val extends OptionsRecommendation>
    implements $OptionsRecommendationCopyWith<$Res> {
  _$OptionsRecommendationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OptionsRecommendation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? reasoning = null,
    Object? confidence = null,
    Object? timestamp = null,
    Object? risks = null,
    Object? benefits = null,
  }) {
    return _then(_value.copyWith(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      reasoning: null == reasoning
          ? _value.reasoning
          : reasoning // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      risks: null == risks
          ? _value.risks
          : risks // ignore: cast_nullable_to_non_nullable
              as List<String>,
      benefits: null == benefits
          ? _value.benefits
          : benefits // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OptionsRecommendationImplCopyWith<$Res>
    implements $OptionsRecommendationCopyWith<$Res> {
  factory _$$OptionsRecommendationImplCopyWith(
          _$OptionsRecommendationImpl value,
          $Res Function(_$OptionsRecommendationImpl) then) =
      __$$OptionsRecommendationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String action,
      String reasoning,
      double confidence,
      DateTime timestamp,
      List<String> risks,
      List<String> benefits});
}

/// @nodoc
class __$$OptionsRecommendationImplCopyWithImpl<$Res>
    extends _$OptionsRecommendationCopyWithImpl<$Res,
        _$OptionsRecommendationImpl>
    implements _$$OptionsRecommendationImplCopyWith<$Res> {
  __$$OptionsRecommendationImplCopyWithImpl(_$OptionsRecommendationImpl _value,
      $Res Function(_$OptionsRecommendationImpl) _then)
      : super(_value, _then);

  /// Create a copy of OptionsRecommendation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? reasoning = null,
    Object? confidence = null,
    Object? timestamp = null,
    Object? risks = null,
    Object? benefits = null,
  }) {
    return _then(_$OptionsRecommendationImpl(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      reasoning: null == reasoning
          ? _value.reasoning
          : reasoning // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      risks: null == risks
          ? _value._risks
          : risks // ignore: cast_nullable_to_non_nullable
              as List<String>,
      benefits: null == benefits
          ? _value._benefits
          : benefits // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OptionsRecommendationImpl implements _OptionsRecommendation {
  const _$OptionsRecommendationImpl(
      {required this.action,
      required this.reasoning,
      required this.confidence,
      required this.timestamp,
      required final List<String> risks,
      required final List<String> benefits})
      : _risks = risks,
        _benefits = benefits;

  factory _$OptionsRecommendationImpl.fromJson(Map<String, dynamic> json) =>
      _$$OptionsRecommendationImplFromJson(json);

  @override
  final String action;
  @override
  final String reasoning;
  @override
  final double confidence;
  @override
  final DateTime timestamp;
  final List<String> _risks;
  @override
  List<String> get risks {
    if (_risks is EqualUnmodifiableListView) return _risks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_risks);
  }

  final List<String> _benefits;
  @override
  List<String> get benefits {
    if (_benefits is EqualUnmodifiableListView) return _benefits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_benefits);
  }

  @override
  String toString() {
    return 'OptionsRecommendation(action: $action, reasoning: $reasoning, confidence: $confidence, timestamp: $timestamp, risks: $risks, benefits: $benefits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OptionsRecommendationImpl &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.reasoning, reasoning) ||
                other.reasoning == reasoning) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality().equals(other._risks, _risks) &&
            const DeepCollectionEquality().equals(other._benefits, _benefits));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      action,
      reasoning,
      confidence,
      timestamp,
      const DeepCollectionEquality().hash(_risks),
      const DeepCollectionEquality().hash(_benefits));

  /// Create a copy of OptionsRecommendation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OptionsRecommendationImplCopyWith<_$OptionsRecommendationImpl>
      get copyWith => __$$OptionsRecommendationImplCopyWithImpl<
          _$OptionsRecommendationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OptionsRecommendationImplToJson(
      this,
    );
  }
}

abstract class _OptionsRecommendation implements OptionsRecommendation {
  const factory _OptionsRecommendation(
      {required final String action,
      required final String reasoning,
      required final double confidence,
      required final DateTime timestamp,
      required final List<String> risks,
      required final List<String> benefits}) = _$OptionsRecommendationImpl;

  factory _OptionsRecommendation.fromJson(Map<String, dynamic> json) =
      _$OptionsRecommendationImpl.fromJson;

  @override
  String get action;
  @override
  String get reasoning;
  @override
  double get confidence;
  @override
  DateTime get timestamp;
  @override
  List<String> get risks;
  @override
  List<String> get benefits;

  /// Create a copy of OptionsRecommendation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OptionsRecommendationImplCopyWith<_$OptionsRecommendationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
