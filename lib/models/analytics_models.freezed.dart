// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analytics_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnalyticsData _$AnalyticsDataFromJson(Map<String, dynamic> json) {
  return _AnalyticsData.fromJson(json);
}

/// @nodoc
mixin _$AnalyticsData {
  String get id => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  AnalyticsType get type => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;
  String? get symbol => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;

  /// Serializes this AnalyticsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnalyticsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnalyticsDataCopyWith<AnalyticsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsDataCopyWith<$Res> {
  factory $AnalyticsDataCopyWith(
          AnalyticsData value, $Res Function(AnalyticsData) then) =
      _$AnalyticsDataCopyWithImpl<$Res, AnalyticsData>;
  @useResult
  $Res call(
      {String id,
      DateTime timestamp,
      AnalyticsType type,
      Map<String, dynamic> data,
      double confidence,
      String? symbol,
      String? source});
}

/// @nodoc
class _$AnalyticsDataCopyWithImpl<$Res, $Val extends AnalyticsData>
    implements $AnalyticsDataCopyWith<$Res> {
  _$AnalyticsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnalyticsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? type = null,
    Object? data = null,
    Object? confidence = null,
    Object? symbol = freezed,
    Object? source = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AnalyticsType,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnalyticsDataImplCopyWith<$Res>
    implements $AnalyticsDataCopyWith<$Res> {
  factory _$$AnalyticsDataImplCopyWith(
          _$AnalyticsDataImpl value, $Res Function(_$AnalyticsDataImpl) then) =
      __$$AnalyticsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime timestamp,
      AnalyticsType type,
      Map<String, dynamic> data,
      double confidence,
      String? symbol,
      String? source});
}

/// @nodoc
class __$$AnalyticsDataImplCopyWithImpl<$Res>
    extends _$AnalyticsDataCopyWithImpl<$Res, _$AnalyticsDataImpl>
    implements _$$AnalyticsDataImplCopyWith<$Res> {
  __$$AnalyticsDataImplCopyWithImpl(
      _$AnalyticsDataImpl _value, $Res Function(_$AnalyticsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnalyticsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? type = null,
    Object? data = null,
    Object? confidence = null,
    Object? symbol = freezed,
    Object? source = freezed,
  }) {
    return _then(_$AnalyticsDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AnalyticsType,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnalyticsDataImpl implements _AnalyticsData {
  const _$AnalyticsDataImpl(
      {required this.id,
      required this.timestamp,
      required this.type,
      required final Map<String, dynamic> data,
      required this.confidence,
      this.symbol,
      this.source})
      : _data = data;

  factory _$AnalyticsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnalyticsDataImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime timestamp;
  @override
  final AnalyticsType type;
  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  final double confidence;
  @override
  final String? symbol;
  @override
  final String? source;

  @override
  String toString() {
    return 'AnalyticsData(id: $id, timestamp: $timestamp, type: $type, data: $data, confidence: $confidence, symbol: $symbol, source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalyticsDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.source, source) || other.source == source));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, timestamp, type,
      const DeepCollectionEquality().hash(_data), confidence, symbol, source);

  /// Create a copy of AnalyticsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalyticsDataImplCopyWith<_$AnalyticsDataImpl> get copyWith =>
      __$$AnalyticsDataImplCopyWithImpl<_$AnalyticsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnalyticsDataImplToJson(
      this,
    );
  }
}

abstract class _AnalyticsData implements AnalyticsData {
  const factory _AnalyticsData(
      {required final String id,
      required final DateTime timestamp,
      required final AnalyticsType type,
      required final Map<String, dynamic> data,
      required final double confidence,
      final String? symbol,
      final String? source}) = _$AnalyticsDataImpl;

  factory _AnalyticsData.fromJson(Map<String, dynamic> json) =
      _$AnalyticsDataImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get timestamp;
  @override
  AnalyticsType get type;
  @override
  Map<String, dynamic> get data;
  @override
  double get confidence;
  @override
  String? get symbol;
  @override
  String? get source;

  /// Create a copy of AnalyticsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnalyticsDataImplCopyWith<_$AnalyticsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EnhancedSentiment _$EnhancedSentimentFromJson(Map<String, dynamic> json) {
  return _EnhancedSentiment.fromJson(json);
}

/// @nodoc
mixin _$EnhancedSentiment {
  double get basicSentiment => throw _privateConstructorUsedError;
  Map<String, double> get entitySentiment => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;
  double get reliability => throw _privateConstructorUsedError;
  String? get dominantEntity => throw _privateConstructorUsedError;
  Map<String, double>? get contextualSentiment =>
      throw _privateConstructorUsedError;
  Map<String, double>? get temporalSentiment =>
      throw _privateConstructorUsedError;

  /// Serializes this EnhancedSentiment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EnhancedSentiment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EnhancedSentimentCopyWith<EnhancedSentiment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnhancedSentimentCopyWith<$Res> {
  factory $EnhancedSentimentCopyWith(
          EnhancedSentiment value, $Res Function(EnhancedSentiment) then) =
      _$EnhancedSentimentCopyWithImpl<$Res, EnhancedSentiment>;
  @useResult
  $Res call(
      {double basicSentiment,
      Map<String, double> entitySentiment,
      double confidence,
      double reliability,
      String? dominantEntity,
      Map<String, double>? contextualSentiment,
      Map<String, double>? temporalSentiment});
}

/// @nodoc
class _$EnhancedSentimentCopyWithImpl<$Res, $Val extends EnhancedSentiment>
    implements $EnhancedSentimentCopyWith<$Res> {
  _$EnhancedSentimentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EnhancedSentiment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basicSentiment = null,
    Object? entitySentiment = null,
    Object? confidence = null,
    Object? reliability = null,
    Object? dominantEntity = freezed,
    Object? contextualSentiment = freezed,
    Object? temporalSentiment = freezed,
  }) {
    return _then(_value.copyWith(
      basicSentiment: null == basicSentiment
          ? _value.basicSentiment
          : basicSentiment // ignore: cast_nullable_to_non_nullable
              as double,
      entitySentiment: null == entitySentiment
          ? _value.entitySentiment
          : entitySentiment // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      reliability: null == reliability
          ? _value.reliability
          : reliability // ignore: cast_nullable_to_non_nullable
              as double,
      dominantEntity: freezed == dominantEntity
          ? _value.dominantEntity
          : dominantEntity // ignore: cast_nullable_to_non_nullable
              as String?,
      contextualSentiment: freezed == contextualSentiment
          ? _value.contextualSentiment
          : contextualSentiment // ignore: cast_nullable_to_non_nullable
              as Map<String, double>?,
      temporalSentiment: freezed == temporalSentiment
          ? _value.temporalSentiment
          : temporalSentiment // ignore: cast_nullable_to_non_nullable
              as Map<String, double>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EnhancedSentimentImplCopyWith<$Res>
    implements $EnhancedSentimentCopyWith<$Res> {
  factory _$$EnhancedSentimentImplCopyWith(_$EnhancedSentimentImpl value,
          $Res Function(_$EnhancedSentimentImpl) then) =
      __$$EnhancedSentimentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double basicSentiment,
      Map<String, double> entitySentiment,
      double confidence,
      double reliability,
      String? dominantEntity,
      Map<String, double>? contextualSentiment,
      Map<String, double>? temporalSentiment});
}

/// @nodoc
class __$$EnhancedSentimentImplCopyWithImpl<$Res>
    extends _$EnhancedSentimentCopyWithImpl<$Res, _$EnhancedSentimentImpl>
    implements _$$EnhancedSentimentImplCopyWith<$Res> {
  __$$EnhancedSentimentImplCopyWithImpl(_$EnhancedSentimentImpl _value,
      $Res Function(_$EnhancedSentimentImpl) _then)
      : super(_value, _then);

  /// Create a copy of EnhancedSentiment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basicSentiment = null,
    Object? entitySentiment = null,
    Object? confidence = null,
    Object? reliability = null,
    Object? dominantEntity = freezed,
    Object? contextualSentiment = freezed,
    Object? temporalSentiment = freezed,
  }) {
    return _then(_$EnhancedSentimentImpl(
      basicSentiment: null == basicSentiment
          ? _value.basicSentiment
          : basicSentiment // ignore: cast_nullable_to_non_nullable
              as double,
      entitySentiment: null == entitySentiment
          ? _value._entitySentiment
          : entitySentiment // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      reliability: null == reliability
          ? _value.reliability
          : reliability // ignore: cast_nullable_to_non_nullable
              as double,
      dominantEntity: freezed == dominantEntity
          ? _value.dominantEntity
          : dominantEntity // ignore: cast_nullable_to_non_nullable
              as String?,
      contextualSentiment: freezed == contextualSentiment
          ? _value._contextualSentiment
          : contextualSentiment // ignore: cast_nullable_to_non_nullable
              as Map<String, double>?,
      temporalSentiment: freezed == temporalSentiment
          ? _value._temporalSentiment
          : temporalSentiment // ignore: cast_nullable_to_non_nullable
              as Map<String, double>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EnhancedSentimentImpl implements _EnhancedSentiment {
  const _$EnhancedSentimentImpl(
      {required this.basicSentiment,
      required final Map<String, double> entitySentiment,
      required this.confidence,
      required this.reliability,
      this.dominantEntity,
      final Map<String, double>? contextualSentiment,
      final Map<String, double>? temporalSentiment})
      : _entitySentiment = entitySentiment,
        _contextualSentiment = contextualSentiment,
        _temporalSentiment = temporalSentiment;

  factory _$EnhancedSentimentImpl.fromJson(Map<String, dynamic> json) =>
      _$$EnhancedSentimentImplFromJson(json);

  @override
  final double basicSentiment;
  final Map<String, double> _entitySentiment;
  @override
  Map<String, double> get entitySentiment {
    if (_entitySentiment is EqualUnmodifiableMapView) return _entitySentiment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_entitySentiment);
  }

  @override
  final double confidence;
  @override
  final double reliability;
  @override
  final String? dominantEntity;
  final Map<String, double>? _contextualSentiment;
  @override
  Map<String, double>? get contextualSentiment {
    final value = _contextualSentiment;
    if (value == null) return null;
    if (_contextualSentiment is EqualUnmodifiableMapView)
      return _contextualSentiment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, double>? _temporalSentiment;
  @override
  Map<String, double>? get temporalSentiment {
    final value = _temporalSentiment;
    if (value == null) return null;
    if (_temporalSentiment is EqualUnmodifiableMapView)
      return _temporalSentiment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'EnhancedSentiment(basicSentiment: $basicSentiment, entitySentiment: $entitySentiment, confidence: $confidence, reliability: $reliability, dominantEntity: $dominantEntity, contextualSentiment: $contextualSentiment, temporalSentiment: $temporalSentiment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnhancedSentimentImpl &&
            (identical(other.basicSentiment, basicSentiment) ||
                other.basicSentiment == basicSentiment) &&
            const DeepCollectionEquality()
                .equals(other._entitySentiment, _entitySentiment) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            (identical(other.reliability, reliability) ||
                other.reliability == reliability) &&
            (identical(other.dominantEntity, dominantEntity) ||
                other.dominantEntity == dominantEntity) &&
            const DeepCollectionEquality()
                .equals(other._contextualSentiment, _contextualSentiment) &&
            const DeepCollectionEquality()
                .equals(other._temporalSentiment, _temporalSentiment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      basicSentiment,
      const DeepCollectionEquality().hash(_entitySentiment),
      confidence,
      reliability,
      dominantEntity,
      const DeepCollectionEquality().hash(_contextualSentiment),
      const DeepCollectionEquality().hash(_temporalSentiment));

  /// Create a copy of EnhancedSentiment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EnhancedSentimentImplCopyWith<_$EnhancedSentimentImpl> get copyWith =>
      __$$EnhancedSentimentImplCopyWithImpl<_$EnhancedSentimentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EnhancedSentimentImplToJson(
      this,
    );
  }
}

abstract class _EnhancedSentiment implements EnhancedSentiment {
  const factory _EnhancedSentiment(
      {required final double basicSentiment,
      required final Map<String, double> entitySentiment,
      required final double confidence,
      required final double reliability,
      final String? dominantEntity,
      final Map<String, double>? contextualSentiment,
      final Map<String, double>? temporalSentiment}) = _$EnhancedSentimentImpl;

  factory _EnhancedSentiment.fromJson(Map<String, dynamic> json) =
      _$EnhancedSentimentImpl.fromJson;

  @override
  double get basicSentiment;
  @override
  Map<String, double> get entitySentiment;
  @override
  double get confidence;
  @override
  double get reliability;
  @override
  String? get dominantEntity;
  @override
  Map<String, double>? get contextualSentiment;
  @override
  Map<String, double>? get temporalSentiment;

  /// Create a copy of EnhancedSentiment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EnhancedSentimentImplCopyWith<_$EnhancedSentimentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VolumeAnalysis _$VolumeAnalysisFromJson(Map<String, dynamic> json) {
  return _VolumeAnalysis.fromJson(json);
}

/// @nodoc
mixin _$VolumeAnalysis {
  String get symbol => throw _privateConstructorUsedError;
  double get currentVolume => throw _privateConstructorUsedError;
  double get averageVolume => throw _privateConstructorUsedError;
  double get volumeRatio => throw _privateConstructorUsedError;
  bool get unusualVolume => throw _privateConstructorUsedError;
  List<VolumePattern>? get patterns => throw _privateConstructorUsedError;
  Map<String, double>? get institutionalActivity =>
      throw _privateConstructorUsedError;
  Map<String, double>? get retailActivity => throw _privateConstructorUsedError;
  double? get newsCorrelation => throw _privateConstructorUsedError;

  /// Serializes this VolumeAnalysis to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VolumeAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VolumeAnalysisCopyWith<VolumeAnalysis> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VolumeAnalysisCopyWith<$Res> {
  factory $VolumeAnalysisCopyWith(
          VolumeAnalysis value, $Res Function(VolumeAnalysis) then) =
      _$VolumeAnalysisCopyWithImpl<$Res, VolumeAnalysis>;
  @useResult
  $Res call(
      {String symbol,
      double currentVolume,
      double averageVolume,
      double volumeRatio,
      bool unusualVolume,
      List<VolumePattern>? patterns,
      Map<String, double>? institutionalActivity,
      Map<String, double>? retailActivity,
      double? newsCorrelation});
}

/// @nodoc
class _$VolumeAnalysisCopyWithImpl<$Res, $Val extends VolumeAnalysis>
    implements $VolumeAnalysisCopyWith<$Res> {
  _$VolumeAnalysisCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VolumeAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? currentVolume = null,
    Object? averageVolume = null,
    Object? volumeRatio = null,
    Object? unusualVolume = null,
    Object? patterns = freezed,
    Object? institutionalActivity = freezed,
    Object? retailActivity = freezed,
    Object? newsCorrelation = freezed,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      currentVolume: null == currentVolume
          ? _value.currentVolume
          : currentVolume // ignore: cast_nullable_to_non_nullable
              as double,
      averageVolume: null == averageVolume
          ? _value.averageVolume
          : averageVolume // ignore: cast_nullable_to_non_nullable
              as double,
      volumeRatio: null == volumeRatio
          ? _value.volumeRatio
          : volumeRatio // ignore: cast_nullable_to_non_nullable
              as double,
      unusualVolume: null == unusualVolume
          ? _value.unusualVolume
          : unusualVolume // ignore: cast_nullable_to_non_nullable
              as bool,
      patterns: freezed == patterns
          ? _value.patterns
          : patterns // ignore: cast_nullable_to_non_nullable
              as List<VolumePattern>?,
      institutionalActivity: freezed == institutionalActivity
          ? _value.institutionalActivity
          : institutionalActivity // ignore: cast_nullable_to_non_nullable
              as Map<String, double>?,
      retailActivity: freezed == retailActivity
          ? _value.retailActivity
          : retailActivity // ignore: cast_nullable_to_non_nullable
              as Map<String, double>?,
      newsCorrelation: freezed == newsCorrelation
          ? _value.newsCorrelation
          : newsCorrelation // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VolumeAnalysisImplCopyWith<$Res>
    implements $VolumeAnalysisCopyWith<$Res> {
  factory _$$VolumeAnalysisImplCopyWith(_$VolumeAnalysisImpl value,
          $Res Function(_$VolumeAnalysisImpl) then) =
      __$$VolumeAnalysisImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      double currentVolume,
      double averageVolume,
      double volumeRatio,
      bool unusualVolume,
      List<VolumePattern>? patterns,
      Map<String, double>? institutionalActivity,
      Map<String, double>? retailActivity,
      double? newsCorrelation});
}

/// @nodoc
class __$$VolumeAnalysisImplCopyWithImpl<$Res>
    extends _$VolumeAnalysisCopyWithImpl<$Res, _$VolumeAnalysisImpl>
    implements _$$VolumeAnalysisImplCopyWith<$Res> {
  __$$VolumeAnalysisImplCopyWithImpl(
      _$VolumeAnalysisImpl _value, $Res Function(_$VolumeAnalysisImpl) _then)
      : super(_value, _then);

  /// Create a copy of VolumeAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? currentVolume = null,
    Object? averageVolume = null,
    Object? volumeRatio = null,
    Object? unusualVolume = null,
    Object? patterns = freezed,
    Object? institutionalActivity = freezed,
    Object? retailActivity = freezed,
    Object? newsCorrelation = freezed,
  }) {
    return _then(_$VolumeAnalysisImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      currentVolume: null == currentVolume
          ? _value.currentVolume
          : currentVolume // ignore: cast_nullable_to_non_nullable
              as double,
      averageVolume: null == averageVolume
          ? _value.averageVolume
          : averageVolume // ignore: cast_nullable_to_non_nullable
              as double,
      volumeRatio: null == volumeRatio
          ? _value.volumeRatio
          : volumeRatio // ignore: cast_nullable_to_non_nullable
              as double,
      unusualVolume: null == unusualVolume
          ? _value.unusualVolume
          : unusualVolume // ignore: cast_nullable_to_non_nullable
              as bool,
      patterns: freezed == patterns
          ? _value._patterns
          : patterns // ignore: cast_nullable_to_non_nullable
              as List<VolumePattern>?,
      institutionalActivity: freezed == institutionalActivity
          ? _value._institutionalActivity
          : institutionalActivity // ignore: cast_nullable_to_non_nullable
              as Map<String, double>?,
      retailActivity: freezed == retailActivity
          ? _value._retailActivity
          : retailActivity // ignore: cast_nullable_to_non_nullable
              as Map<String, double>?,
      newsCorrelation: freezed == newsCorrelation
          ? _value.newsCorrelation
          : newsCorrelation // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VolumeAnalysisImpl implements _VolumeAnalysis {
  const _$VolumeAnalysisImpl(
      {required this.symbol,
      required this.currentVolume,
      required this.averageVolume,
      required this.volumeRatio,
      required this.unusualVolume,
      final List<VolumePattern>? patterns,
      final Map<String, double>? institutionalActivity,
      final Map<String, double>? retailActivity,
      this.newsCorrelation})
      : _patterns = patterns,
        _institutionalActivity = institutionalActivity,
        _retailActivity = retailActivity;

  factory _$VolumeAnalysisImpl.fromJson(Map<String, dynamic> json) =>
      _$$VolumeAnalysisImplFromJson(json);

  @override
  final String symbol;
  @override
  final double currentVolume;
  @override
  final double averageVolume;
  @override
  final double volumeRatio;
  @override
  final bool unusualVolume;
  final List<VolumePattern>? _patterns;
  @override
  List<VolumePattern>? get patterns {
    final value = _patterns;
    if (value == null) return null;
    if (_patterns is EqualUnmodifiableListView) return _patterns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, double>? _institutionalActivity;
  @override
  Map<String, double>? get institutionalActivity {
    final value = _institutionalActivity;
    if (value == null) return null;
    if (_institutionalActivity is EqualUnmodifiableMapView)
      return _institutionalActivity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, double>? _retailActivity;
  @override
  Map<String, double>? get retailActivity {
    final value = _retailActivity;
    if (value == null) return null;
    if (_retailActivity is EqualUnmodifiableMapView) return _retailActivity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final double? newsCorrelation;

  @override
  String toString() {
    return 'VolumeAnalysis(symbol: $symbol, currentVolume: $currentVolume, averageVolume: $averageVolume, volumeRatio: $volumeRatio, unusualVolume: $unusualVolume, patterns: $patterns, institutionalActivity: $institutionalActivity, retailActivity: $retailActivity, newsCorrelation: $newsCorrelation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VolumeAnalysisImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.currentVolume, currentVolume) ||
                other.currentVolume == currentVolume) &&
            (identical(other.averageVolume, averageVolume) ||
                other.averageVolume == averageVolume) &&
            (identical(other.volumeRatio, volumeRatio) ||
                other.volumeRatio == volumeRatio) &&
            (identical(other.unusualVolume, unusualVolume) ||
                other.unusualVolume == unusualVolume) &&
            const DeepCollectionEquality().equals(other._patterns, _patterns) &&
            const DeepCollectionEquality()
                .equals(other._institutionalActivity, _institutionalActivity) &&
            const DeepCollectionEquality()
                .equals(other._retailActivity, _retailActivity) &&
            (identical(other.newsCorrelation, newsCorrelation) ||
                other.newsCorrelation == newsCorrelation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      symbol,
      currentVolume,
      averageVolume,
      volumeRatio,
      unusualVolume,
      const DeepCollectionEquality().hash(_patterns),
      const DeepCollectionEquality().hash(_institutionalActivity),
      const DeepCollectionEquality().hash(_retailActivity),
      newsCorrelation);

  /// Create a copy of VolumeAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VolumeAnalysisImplCopyWith<_$VolumeAnalysisImpl> get copyWith =>
      __$$VolumeAnalysisImplCopyWithImpl<_$VolumeAnalysisImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VolumeAnalysisImplToJson(
      this,
    );
  }
}

abstract class _VolumeAnalysis implements VolumeAnalysis {
  const factory _VolumeAnalysis(
      {required final String symbol,
      required final double currentVolume,
      required final double averageVolume,
      required final double volumeRatio,
      required final bool unusualVolume,
      final List<VolumePattern>? patterns,
      final Map<String, double>? institutionalActivity,
      final Map<String, double>? retailActivity,
      final double? newsCorrelation}) = _$VolumeAnalysisImpl;

  factory _VolumeAnalysis.fromJson(Map<String, dynamic> json) =
      _$VolumeAnalysisImpl.fromJson;

  @override
  String get symbol;
  @override
  double get currentVolume;
  @override
  double get averageVolume;
  @override
  double get volumeRatio;
  @override
  bool get unusualVolume;
  @override
  List<VolumePattern>? get patterns;
  @override
  Map<String, double>? get institutionalActivity;
  @override
  Map<String, double>? get retailActivity;
  @override
  double? get newsCorrelation;

  /// Create a copy of VolumeAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VolumeAnalysisImplCopyWith<_$VolumeAnalysisImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VolumePattern _$VolumePatternFromJson(Map<String, dynamic> json) {
  return _VolumePattern.fromJson(json);
}

/// @nodoc
mixin _$VolumePattern {
  String get type => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  /// Serializes this VolumePattern to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VolumePattern
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VolumePatternCopyWith<VolumePattern> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VolumePatternCopyWith<$Res> {
  factory $VolumePatternCopyWith(
          VolumePattern value, $Res Function(VolumePattern) then) =
      _$VolumePatternCopyWithImpl<$Res, VolumePattern>;
  @useResult
  $Res call(
      {String type,
      double confidence,
      DateTime startTime,
      DateTime endTime,
      String description,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$VolumePatternCopyWithImpl<$Res, $Val extends VolumePattern>
    implements $VolumePatternCopyWith<$Res> {
  _$VolumePatternCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VolumePattern
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? confidence = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? description = null,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VolumePatternImplCopyWith<$Res>
    implements $VolumePatternCopyWith<$Res> {
  factory _$$VolumePatternImplCopyWith(
          _$VolumePatternImpl value, $Res Function(_$VolumePatternImpl) then) =
      __$$VolumePatternImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      double confidence,
      DateTime startTime,
      DateTime endTime,
      String description,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$VolumePatternImplCopyWithImpl<$Res>
    extends _$VolumePatternCopyWithImpl<$Res, _$VolumePatternImpl>
    implements _$$VolumePatternImplCopyWith<$Res> {
  __$$VolumePatternImplCopyWithImpl(
      _$VolumePatternImpl _value, $Res Function(_$VolumePatternImpl) _then)
      : super(_value, _then);

  /// Create a copy of VolumePattern
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? confidence = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? description = null,
    Object? metadata = freezed,
  }) {
    return _then(_$VolumePatternImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VolumePatternImpl implements _VolumePattern {
  const _$VolumePatternImpl(
      {required this.type,
      required this.confidence,
      required this.startTime,
      required this.endTime,
      required this.description,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$VolumePatternImpl.fromJson(Map<String, dynamic> json) =>
      _$$VolumePatternImplFromJson(json);

  @override
  final String type;
  @override
  final double confidence;
  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  final String description;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'VolumePattern(type: $type, confidence: $confidence, startTime: $startTime, endTime: $endTime, description: $description, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VolumePatternImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, confidence, startTime,
      endTime, description, const DeepCollectionEquality().hash(_metadata));

  /// Create a copy of VolumePattern
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VolumePatternImplCopyWith<_$VolumePatternImpl> get copyWith =>
      __$$VolumePatternImplCopyWithImpl<_$VolumePatternImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VolumePatternImplToJson(
      this,
    );
  }
}

abstract class _VolumePattern implements VolumePattern {
  const factory _VolumePattern(
      {required final String type,
      required final double confidence,
      required final DateTime startTime,
      required final DateTime endTime,
      required final String description,
      final Map<String, dynamic>? metadata}) = _$VolumePatternImpl;

  factory _VolumePattern.fromJson(Map<String, dynamic> json) =
      _$VolumePatternImpl.fromJson;

  @override
  String get type;
  @override
  double get confidence;
  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  String get description;
  @override
  Map<String, dynamic>? get metadata;

  /// Create a copy of VolumePattern
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VolumePatternImplCopyWith<_$VolumePatternImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CorrelationAnalysis _$CorrelationAnalysisFromJson(Map<String, dynamic> json) {
  return _CorrelationAnalysis.fromJson(json);
}

/// @nodoc
mixin _$CorrelationAnalysis {
  String get symbol1 => throw _privateConstructorUsedError;
  String get symbol2 => throw _privateConstructorUsedError;
  double get correlation => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;
  Map<String, double>? get crossAssetCorrelations =>
      throw _privateConstructorUsedError;
  List<String>? get temporalCorrelations => throw _privateConstructorUsedError;
  Map<String, double>? get sectorCorrelations =>
      throw _privateConstructorUsedError;

  /// Serializes this CorrelationAnalysis to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CorrelationAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CorrelationAnalysisCopyWith<CorrelationAnalysis> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CorrelationAnalysisCopyWith<$Res> {
  factory $CorrelationAnalysisCopyWith(
          CorrelationAnalysis value, $Res Function(CorrelationAnalysis) then) =
      _$CorrelationAnalysisCopyWithImpl<$Res, CorrelationAnalysis>;
  @useResult
  $Res call(
      {String symbol1,
      String symbol2,
      double correlation,
      double confidence,
      Map<String, double>? crossAssetCorrelations,
      List<String>? temporalCorrelations,
      Map<String, double>? sectorCorrelations});
}

/// @nodoc
class _$CorrelationAnalysisCopyWithImpl<$Res, $Val extends CorrelationAnalysis>
    implements $CorrelationAnalysisCopyWith<$Res> {
  _$CorrelationAnalysisCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CorrelationAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol1 = null,
    Object? symbol2 = null,
    Object? correlation = null,
    Object? confidence = null,
    Object? crossAssetCorrelations = freezed,
    Object? temporalCorrelations = freezed,
    Object? sectorCorrelations = freezed,
  }) {
    return _then(_value.copyWith(
      symbol1: null == symbol1
          ? _value.symbol1
          : symbol1 // ignore: cast_nullable_to_non_nullable
              as String,
      symbol2: null == symbol2
          ? _value.symbol2
          : symbol2 // ignore: cast_nullable_to_non_nullable
              as String,
      correlation: null == correlation
          ? _value.correlation
          : correlation // ignore: cast_nullable_to_non_nullable
              as double,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      crossAssetCorrelations: freezed == crossAssetCorrelations
          ? _value.crossAssetCorrelations
          : crossAssetCorrelations // ignore: cast_nullable_to_non_nullable
              as Map<String, double>?,
      temporalCorrelations: freezed == temporalCorrelations
          ? _value.temporalCorrelations
          : temporalCorrelations // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      sectorCorrelations: freezed == sectorCorrelations
          ? _value.sectorCorrelations
          : sectorCorrelations // ignore: cast_nullable_to_non_nullable
              as Map<String, double>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CorrelationAnalysisImplCopyWith<$Res>
    implements $CorrelationAnalysisCopyWith<$Res> {
  factory _$$CorrelationAnalysisImplCopyWith(_$CorrelationAnalysisImpl value,
          $Res Function(_$CorrelationAnalysisImpl) then) =
      __$$CorrelationAnalysisImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol1,
      String symbol2,
      double correlation,
      double confidence,
      Map<String, double>? crossAssetCorrelations,
      List<String>? temporalCorrelations,
      Map<String, double>? sectorCorrelations});
}

/// @nodoc
class __$$CorrelationAnalysisImplCopyWithImpl<$Res>
    extends _$CorrelationAnalysisCopyWithImpl<$Res, _$CorrelationAnalysisImpl>
    implements _$$CorrelationAnalysisImplCopyWith<$Res> {
  __$$CorrelationAnalysisImplCopyWithImpl(_$CorrelationAnalysisImpl _value,
      $Res Function(_$CorrelationAnalysisImpl) _then)
      : super(_value, _then);

  /// Create a copy of CorrelationAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol1 = null,
    Object? symbol2 = null,
    Object? correlation = null,
    Object? confidence = null,
    Object? crossAssetCorrelations = freezed,
    Object? temporalCorrelations = freezed,
    Object? sectorCorrelations = freezed,
  }) {
    return _then(_$CorrelationAnalysisImpl(
      symbol1: null == symbol1
          ? _value.symbol1
          : symbol1 // ignore: cast_nullable_to_non_nullable
              as String,
      symbol2: null == symbol2
          ? _value.symbol2
          : symbol2 // ignore: cast_nullable_to_non_nullable
              as String,
      correlation: null == correlation
          ? _value.correlation
          : correlation // ignore: cast_nullable_to_non_nullable
              as double,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      crossAssetCorrelations: freezed == crossAssetCorrelations
          ? _value._crossAssetCorrelations
          : crossAssetCorrelations // ignore: cast_nullable_to_non_nullable
              as Map<String, double>?,
      temporalCorrelations: freezed == temporalCorrelations
          ? _value._temporalCorrelations
          : temporalCorrelations // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      sectorCorrelations: freezed == sectorCorrelations
          ? _value._sectorCorrelations
          : sectorCorrelations // ignore: cast_nullable_to_non_nullable
              as Map<String, double>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CorrelationAnalysisImpl implements _CorrelationAnalysis {
  const _$CorrelationAnalysisImpl(
      {required this.symbol1,
      required this.symbol2,
      required this.correlation,
      required this.confidence,
      final Map<String, double>? crossAssetCorrelations,
      final List<String>? temporalCorrelations,
      final Map<String, double>? sectorCorrelations})
      : _crossAssetCorrelations = crossAssetCorrelations,
        _temporalCorrelations = temporalCorrelations,
        _sectorCorrelations = sectorCorrelations;

  factory _$CorrelationAnalysisImpl.fromJson(Map<String, dynamic> json) =>
      _$$CorrelationAnalysisImplFromJson(json);

  @override
  final String symbol1;
  @override
  final String symbol2;
  @override
  final double correlation;
  @override
  final double confidence;
  final Map<String, double>? _crossAssetCorrelations;
  @override
  Map<String, double>? get crossAssetCorrelations {
    final value = _crossAssetCorrelations;
    if (value == null) return null;
    if (_crossAssetCorrelations is EqualUnmodifiableMapView)
      return _crossAssetCorrelations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<String>? _temporalCorrelations;
  @override
  List<String>? get temporalCorrelations {
    final value = _temporalCorrelations;
    if (value == null) return null;
    if (_temporalCorrelations is EqualUnmodifiableListView)
      return _temporalCorrelations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, double>? _sectorCorrelations;
  @override
  Map<String, double>? get sectorCorrelations {
    final value = _sectorCorrelations;
    if (value == null) return null;
    if (_sectorCorrelations is EqualUnmodifiableMapView)
      return _sectorCorrelations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'CorrelationAnalysis(symbol1: $symbol1, symbol2: $symbol2, correlation: $correlation, confidence: $confidence, crossAssetCorrelations: $crossAssetCorrelations, temporalCorrelations: $temporalCorrelations, sectorCorrelations: $sectorCorrelations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CorrelationAnalysisImpl &&
            (identical(other.symbol1, symbol1) || other.symbol1 == symbol1) &&
            (identical(other.symbol2, symbol2) || other.symbol2 == symbol2) &&
            (identical(other.correlation, correlation) ||
                other.correlation == correlation) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            const DeepCollectionEquality().equals(
                other._crossAssetCorrelations, _crossAssetCorrelations) &&
            const DeepCollectionEquality()
                .equals(other._temporalCorrelations, _temporalCorrelations) &&
            const DeepCollectionEquality()
                .equals(other._sectorCorrelations, _sectorCorrelations));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      symbol1,
      symbol2,
      correlation,
      confidence,
      const DeepCollectionEquality().hash(_crossAssetCorrelations),
      const DeepCollectionEquality().hash(_temporalCorrelations),
      const DeepCollectionEquality().hash(_sectorCorrelations));

  /// Create a copy of CorrelationAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CorrelationAnalysisImplCopyWith<_$CorrelationAnalysisImpl> get copyWith =>
      __$$CorrelationAnalysisImplCopyWithImpl<_$CorrelationAnalysisImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CorrelationAnalysisImplToJson(
      this,
    );
  }
}

abstract class _CorrelationAnalysis implements CorrelationAnalysis {
  const factory _CorrelationAnalysis(
          {required final String symbol1,
          required final String symbol2,
          required final double correlation,
          required final double confidence,
          final Map<String, double>? crossAssetCorrelations,
          final List<String>? temporalCorrelations,
          final Map<String, double>? sectorCorrelations}) =
      _$CorrelationAnalysisImpl;

  factory _CorrelationAnalysis.fromJson(Map<String, dynamic> json) =
      _$CorrelationAnalysisImpl.fromJson;

  @override
  String get symbol1;
  @override
  String get symbol2;
  @override
  double get correlation;
  @override
  double get confidence;
  @override
  Map<String, double>? get crossAssetCorrelations;
  @override
  List<String>? get temporalCorrelations;
  @override
  Map<String, double>? get sectorCorrelations;

  /// Create a copy of CorrelationAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CorrelationAnalysisImplCopyWith<_$CorrelationAnalysisImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EarningsAnalysis _$EarningsAnalysisFromJson(Map<String, dynamic> json) {
  return _EarningsAnalysis.fromJson(json);
}

/// @nodoc
mixin _$EarningsAnalysis {
  String get symbol => throw _privateConstructorUsedError;
  List<EarningsCall> get upcomingCalls => throw _privateConstructorUsedError;
  List<EarningsCall> get recentCalls => throw _privateConstructorUsedError;
  Map<String, dynamic>? get historicalAnalysis =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get analystEstimates =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get surpriseAnalysis =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get guidanceAnalysis =>
      throw _privateConstructorUsedError;

  /// Serializes this EarningsAnalysis to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EarningsAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EarningsAnalysisCopyWith<EarningsAnalysis> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarningsAnalysisCopyWith<$Res> {
  factory $EarningsAnalysisCopyWith(
          EarningsAnalysis value, $Res Function(EarningsAnalysis) then) =
      _$EarningsAnalysisCopyWithImpl<$Res, EarningsAnalysis>;
  @useResult
  $Res call(
      {String symbol,
      List<EarningsCall> upcomingCalls,
      List<EarningsCall> recentCalls,
      Map<String, dynamic>? historicalAnalysis,
      Map<String, dynamic>? analystEstimates,
      Map<String, dynamic>? surpriseAnalysis,
      Map<String, dynamic>? guidanceAnalysis});
}

/// @nodoc
class _$EarningsAnalysisCopyWithImpl<$Res, $Val extends EarningsAnalysis>
    implements $EarningsAnalysisCopyWith<$Res> {
  _$EarningsAnalysisCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EarningsAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? upcomingCalls = null,
    Object? recentCalls = null,
    Object? historicalAnalysis = freezed,
    Object? analystEstimates = freezed,
    Object? surpriseAnalysis = freezed,
    Object? guidanceAnalysis = freezed,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      upcomingCalls: null == upcomingCalls
          ? _value.upcomingCalls
          : upcomingCalls // ignore: cast_nullable_to_non_nullable
              as List<EarningsCall>,
      recentCalls: null == recentCalls
          ? _value.recentCalls
          : recentCalls // ignore: cast_nullable_to_non_nullable
              as List<EarningsCall>,
      historicalAnalysis: freezed == historicalAnalysis
          ? _value.historicalAnalysis
          : historicalAnalysis // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      analystEstimates: freezed == analystEstimates
          ? _value.analystEstimates
          : analystEstimates // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      surpriseAnalysis: freezed == surpriseAnalysis
          ? _value.surpriseAnalysis
          : surpriseAnalysis // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      guidanceAnalysis: freezed == guidanceAnalysis
          ? _value.guidanceAnalysis
          : guidanceAnalysis // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EarningsAnalysisImplCopyWith<$Res>
    implements $EarningsAnalysisCopyWith<$Res> {
  factory _$$EarningsAnalysisImplCopyWith(_$EarningsAnalysisImpl value,
          $Res Function(_$EarningsAnalysisImpl) then) =
      __$$EarningsAnalysisImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      List<EarningsCall> upcomingCalls,
      List<EarningsCall> recentCalls,
      Map<String, dynamic>? historicalAnalysis,
      Map<String, dynamic>? analystEstimates,
      Map<String, dynamic>? surpriseAnalysis,
      Map<String, dynamic>? guidanceAnalysis});
}

/// @nodoc
class __$$EarningsAnalysisImplCopyWithImpl<$Res>
    extends _$EarningsAnalysisCopyWithImpl<$Res, _$EarningsAnalysisImpl>
    implements _$$EarningsAnalysisImplCopyWith<$Res> {
  __$$EarningsAnalysisImplCopyWithImpl(_$EarningsAnalysisImpl _value,
      $Res Function(_$EarningsAnalysisImpl) _then)
      : super(_value, _then);

  /// Create a copy of EarningsAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? upcomingCalls = null,
    Object? recentCalls = null,
    Object? historicalAnalysis = freezed,
    Object? analystEstimates = freezed,
    Object? surpriseAnalysis = freezed,
    Object? guidanceAnalysis = freezed,
  }) {
    return _then(_$EarningsAnalysisImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      upcomingCalls: null == upcomingCalls
          ? _value._upcomingCalls
          : upcomingCalls // ignore: cast_nullable_to_non_nullable
              as List<EarningsCall>,
      recentCalls: null == recentCalls
          ? _value._recentCalls
          : recentCalls // ignore: cast_nullable_to_non_nullable
              as List<EarningsCall>,
      historicalAnalysis: freezed == historicalAnalysis
          ? _value._historicalAnalysis
          : historicalAnalysis // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      analystEstimates: freezed == analystEstimates
          ? _value._analystEstimates
          : analystEstimates // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      surpriseAnalysis: freezed == surpriseAnalysis
          ? _value._surpriseAnalysis
          : surpriseAnalysis // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      guidanceAnalysis: freezed == guidanceAnalysis
          ? _value._guidanceAnalysis
          : guidanceAnalysis // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EarningsAnalysisImpl implements _EarningsAnalysis {
  const _$EarningsAnalysisImpl(
      {required this.symbol,
      required final List<EarningsCall> upcomingCalls,
      required final List<EarningsCall> recentCalls,
      final Map<String, dynamic>? historicalAnalysis,
      final Map<String, dynamic>? analystEstimates,
      final Map<String, dynamic>? surpriseAnalysis,
      final Map<String, dynamic>? guidanceAnalysis})
      : _upcomingCalls = upcomingCalls,
        _recentCalls = recentCalls,
        _historicalAnalysis = historicalAnalysis,
        _analystEstimates = analystEstimates,
        _surpriseAnalysis = surpriseAnalysis,
        _guidanceAnalysis = guidanceAnalysis;

  factory _$EarningsAnalysisImpl.fromJson(Map<String, dynamic> json) =>
      _$$EarningsAnalysisImplFromJson(json);

  @override
  final String symbol;
  final List<EarningsCall> _upcomingCalls;
  @override
  List<EarningsCall> get upcomingCalls {
    if (_upcomingCalls is EqualUnmodifiableListView) return _upcomingCalls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_upcomingCalls);
  }

  final List<EarningsCall> _recentCalls;
  @override
  List<EarningsCall> get recentCalls {
    if (_recentCalls is EqualUnmodifiableListView) return _recentCalls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentCalls);
  }

  final Map<String, dynamic>? _historicalAnalysis;
  @override
  Map<String, dynamic>? get historicalAnalysis {
    final value = _historicalAnalysis;
    if (value == null) return null;
    if (_historicalAnalysis is EqualUnmodifiableMapView)
      return _historicalAnalysis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _analystEstimates;
  @override
  Map<String, dynamic>? get analystEstimates {
    final value = _analystEstimates;
    if (value == null) return null;
    if (_analystEstimates is EqualUnmodifiableMapView) return _analystEstimates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _surpriseAnalysis;
  @override
  Map<String, dynamic>? get surpriseAnalysis {
    final value = _surpriseAnalysis;
    if (value == null) return null;
    if (_surpriseAnalysis is EqualUnmodifiableMapView) return _surpriseAnalysis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _guidanceAnalysis;
  @override
  Map<String, dynamic>? get guidanceAnalysis {
    final value = _guidanceAnalysis;
    if (value == null) return null;
    if (_guidanceAnalysis is EqualUnmodifiableMapView) return _guidanceAnalysis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'EarningsAnalysis(symbol: $symbol, upcomingCalls: $upcomingCalls, recentCalls: $recentCalls, historicalAnalysis: $historicalAnalysis, analystEstimates: $analystEstimates, surpriseAnalysis: $surpriseAnalysis, guidanceAnalysis: $guidanceAnalysis)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarningsAnalysisImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            const DeepCollectionEquality()
                .equals(other._upcomingCalls, _upcomingCalls) &&
            const DeepCollectionEquality()
                .equals(other._recentCalls, _recentCalls) &&
            const DeepCollectionEquality()
                .equals(other._historicalAnalysis, _historicalAnalysis) &&
            const DeepCollectionEquality()
                .equals(other._analystEstimates, _analystEstimates) &&
            const DeepCollectionEquality()
                .equals(other._surpriseAnalysis, _surpriseAnalysis) &&
            const DeepCollectionEquality()
                .equals(other._guidanceAnalysis, _guidanceAnalysis));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      symbol,
      const DeepCollectionEquality().hash(_upcomingCalls),
      const DeepCollectionEquality().hash(_recentCalls),
      const DeepCollectionEquality().hash(_historicalAnalysis),
      const DeepCollectionEquality().hash(_analystEstimates),
      const DeepCollectionEquality().hash(_surpriseAnalysis),
      const DeepCollectionEquality().hash(_guidanceAnalysis));

  /// Create a copy of EarningsAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EarningsAnalysisImplCopyWith<_$EarningsAnalysisImpl> get copyWith =>
      __$$EarningsAnalysisImplCopyWithImpl<_$EarningsAnalysisImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EarningsAnalysisImplToJson(
      this,
    );
  }
}

abstract class _EarningsAnalysis implements EarningsAnalysis {
  const factory _EarningsAnalysis(
      {required final String symbol,
      required final List<EarningsCall> upcomingCalls,
      required final List<EarningsCall> recentCalls,
      final Map<String, dynamic>? historicalAnalysis,
      final Map<String, dynamic>? analystEstimates,
      final Map<String, dynamic>? surpriseAnalysis,
      final Map<String, dynamic>? guidanceAnalysis}) = _$EarningsAnalysisImpl;

  factory _EarningsAnalysis.fromJson(Map<String, dynamic> json) =
      _$EarningsAnalysisImpl.fromJson;

  @override
  String get symbol;
  @override
  List<EarningsCall> get upcomingCalls;
  @override
  List<EarningsCall> get recentCalls;
  @override
  Map<String, dynamic>? get historicalAnalysis;
  @override
  Map<String, dynamic>? get analystEstimates;
  @override
  Map<String, dynamic>? get surpriseAnalysis;
  @override
  Map<String, dynamic>? get guidanceAnalysis;

  /// Create a copy of EarningsAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EarningsAnalysisImplCopyWith<_$EarningsAnalysisImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RedditFinancialPost _$RedditFinancialPostFromJson(Map<String, dynamic> json) {
  return _RedditFinancialPost.fromJson(json);
}

/// @nodoc
mixin _$RedditFinancialPost {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  int get comments => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  String get subreddit => throw _privateConstructorUsedError;
  List<String> get mentionedStocks => throw _privateConstructorUsedError;
  double get sentiment => throw _privateConstructorUsedError;
  double get credibility => throw _privateConstructorUsedError;
  double get impact => throw _privateConstructorUsedError;

  /// Serializes this RedditFinancialPost to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RedditFinancialPost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RedditFinancialPostCopyWith<RedditFinancialPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedditFinancialPostCopyWith<$Res> {
  factory $RedditFinancialPostCopyWith(
          RedditFinancialPost value, $Res Function(RedditFinancialPost) then) =
      _$RedditFinancialPostCopyWithImpl<$Res, RedditFinancialPost>;
  @useResult
  $Res call(
      {String id,
      String title,
      String content,
      String author,
      int score,
      int comments,
      DateTime timestamp,
      String subreddit,
      List<String> mentionedStocks,
      double sentiment,
      double credibility,
      double impact});
}

/// @nodoc
class _$RedditFinancialPostCopyWithImpl<$Res, $Val extends RedditFinancialPost>
    implements $RedditFinancialPostCopyWith<$Res> {
  _$RedditFinancialPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RedditFinancialPost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? author = null,
    Object? score = null,
    Object? comments = null,
    Object? timestamp = null,
    Object? subreddit = null,
    Object? mentionedStocks = null,
    Object? sentiment = null,
    Object? credibility = null,
    Object? impact = null,
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
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      subreddit: null == subreddit
          ? _value.subreddit
          : subreddit // ignore: cast_nullable_to_non_nullable
              as String,
      mentionedStocks: null == mentionedStocks
          ? _value.mentionedStocks
          : mentionedStocks // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sentiment: null == sentiment
          ? _value.sentiment
          : sentiment // ignore: cast_nullable_to_non_nullable
              as double,
      credibility: null == credibility
          ? _value.credibility
          : credibility // ignore: cast_nullable_to_non_nullable
              as double,
      impact: null == impact
          ? _value.impact
          : impact // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RedditFinancialPostImplCopyWith<$Res>
    implements $RedditFinancialPostCopyWith<$Res> {
  factory _$$RedditFinancialPostImplCopyWith(_$RedditFinancialPostImpl value,
          $Res Function(_$RedditFinancialPostImpl) then) =
      __$$RedditFinancialPostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String content,
      String author,
      int score,
      int comments,
      DateTime timestamp,
      String subreddit,
      List<String> mentionedStocks,
      double sentiment,
      double credibility,
      double impact});
}

/// @nodoc
class __$$RedditFinancialPostImplCopyWithImpl<$Res>
    extends _$RedditFinancialPostCopyWithImpl<$Res, _$RedditFinancialPostImpl>
    implements _$$RedditFinancialPostImplCopyWith<$Res> {
  __$$RedditFinancialPostImplCopyWithImpl(_$RedditFinancialPostImpl _value,
      $Res Function(_$RedditFinancialPostImpl) _then)
      : super(_value, _then);

  /// Create a copy of RedditFinancialPost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? author = null,
    Object? score = null,
    Object? comments = null,
    Object? timestamp = null,
    Object? subreddit = null,
    Object? mentionedStocks = null,
    Object? sentiment = null,
    Object? credibility = null,
    Object? impact = null,
  }) {
    return _then(_$RedditFinancialPostImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      subreddit: null == subreddit
          ? _value.subreddit
          : subreddit // ignore: cast_nullable_to_non_nullable
              as String,
      mentionedStocks: null == mentionedStocks
          ? _value._mentionedStocks
          : mentionedStocks // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sentiment: null == sentiment
          ? _value.sentiment
          : sentiment // ignore: cast_nullable_to_non_nullable
              as double,
      credibility: null == credibility
          ? _value.credibility
          : credibility // ignore: cast_nullable_to_non_nullable
              as double,
      impact: null == impact
          ? _value.impact
          : impact // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RedditFinancialPostImpl implements _RedditFinancialPost {
  const _$RedditFinancialPostImpl(
      {required this.id,
      required this.title,
      required this.content,
      required this.author,
      required this.score,
      required this.comments,
      required this.timestamp,
      required this.subreddit,
      required final List<String> mentionedStocks,
      required this.sentiment,
      required this.credibility,
      required this.impact})
      : _mentionedStocks = mentionedStocks;

  factory _$RedditFinancialPostImpl.fromJson(Map<String, dynamic> json) =>
      _$$RedditFinancialPostImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String content;
  @override
  final String author;
  @override
  final int score;
  @override
  final int comments;
  @override
  final DateTime timestamp;
  @override
  final String subreddit;
  final List<String> _mentionedStocks;
  @override
  List<String> get mentionedStocks {
    if (_mentionedStocks is EqualUnmodifiableListView) return _mentionedStocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mentionedStocks);
  }

  @override
  final double sentiment;
  @override
  final double credibility;
  @override
  final double impact;

  @override
  String toString() {
    return 'RedditFinancialPost(id: $id, title: $title, content: $content, author: $author, score: $score, comments: $comments, timestamp: $timestamp, subreddit: $subreddit, mentionedStocks: $mentionedStocks, sentiment: $sentiment, credibility: $credibility, impact: $impact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RedditFinancialPostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.subreddit, subreddit) ||
                other.subreddit == subreddit) &&
            const DeepCollectionEquality()
                .equals(other._mentionedStocks, _mentionedStocks) &&
            (identical(other.sentiment, sentiment) ||
                other.sentiment == sentiment) &&
            (identical(other.credibility, credibility) ||
                other.credibility == credibility) &&
            (identical(other.impact, impact) || other.impact == impact));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      content,
      author,
      score,
      comments,
      timestamp,
      subreddit,
      const DeepCollectionEquality().hash(_mentionedStocks),
      sentiment,
      credibility,
      impact);

  /// Create a copy of RedditFinancialPost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RedditFinancialPostImplCopyWith<_$RedditFinancialPostImpl> get copyWith =>
      __$$RedditFinancialPostImplCopyWithImpl<_$RedditFinancialPostImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RedditFinancialPostImplToJson(
      this,
    );
  }
}

abstract class _RedditFinancialPost implements RedditFinancialPost {
  const factory _RedditFinancialPost(
      {required final String id,
      required final String title,
      required final String content,
      required final String author,
      required final int score,
      required final int comments,
      required final DateTime timestamp,
      required final String subreddit,
      required final List<String> mentionedStocks,
      required final double sentiment,
      required final double credibility,
      required final double impact}) = _$RedditFinancialPostImpl;

  factory _RedditFinancialPost.fromJson(Map<String, dynamic> json) =
      _$RedditFinancialPostImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get content;
  @override
  String get author;
  @override
  int get score;
  @override
  int get comments;
  @override
  DateTime get timestamp;
  @override
  String get subreddit;
  @override
  List<String> get mentionedStocks;
  @override
  double get sentiment;
  @override
  double get credibility;
  @override
  double get impact;

  /// Create a copy of RedditFinancialPost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RedditFinancialPostImplCopyWith<_$RedditFinancialPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SocialSentiment _$SocialSentimentFromJson(Map<String, dynamic> json) {
  return _SocialSentiment.fromJson(json);
}

/// @nodoc
mixin _$SocialSentiment {
  double get overallSentiment => throw _privateConstructorUsedError;
  Map<String, double> get stockSentiment => throw _privateConstructorUsedError;
  List<SentimentTrend> get sentimentTrends =>
      throw _privateConstructorUsedError;
  Map<String, double> get sentimentDistribution =>
      throw _privateConstructorUsedError;
  double get credibilityWeightedSentiment => throw _privateConstructorUsedError;
  double get sentimentMomentum => throw _privateConstructorUsedError;

  /// Serializes this SocialSentiment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocialSentiment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocialSentimentCopyWith<SocialSentiment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialSentimentCopyWith<$Res> {
  factory $SocialSentimentCopyWith(
          SocialSentiment value, $Res Function(SocialSentiment) then) =
      _$SocialSentimentCopyWithImpl<$Res, SocialSentiment>;
  @useResult
  $Res call(
      {double overallSentiment,
      Map<String, double> stockSentiment,
      List<SentimentTrend> sentimentTrends,
      Map<String, double> sentimentDistribution,
      double credibilityWeightedSentiment,
      double sentimentMomentum});
}

/// @nodoc
class _$SocialSentimentCopyWithImpl<$Res, $Val extends SocialSentiment>
    implements $SocialSentimentCopyWith<$Res> {
  _$SocialSentimentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocialSentiment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overallSentiment = null,
    Object? stockSentiment = null,
    Object? sentimentTrends = null,
    Object? sentimentDistribution = null,
    Object? credibilityWeightedSentiment = null,
    Object? sentimentMomentum = null,
  }) {
    return _then(_value.copyWith(
      overallSentiment: null == overallSentiment
          ? _value.overallSentiment
          : overallSentiment // ignore: cast_nullable_to_non_nullable
              as double,
      stockSentiment: null == stockSentiment
          ? _value.stockSentiment
          : stockSentiment // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      sentimentTrends: null == sentimentTrends
          ? _value.sentimentTrends
          : sentimentTrends // ignore: cast_nullable_to_non_nullable
              as List<SentimentTrend>,
      sentimentDistribution: null == sentimentDistribution
          ? _value.sentimentDistribution
          : sentimentDistribution // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      credibilityWeightedSentiment: null == credibilityWeightedSentiment
          ? _value.credibilityWeightedSentiment
          : credibilityWeightedSentiment // ignore: cast_nullable_to_non_nullable
              as double,
      sentimentMomentum: null == sentimentMomentum
          ? _value.sentimentMomentum
          : sentimentMomentum // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialSentimentImplCopyWith<$Res>
    implements $SocialSentimentCopyWith<$Res> {
  factory _$$SocialSentimentImplCopyWith(_$SocialSentimentImpl value,
          $Res Function(_$SocialSentimentImpl) then) =
      __$$SocialSentimentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double overallSentiment,
      Map<String, double> stockSentiment,
      List<SentimentTrend> sentimentTrends,
      Map<String, double> sentimentDistribution,
      double credibilityWeightedSentiment,
      double sentimentMomentum});
}

/// @nodoc
class __$$SocialSentimentImplCopyWithImpl<$Res>
    extends _$SocialSentimentCopyWithImpl<$Res, _$SocialSentimentImpl>
    implements _$$SocialSentimentImplCopyWith<$Res> {
  __$$SocialSentimentImplCopyWithImpl(
      _$SocialSentimentImpl _value, $Res Function(_$SocialSentimentImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocialSentiment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overallSentiment = null,
    Object? stockSentiment = null,
    Object? sentimentTrends = null,
    Object? sentimentDistribution = null,
    Object? credibilityWeightedSentiment = null,
    Object? sentimentMomentum = null,
  }) {
    return _then(_$SocialSentimentImpl(
      overallSentiment: null == overallSentiment
          ? _value.overallSentiment
          : overallSentiment // ignore: cast_nullable_to_non_nullable
              as double,
      stockSentiment: null == stockSentiment
          ? _value._stockSentiment
          : stockSentiment // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      sentimentTrends: null == sentimentTrends
          ? _value._sentimentTrends
          : sentimentTrends // ignore: cast_nullable_to_non_nullable
              as List<SentimentTrend>,
      sentimentDistribution: null == sentimentDistribution
          ? _value._sentimentDistribution
          : sentimentDistribution // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      credibilityWeightedSentiment: null == credibilityWeightedSentiment
          ? _value.credibilityWeightedSentiment
          : credibilityWeightedSentiment // ignore: cast_nullable_to_non_nullable
              as double,
      sentimentMomentum: null == sentimentMomentum
          ? _value.sentimentMomentum
          : sentimentMomentum // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialSentimentImpl implements _SocialSentiment {
  const _$SocialSentimentImpl(
      {required this.overallSentiment,
      required final Map<String, double> stockSentiment,
      required final List<SentimentTrend> sentimentTrends,
      required final Map<String, double> sentimentDistribution,
      required this.credibilityWeightedSentiment,
      required this.sentimentMomentum})
      : _stockSentiment = stockSentiment,
        _sentimentTrends = sentimentTrends,
        _sentimentDistribution = sentimentDistribution;

  factory _$SocialSentimentImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialSentimentImplFromJson(json);

  @override
  final double overallSentiment;
  final Map<String, double> _stockSentiment;
  @override
  Map<String, double> get stockSentiment {
    if (_stockSentiment is EqualUnmodifiableMapView) return _stockSentiment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_stockSentiment);
  }

  final List<SentimentTrend> _sentimentTrends;
  @override
  List<SentimentTrend> get sentimentTrends {
    if (_sentimentTrends is EqualUnmodifiableListView) return _sentimentTrends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sentimentTrends);
  }

  final Map<String, double> _sentimentDistribution;
  @override
  Map<String, double> get sentimentDistribution {
    if (_sentimentDistribution is EqualUnmodifiableMapView)
      return _sentimentDistribution;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_sentimentDistribution);
  }

  @override
  final double credibilityWeightedSentiment;
  @override
  final double sentimentMomentum;

  @override
  String toString() {
    return 'SocialSentiment(overallSentiment: $overallSentiment, stockSentiment: $stockSentiment, sentimentTrends: $sentimentTrends, sentimentDistribution: $sentimentDistribution, credibilityWeightedSentiment: $credibilityWeightedSentiment, sentimentMomentum: $sentimentMomentum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialSentimentImpl &&
            (identical(other.overallSentiment, overallSentiment) ||
                other.overallSentiment == overallSentiment) &&
            const DeepCollectionEquality()
                .equals(other._stockSentiment, _stockSentiment) &&
            const DeepCollectionEquality()
                .equals(other._sentimentTrends, _sentimentTrends) &&
            const DeepCollectionEquality()
                .equals(other._sentimentDistribution, _sentimentDistribution) &&
            (identical(other.credibilityWeightedSentiment,
                    credibilityWeightedSentiment) ||
                other.credibilityWeightedSentiment ==
                    credibilityWeightedSentiment) &&
            (identical(other.sentimentMomentum, sentimentMomentum) ||
                other.sentimentMomentum == sentimentMomentum));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      overallSentiment,
      const DeepCollectionEquality().hash(_stockSentiment),
      const DeepCollectionEquality().hash(_sentimentTrends),
      const DeepCollectionEquality().hash(_sentimentDistribution),
      credibilityWeightedSentiment,
      sentimentMomentum);

  /// Create a copy of SocialSentiment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialSentimentImplCopyWith<_$SocialSentimentImpl> get copyWith =>
      __$$SocialSentimentImplCopyWithImpl<_$SocialSentimentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialSentimentImplToJson(
      this,
    );
  }
}

abstract class _SocialSentiment implements SocialSentiment {
  const factory _SocialSentiment(
      {required final double overallSentiment,
      required final Map<String, double> stockSentiment,
      required final List<SentimentTrend> sentimentTrends,
      required final Map<String, double> sentimentDistribution,
      required final double credibilityWeightedSentiment,
      required final double sentimentMomentum}) = _$SocialSentimentImpl;

  factory _SocialSentiment.fromJson(Map<String, dynamic> json) =
      _$SocialSentimentImpl.fromJson;

  @override
  double get overallSentiment;
  @override
  Map<String, double> get stockSentiment;
  @override
  List<SentimentTrend> get sentimentTrends;
  @override
  Map<String, double> get sentimentDistribution;
  @override
  double get credibilityWeightedSentiment;
  @override
  double get sentimentMomentum;

  /// Create a copy of SocialSentiment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocialSentimentImplCopyWith<_$SocialSentimentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SentimentTrend _$SentimentTrendFromJson(Map<String, dynamic> json) {
  return _SentimentTrend.fromJson(json);
}

/// @nodoc
mixin _$SentimentTrend {
  DateTime get date => throw _privateConstructorUsedError;
  double get sentiment => throw _privateConstructorUsedError;
  double get volume => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;

  /// Serializes this SentimentTrend to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SentimentTrend
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SentimentTrendCopyWith<SentimentTrend> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SentimentTrendCopyWith<$Res> {
  factory $SentimentTrendCopyWith(
          SentimentTrend value, $Res Function(SentimentTrend) then) =
      _$SentimentTrendCopyWithImpl<$Res, SentimentTrend>;
  @useResult
  $Res call({DateTime date, double sentiment, double volume, String? source});
}

/// @nodoc
class _$SentimentTrendCopyWithImpl<$Res, $Val extends SentimentTrend>
    implements $SentimentTrendCopyWith<$Res> {
  _$SentimentTrendCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SentimentTrend
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? sentiment = null,
    Object? volume = null,
    Object? source = freezed,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sentiment: null == sentiment
          ? _value.sentiment
          : sentiment // ignore: cast_nullable_to_non_nullable
              as double,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SentimentTrendImplCopyWith<$Res>
    implements $SentimentTrendCopyWith<$Res> {
  factory _$$SentimentTrendImplCopyWith(_$SentimentTrendImpl value,
          $Res Function(_$SentimentTrendImpl) then) =
      __$$SentimentTrendImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, double sentiment, double volume, String? source});
}

/// @nodoc
class __$$SentimentTrendImplCopyWithImpl<$Res>
    extends _$SentimentTrendCopyWithImpl<$Res, _$SentimentTrendImpl>
    implements _$$SentimentTrendImplCopyWith<$Res> {
  __$$SentimentTrendImplCopyWithImpl(
      _$SentimentTrendImpl _value, $Res Function(_$SentimentTrendImpl) _then)
      : super(_value, _then);

  /// Create a copy of SentimentTrend
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? sentiment = null,
    Object? volume = null,
    Object? source = freezed,
  }) {
    return _then(_$SentimentTrendImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sentiment: null == sentiment
          ? _value.sentiment
          : sentiment // ignore: cast_nullable_to_non_nullable
              as double,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SentimentTrendImpl implements _SentimentTrend {
  const _$SentimentTrendImpl(
      {required this.date,
      required this.sentiment,
      required this.volume,
      this.source});

  factory _$SentimentTrendImpl.fromJson(Map<String, dynamic> json) =>
      _$$SentimentTrendImplFromJson(json);

  @override
  final DateTime date;
  @override
  final double sentiment;
  @override
  final double volume;
  @override
  final String? source;

  @override
  String toString() {
    return 'SentimentTrend(date: $date, sentiment: $sentiment, volume: $volume, source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SentimentTrendImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.sentiment, sentiment) ||
                other.sentiment == sentiment) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.source, source) || other.source == source));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, sentiment, volume, source);

  /// Create a copy of SentimentTrend
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SentimentTrendImplCopyWith<_$SentimentTrendImpl> get copyWith =>
      __$$SentimentTrendImplCopyWithImpl<_$SentimentTrendImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SentimentTrendImplToJson(
      this,
    );
  }
}

abstract class _SentimentTrend implements SentimentTrend {
  const factory _SentimentTrend(
      {required final DateTime date,
      required final double sentiment,
      required final double volume,
      final String? source}) = _$SentimentTrendImpl;

  factory _SentimentTrend.fromJson(Map<String, dynamic> json) =
      _$SentimentTrendImpl.fromJson;

  @override
  DateTime get date;
  @override
  double get sentiment;
  @override
  double get volume;
  @override
  String? get source;

  /// Create a copy of SentimentTrend
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SentimentTrendImplCopyWith<_$SentimentTrendImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MarketImpact _$MarketImpactFromJson(Map<String, dynamic> json) {
  return _MarketImpact.fromJson(json);
}

/// @nodoc
mixin _$MarketImpact {
  DirectImpact get directImpact => throw _privateConstructorUsedError;
  Map<String, double> get sectorImpact => throw _privateConstructorUsedError;
  Map<String, double> get marketImpact => throw _privateConstructorUsedError;
  Map<String, double> get temporalImpact => throw _privateConstructorUsedError;
  List<String> get cascadingEffects => throw _privateConstructorUsedError;
  Map<String, double> get recoveryPatterns =>
      throw _privateConstructorUsedError;

  /// Serializes this MarketImpact to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MarketImpact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MarketImpactCopyWith<MarketImpact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketImpactCopyWith<$Res> {
  factory $MarketImpactCopyWith(
          MarketImpact value, $Res Function(MarketImpact) then) =
      _$MarketImpactCopyWithImpl<$Res, MarketImpact>;
  @useResult
  $Res call(
      {DirectImpact directImpact,
      Map<String, double> sectorImpact,
      Map<String, double> marketImpact,
      Map<String, double> temporalImpact,
      List<String> cascadingEffects,
      Map<String, double> recoveryPatterns});

  $DirectImpactCopyWith<$Res> get directImpact;
}

/// @nodoc
class _$MarketImpactCopyWithImpl<$Res, $Val extends MarketImpact>
    implements $MarketImpactCopyWith<$Res> {
  _$MarketImpactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarketImpact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? directImpact = null,
    Object? sectorImpact = null,
    Object? marketImpact = null,
    Object? temporalImpact = null,
    Object? cascadingEffects = null,
    Object? recoveryPatterns = null,
  }) {
    return _then(_value.copyWith(
      directImpact: null == directImpact
          ? _value.directImpact
          : directImpact // ignore: cast_nullable_to_non_nullable
              as DirectImpact,
      sectorImpact: null == sectorImpact
          ? _value.sectorImpact
          : sectorImpact // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      marketImpact: null == marketImpact
          ? _value.marketImpact
          : marketImpact // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      temporalImpact: null == temporalImpact
          ? _value.temporalImpact
          : temporalImpact // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      cascadingEffects: null == cascadingEffects
          ? _value.cascadingEffects
          : cascadingEffects // ignore: cast_nullable_to_non_nullable
              as List<String>,
      recoveryPatterns: null == recoveryPatterns
          ? _value.recoveryPatterns
          : recoveryPatterns // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
    ) as $Val);
  }

  /// Create a copy of MarketImpact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DirectImpactCopyWith<$Res> get directImpact {
    return $DirectImpactCopyWith<$Res>(_value.directImpact, (value) {
      return _then(_value.copyWith(directImpact: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MarketImpactImplCopyWith<$Res>
    implements $MarketImpactCopyWith<$Res> {
  factory _$$MarketImpactImplCopyWith(
          _$MarketImpactImpl value, $Res Function(_$MarketImpactImpl) then) =
      __$$MarketImpactImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DirectImpact directImpact,
      Map<String, double> sectorImpact,
      Map<String, double> marketImpact,
      Map<String, double> temporalImpact,
      List<String> cascadingEffects,
      Map<String, double> recoveryPatterns});

  @override
  $DirectImpactCopyWith<$Res> get directImpact;
}

/// @nodoc
class __$$MarketImpactImplCopyWithImpl<$Res>
    extends _$MarketImpactCopyWithImpl<$Res, _$MarketImpactImpl>
    implements _$$MarketImpactImplCopyWith<$Res> {
  __$$MarketImpactImplCopyWithImpl(
      _$MarketImpactImpl _value, $Res Function(_$MarketImpactImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarketImpact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? directImpact = null,
    Object? sectorImpact = null,
    Object? marketImpact = null,
    Object? temporalImpact = null,
    Object? cascadingEffects = null,
    Object? recoveryPatterns = null,
  }) {
    return _then(_$MarketImpactImpl(
      directImpact: null == directImpact
          ? _value.directImpact
          : directImpact // ignore: cast_nullable_to_non_nullable
              as DirectImpact,
      sectorImpact: null == sectorImpact
          ? _value._sectorImpact
          : sectorImpact // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      marketImpact: null == marketImpact
          ? _value._marketImpact
          : marketImpact // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      temporalImpact: null == temporalImpact
          ? _value._temporalImpact
          : temporalImpact // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      cascadingEffects: null == cascadingEffects
          ? _value._cascadingEffects
          : cascadingEffects // ignore: cast_nullable_to_non_nullable
              as List<String>,
      recoveryPatterns: null == recoveryPatterns
          ? _value._recoveryPatterns
          : recoveryPatterns // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketImpactImpl implements _MarketImpact {
  const _$MarketImpactImpl(
      {required this.directImpact,
      required final Map<String, double> sectorImpact,
      required final Map<String, double> marketImpact,
      required final Map<String, double> temporalImpact,
      required final List<String> cascadingEffects,
      required final Map<String, double> recoveryPatterns})
      : _sectorImpact = sectorImpact,
        _marketImpact = marketImpact,
        _temporalImpact = temporalImpact,
        _cascadingEffects = cascadingEffects,
        _recoveryPatterns = recoveryPatterns;

  factory _$MarketImpactImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketImpactImplFromJson(json);

  @override
  final DirectImpact directImpact;
  final Map<String, double> _sectorImpact;
  @override
  Map<String, double> get sectorImpact {
    if (_sectorImpact is EqualUnmodifiableMapView) return _sectorImpact;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_sectorImpact);
  }

  final Map<String, double> _marketImpact;
  @override
  Map<String, double> get marketImpact {
    if (_marketImpact is EqualUnmodifiableMapView) return _marketImpact;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_marketImpact);
  }

  final Map<String, double> _temporalImpact;
  @override
  Map<String, double> get temporalImpact {
    if (_temporalImpact is EqualUnmodifiableMapView) return _temporalImpact;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_temporalImpact);
  }

  final List<String> _cascadingEffects;
  @override
  List<String> get cascadingEffects {
    if (_cascadingEffects is EqualUnmodifiableListView)
      return _cascadingEffects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cascadingEffects);
  }

  final Map<String, double> _recoveryPatterns;
  @override
  Map<String, double> get recoveryPatterns {
    if (_recoveryPatterns is EqualUnmodifiableMapView) return _recoveryPatterns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_recoveryPatterns);
  }

  @override
  String toString() {
    return 'MarketImpact(directImpact: $directImpact, sectorImpact: $sectorImpact, marketImpact: $marketImpact, temporalImpact: $temporalImpact, cascadingEffects: $cascadingEffects, recoveryPatterns: $recoveryPatterns)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketImpactImpl &&
            (identical(other.directImpact, directImpact) ||
                other.directImpact == directImpact) &&
            const DeepCollectionEquality()
                .equals(other._sectorImpact, _sectorImpact) &&
            const DeepCollectionEquality()
                .equals(other._marketImpact, _marketImpact) &&
            const DeepCollectionEquality()
                .equals(other._temporalImpact, _temporalImpact) &&
            const DeepCollectionEquality()
                .equals(other._cascadingEffects, _cascadingEffects) &&
            const DeepCollectionEquality()
                .equals(other._recoveryPatterns, _recoveryPatterns));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      directImpact,
      const DeepCollectionEquality().hash(_sectorImpact),
      const DeepCollectionEquality().hash(_marketImpact),
      const DeepCollectionEquality().hash(_temporalImpact),
      const DeepCollectionEquality().hash(_cascadingEffects),
      const DeepCollectionEquality().hash(_recoveryPatterns));

  /// Create a copy of MarketImpact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketImpactImplCopyWith<_$MarketImpactImpl> get copyWith =>
      __$$MarketImpactImplCopyWithImpl<_$MarketImpactImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketImpactImplToJson(
      this,
    );
  }
}

abstract class _MarketImpact implements MarketImpact {
  const factory _MarketImpact(
          {required final DirectImpact directImpact,
          required final Map<String, double> sectorImpact,
          required final Map<String, double> marketImpact,
          required final Map<String, double> temporalImpact,
          required final List<String> cascadingEffects,
          required final Map<String, double> recoveryPatterns}) =
      _$MarketImpactImpl;

  factory _MarketImpact.fromJson(Map<String, dynamic> json) =
      _$MarketImpactImpl.fromJson;

  @override
  DirectImpact get directImpact;
  @override
  Map<String, double> get sectorImpact;
  @override
  Map<String, double> get marketImpact;
  @override
  Map<String, double> get temporalImpact;
  @override
  List<String> get cascadingEffects;
  @override
  Map<String, double> get recoveryPatterns;

  /// Create a copy of MarketImpact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarketImpactImplCopyWith<_$MarketImpactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DirectImpact _$DirectImpactFromJson(Map<String, dynamic> json) {
  return _DirectImpact.fromJson(json);
}

/// @nodoc
mixin _$DirectImpact {
  Map<String, StockImpact> get stockImpacts =>
      throw _privateConstructorUsedError;
  double get averageImpact => throw _privateConstructorUsedError;
  Map<String, double> get impactDistribution =>
      throw _privateConstructorUsedError;

  /// Serializes this DirectImpact to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DirectImpact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DirectImpactCopyWith<DirectImpact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectImpactCopyWith<$Res> {
  factory $DirectImpactCopyWith(
          DirectImpact value, $Res Function(DirectImpact) then) =
      _$DirectImpactCopyWithImpl<$Res, DirectImpact>;
  @useResult
  $Res call(
      {Map<String, StockImpact> stockImpacts,
      double averageImpact,
      Map<String, double> impactDistribution});
}

/// @nodoc
class _$DirectImpactCopyWithImpl<$Res, $Val extends DirectImpact>
    implements $DirectImpactCopyWith<$Res> {
  _$DirectImpactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DirectImpact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stockImpacts = null,
    Object? averageImpact = null,
    Object? impactDistribution = null,
  }) {
    return _then(_value.copyWith(
      stockImpacts: null == stockImpacts
          ? _value.stockImpacts
          : stockImpacts // ignore: cast_nullable_to_non_nullable
              as Map<String, StockImpact>,
      averageImpact: null == averageImpact
          ? _value.averageImpact
          : averageImpact // ignore: cast_nullable_to_non_nullable
              as double,
      impactDistribution: null == impactDistribution
          ? _value.impactDistribution
          : impactDistribution // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DirectImpactImplCopyWith<$Res>
    implements $DirectImpactCopyWith<$Res> {
  factory _$$DirectImpactImplCopyWith(
          _$DirectImpactImpl value, $Res Function(_$DirectImpactImpl) then) =
      __$$DirectImpactImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, StockImpact> stockImpacts,
      double averageImpact,
      Map<String, double> impactDistribution});
}

/// @nodoc
class __$$DirectImpactImplCopyWithImpl<$Res>
    extends _$DirectImpactCopyWithImpl<$Res, _$DirectImpactImpl>
    implements _$$DirectImpactImplCopyWith<$Res> {
  __$$DirectImpactImplCopyWithImpl(
      _$DirectImpactImpl _value, $Res Function(_$DirectImpactImpl) _then)
      : super(_value, _then);

  /// Create a copy of DirectImpact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stockImpacts = null,
    Object? averageImpact = null,
    Object? impactDistribution = null,
  }) {
    return _then(_$DirectImpactImpl(
      stockImpacts: null == stockImpacts
          ? _value._stockImpacts
          : stockImpacts // ignore: cast_nullable_to_non_nullable
              as Map<String, StockImpact>,
      averageImpact: null == averageImpact
          ? _value.averageImpact
          : averageImpact // ignore: cast_nullable_to_non_nullable
              as double,
      impactDistribution: null == impactDistribution
          ? _value._impactDistribution
          : impactDistribution // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DirectImpactImpl implements _DirectImpact {
  const _$DirectImpactImpl(
      {required final Map<String, StockImpact> stockImpacts,
      required this.averageImpact,
      required final Map<String, double> impactDistribution})
      : _stockImpacts = stockImpacts,
        _impactDistribution = impactDistribution;

  factory _$DirectImpactImpl.fromJson(Map<String, dynamic> json) =>
      _$$DirectImpactImplFromJson(json);

  final Map<String, StockImpact> _stockImpacts;
  @override
  Map<String, StockImpact> get stockImpacts {
    if (_stockImpacts is EqualUnmodifiableMapView) return _stockImpacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_stockImpacts);
  }

  @override
  final double averageImpact;
  final Map<String, double> _impactDistribution;
  @override
  Map<String, double> get impactDistribution {
    if (_impactDistribution is EqualUnmodifiableMapView)
      return _impactDistribution;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_impactDistribution);
  }

  @override
  String toString() {
    return 'DirectImpact(stockImpacts: $stockImpacts, averageImpact: $averageImpact, impactDistribution: $impactDistribution)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DirectImpactImpl &&
            const DeepCollectionEquality()
                .equals(other._stockImpacts, _stockImpacts) &&
            (identical(other.averageImpact, averageImpact) ||
                other.averageImpact == averageImpact) &&
            const DeepCollectionEquality()
                .equals(other._impactDistribution, _impactDistribution));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_stockImpacts),
      averageImpact,
      const DeepCollectionEquality().hash(_impactDistribution));

  /// Create a copy of DirectImpact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DirectImpactImplCopyWith<_$DirectImpactImpl> get copyWith =>
      __$$DirectImpactImplCopyWithImpl<_$DirectImpactImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DirectImpactImplToJson(
      this,
    );
  }
}

abstract class _DirectImpact implements DirectImpact {
  const factory _DirectImpact(
          {required final Map<String, StockImpact> stockImpacts,
          required final double averageImpact,
          required final Map<String, double> impactDistribution}) =
      _$DirectImpactImpl;

  factory _DirectImpact.fromJson(Map<String, dynamic> json) =
      _$DirectImpactImpl.fromJson;

  @override
  Map<String, StockImpact> get stockImpacts;
  @override
  double get averageImpact;
  @override
  Map<String, double> get impactDistribution;

  /// Create a copy of DirectImpact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DirectImpactImplCopyWith<_$DirectImpactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StockImpact _$StockImpactFromJson(Map<String, dynamic> json) {
  return _StockImpact.fromJson(json);
}

/// @nodoc
mixin _$StockImpact {
  String get symbol => throw _privateConstructorUsedError;
  double get priceImpact => throw _privateConstructorUsedError;
  double get volumeImpact => throw _privateConstructorUsedError;
  double get volatilityImpact => throw _privateConstructorUsedError;
  DateTime get impactTime => throw _privateConstructorUsedError;
  Duration get recoveryTime => throw _privateConstructorUsedError;

  /// Serializes this StockImpact to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StockImpact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StockImpactCopyWith<StockImpact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockImpactCopyWith<$Res> {
  factory $StockImpactCopyWith(
          StockImpact value, $Res Function(StockImpact) then) =
      _$StockImpactCopyWithImpl<$Res, StockImpact>;
  @useResult
  $Res call(
      {String symbol,
      double priceImpact,
      double volumeImpact,
      double volatilityImpact,
      DateTime impactTime,
      Duration recoveryTime});
}

/// @nodoc
class _$StockImpactCopyWithImpl<$Res, $Val extends StockImpact>
    implements $StockImpactCopyWith<$Res> {
  _$StockImpactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StockImpact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? priceImpact = null,
    Object? volumeImpact = null,
    Object? volatilityImpact = null,
    Object? impactTime = null,
    Object? recoveryTime = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      priceImpact: null == priceImpact
          ? _value.priceImpact
          : priceImpact // ignore: cast_nullable_to_non_nullable
              as double,
      volumeImpact: null == volumeImpact
          ? _value.volumeImpact
          : volumeImpact // ignore: cast_nullable_to_non_nullable
              as double,
      volatilityImpact: null == volatilityImpact
          ? _value.volatilityImpact
          : volatilityImpact // ignore: cast_nullable_to_non_nullable
              as double,
      impactTime: null == impactTime
          ? _value.impactTime
          : impactTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      recoveryTime: null == recoveryTime
          ? _value.recoveryTime
          : recoveryTime // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StockImpactImplCopyWith<$Res>
    implements $StockImpactCopyWith<$Res> {
  factory _$$StockImpactImplCopyWith(
          _$StockImpactImpl value, $Res Function(_$StockImpactImpl) then) =
      __$$StockImpactImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      double priceImpact,
      double volumeImpact,
      double volatilityImpact,
      DateTime impactTime,
      Duration recoveryTime});
}

/// @nodoc
class __$$StockImpactImplCopyWithImpl<$Res>
    extends _$StockImpactCopyWithImpl<$Res, _$StockImpactImpl>
    implements _$$StockImpactImplCopyWith<$Res> {
  __$$StockImpactImplCopyWithImpl(
      _$StockImpactImpl _value, $Res Function(_$StockImpactImpl) _then)
      : super(_value, _then);

  /// Create a copy of StockImpact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? priceImpact = null,
    Object? volumeImpact = null,
    Object? volatilityImpact = null,
    Object? impactTime = null,
    Object? recoveryTime = null,
  }) {
    return _then(_$StockImpactImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      priceImpact: null == priceImpact
          ? _value.priceImpact
          : priceImpact // ignore: cast_nullable_to_non_nullable
              as double,
      volumeImpact: null == volumeImpact
          ? _value.volumeImpact
          : volumeImpact // ignore: cast_nullable_to_non_nullable
              as double,
      volatilityImpact: null == volatilityImpact
          ? _value.volatilityImpact
          : volatilityImpact // ignore: cast_nullable_to_non_nullable
              as double,
      impactTime: null == impactTime
          ? _value.impactTime
          : impactTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      recoveryTime: null == recoveryTime
          ? _value.recoveryTime
          : recoveryTime // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockImpactImpl implements _StockImpact {
  const _$StockImpactImpl(
      {required this.symbol,
      required this.priceImpact,
      required this.volumeImpact,
      required this.volatilityImpact,
      required this.impactTime,
      required this.recoveryTime});

  factory _$StockImpactImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockImpactImplFromJson(json);

  @override
  final String symbol;
  @override
  final double priceImpact;
  @override
  final double volumeImpact;
  @override
  final double volatilityImpact;
  @override
  final DateTime impactTime;
  @override
  final Duration recoveryTime;

  @override
  String toString() {
    return 'StockImpact(symbol: $symbol, priceImpact: $priceImpact, volumeImpact: $volumeImpact, volatilityImpact: $volatilityImpact, impactTime: $impactTime, recoveryTime: $recoveryTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockImpactImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.priceImpact, priceImpact) ||
                other.priceImpact == priceImpact) &&
            (identical(other.volumeImpact, volumeImpact) ||
                other.volumeImpact == volumeImpact) &&
            (identical(other.volatilityImpact, volatilityImpact) ||
                other.volatilityImpact == volatilityImpact) &&
            (identical(other.impactTime, impactTime) ||
                other.impactTime == impactTime) &&
            (identical(other.recoveryTime, recoveryTime) ||
                other.recoveryTime == recoveryTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, symbol, priceImpact,
      volumeImpact, volatilityImpact, impactTime, recoveryTime);

  /// Create a copy of StockImpact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StockImpactImplCopyWith<_$StockImpactImpl> get copyWith =>
      __$$StockImpactImplCopyWithImpl<_$StockImpactImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockImpactImplToJson(
      this,
    );
  }
}

abstract class _StockImpact implements StockImpact {
  const factory _StockImpact(
      {required final String symbol,
      required final double priceImpact,
      required final double volumeImpact,
      required final double volatilityImpact,
      required final DateTime impactTime,
      required final Duration recoveryTime}) = _$StockImpactImpl;

  factory _StockImpact.fromJson(Map<String, dynamic> json) =
      _$StockImpactImpl.fromJson;

  @override
  String get symbol;
  @override
  double get priceImpact;
  @override
  double get volumeImpact;
  @override
  double get volatilityImpact;
  @override
  DateTime get impactTime;
  @override
  Duration get recoveryTime;

  /// Create a copy of StockImpact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StockImpactImplCopyWith<_$StockImpactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
