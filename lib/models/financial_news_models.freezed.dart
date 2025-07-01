// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'financial_news_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EconomicEvent _$EconomicEventFromJson(Map<String, dynamic> json) {
  return _EconomicEvent.fromJson(json);
}

/// @nodoc
mixin _$EconomicEvent {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get impact => throw _privateConstructorUsedError;
  double? get previousValue => throw _privateConstructorUsedError;
  double? get forecastValue => throw _privateConstructorUsedError;
  double? get actualValue => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  List<String> get affectedAssets => throw _privateConstructorUsedError;
  bool get isHighImpact => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;

  /// Serializes this EconomicEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EconomicEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EconomicEventCopyWith<EconomicEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EconomicEventCopyWith<$Res> {
  factory $EconomicEventCopyWith(
          EconomicEvent value, $Res Function(EconomicEvent) then) =
      _$EconomicEventCopyWithImpl<$Res, EconomicEvent>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      DateTime date,
      String country,
      String currency,
      String impact,
      double? previousValue,
      double? forecastValue,
      double? actualValue,
      String unit,
      List<String> affectedAssets,
      bool isHighImpact,
      String source});
}

/// @nodoc
class _$EconomicEventCopyWithImpl<$Res, $Val extends EconomicEvent>
    implements $EconomicEventCopyWith<$Res> {
  _$EconomicEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EconomicEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? date = null,
    Object? country = null,
    Object? currency = null,
    Object? impact = null,
    Object? previousValue = freezed,
    Object? forecastValue = freezed,
    Object? actualValue = freezed,
    Object? unit = null,
    Object? affectedAssets = null,
    Object? isHighImpact = null,
    Object? source = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      impact: null == impact
          ? _value.impact
          : impact // ignore: cast_nullable_to_non_nullable
              as String,
      previousValue: freezed == previousValue
          ? _value.previousValue
          : previousValue // ignore: cast_nullable_to_non_nullable
              as double?,
      forecastValue: freezed == forecastValue
          ? _value.forecastValue
          : forecastValue // ignore: cast_nullable_to_non_nullable
              as double?,
      actualValue: freezed == actualValue
          ? _value.actualValue
          : actualValue // ignore: cast_nullable_to_non_nullable
              as double?,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      affectedAssets: null == affectedAssets
          ? _value.affectedAssets
          : affectedAssets // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isHighImpact: null == isHighImpact
          ? _value.isHighImpact
          : isHighImpact // ignore: cast_nullable_to_non_nullable
              as bool,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EconomicEventImplCopyWith<$Res>
    implements $EconomicEventCopyWith<$Res> {
  factory _$$EconomicEventImplCopyWith(
          _$EconomicEventImpl value, $Res Function(_$EconomicEventImpl) then) =
      __$$EconomicEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      DateTime date,
      String country,
      String currency,
      String impact,
      double? previousValue,
      double? forecastValue,
      double? actualValue,
      String unit,
      List<String> affectedAssets,
      bool isHighImpact,
      String source});
}

/// @nodoc
class __$$EconomicEventImplCopyWithImpl<$Res>
    extends _$EconomicEventCopyWithImpl<$Res, _$EconomicEventImpl>
    implements _$$EconomicEventImplCopyWith<$Res> {
  __$$EconomicEventImplCopyWithImpl(
      _$EconomicEventImpl _value, $Res Function(_$EconomicEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of EconomicEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? date = null,
    Object? country = null,
    Object? currency = null,
    Object? impact = null,
    Object? previousValue = freezed,
    Object? forecastValue = freezed,
    Object? actualValue = freezed,
    Object? unit = null,
    Object? affectedAssets = null,
    Object? isHighImpact = null,
    Object? source = null,
  }) {
    return _then(_$EconomicEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      impact: null == impact
          ? _value.impact
          : impact // ignore: cast_nullable_to_non_nullable
              as String,
      previousValue: freezed == previousValue
          ? _value.previousValue
          : previousValue // ignore: cast_nullable_to_non_nullable
              as double?,
      forecastValue: freezed == forecastValue
          ? _value.forecastValue
          : forecastValue // ignore: cast_nullable_to_non_nullable
              as double?,
      actualValue: freezed == actualValue
          ? _value.actualValue
          : actualValue // ignore: cast_nullable_to_non_nullable
              as double?,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      affectedAssets: null == affectedAssets
          ? _value._affectedAssets
          : affectedAssets // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isHighImpact: null == isHighImpact
          ? _value.isHighImpact
          : isHighImpact // ignore: cast_nullable_to_non_nullable
              as bool,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EconomicEventImpl implements _EconomicEvent {
  const _$EconomicEventImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.date,
      required this.country,
      required this.currency,
      required this.impact,
      required this.previousValue,
      required this.forecastValue,
      required this.actualValue,
      required this.unit,
      required final List<String> affectedAssets,
      required this.isHighImpact,
      required this.source})
      : _affectedAssets = affectedAssets;

  factory _$EconomicEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$EconomicEventImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime date;
  @override
  final String country;
  @override
  final String currency;
  @override
  final String impact;
  @override
  final double? previousValue;
  @override
  final double? forecastValue;
  @override
  final double? actualValue;
  @override
  final String unit;
  final List<String> _affectedAssets;
  @override
  List<String> get affectedAssets {
    if (_affectedAssets is EqualUnmodifiableListView) return _affectedAssets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_affectedAssets);
  }

  @override
  final bool isHighImpact;
  @override
  final String source;

  @override
  String toString() {
    return 'EconomicEvent(id: $id, title: $title, description: $description, date: $date, country: $country, currency: $currency, impact: $impact, previousValue: $previousValue, forecastValue: $forecastValue, actualValue: $actualValue, unit: $unit, affectedAssets: $affectedAssets, isHighImpact: $isHighImpact, source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EconomicEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.impact, impact) || other.impact == impact) &&
            (identical(other.previousValue, previousValue) ||
                other.previousValue == previousValue) &&
            (identical(other.forecastValue, forecastValue) ||
                other.forecastValue == forecastValue) &&
            (identical(other.actualValue, actualValue) ||
                other.actualValue == actualValue) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            const DeepCollectionEquality()
                .equals(other._affectedAssets, _affectedAssets) &&
            (identical(other.isHighImpact, isHighImpact) ||
                other.isHighImpact == isHighImpact) &&
            (identical(other.source, source) || other.source == source));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      date,
      country,
      currency,
      impact,
      previousValue,
      forecastValue,
      actualValue,
      unit,
      const DeepCollectionEquality().hash(_affectedAssets),
      isHighImpact,
      source);

  /// Create a copy of EconomicEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EconomicEventImplCopyWith<_$EconomicEventImpl> get copyWith =>
      __$$EconomicEventImplCopyWithImpl<_$EconomicEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EconomicEventImplToJson(
      this,
    );
  }
}

abstract class _EconomicEvent implements EconomicEvent {
  const factory _EconomicEvent(
      {required final String id,
      required final String title,
      required final String description,
      required final DateTime date,
      required final String country,
      required final String currency,
      required final String impact,
      required final double? previousValue,
      required final double? forecastValue,
      required final double? actualValue,
      required final String unit,
      required final List<String> affectedAssets,
      required final bool isHighImpact,
      required final String source}) = _$EconomicEventImpl;

  factory _EconomicEvent.fromJson(Map<String, dynamic> json) =
      _$EconomicEventImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  DateTime get date;
  @override
  String get country;
  @override
  String get currency;
  @override
  String get impact;
  @override
  double? get previousValue;
  @override
  double? get forecastValue;
  @override
  double? get actualValue;
  @override
  String get unit;
  @override
  List<String> get affectedAssets;
  @override
  bool get isHighImpact;
  @override
  String get source;

  /// Create a copy of EconomicEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EconomicEventImplCopyWith<_$EconomicEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EarningsCall _$EarningsCallFromJson(Map<String, dynamic> json) {
  return _EarningsCall.fromJson(json);
}

/// @nodoc
mixin _$EarningsCall {
  String get id => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String get companyName => throw _privateConstructorUsedError;
  DateTime get callDate => throw _privateConstructorUsedError;
  DateTime get earningsDate => throw _privateConstructorUsedError;
  String get quarter => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  double? get epsForecast => throw _privateConstructorUsedError;
  double? get revenueForecast => throw _privateConstructorUsedError;
  double? get epsActual => throw _privateConstructorUsedError;
  double? get revenueActual => throw _privateConstructorUsedError;
  String get callUrl => throw _privateConstructorUsedError;
  String get transcriptUrl => throw _privateConstructorUsedError;
  List<String> get keyTopics => throw _privateConstructorUsedError;
  Map<String, double> get sentimentScores => throw _privateConstructorUsedError;
  List<String> get participants => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Serializes this EarningsCall to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EarningsCall
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EarningsCallCopyWith<EarningsCall> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarningsCallCopyWith<$Res> {
  factory $EarningsCallCopyWith(
          EarningsCall value, $Res Function(EarningsCall) then) =
      _$EarningsCallCopyWithImpl<$Res, EarningsCall>;
  @useResult
  $Res call(
      {String id,
      String symbol,
      String companyName,
      DateTime callDate,
      DateTime earningsDate,
      String quarter,
      int year,
      double? epsForecast,
      double? revenueForecast,
      double? epsActual,
      double? revenueActual,
      String callUrl,
      String transcriptUrl,
      List<String> keyTopics,
      Map<String, double> sentimentScores,
      List<String> participants,
      bool isCompleted,
      String status});
}

/// @nodoc
class _$EarningsCallCopyWithImpl<$Res, $Val extends EarningsCall>
    implements $EarningsCallCopyWith<$Res> {
  _$EarningsCallCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EarningsCall
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? symbol = null,
    Object? companyName = null,
    Object? callDate = null,
    Object? earningsDate = null,
    Object? quarter = null,
    Object? year = null,
    Object? epsForecast = freezed,
    Object? revenueForecast = freezed,
    Object? epsActual = freezed,
    Object? revenueActual = freezed,
    Object? callUrl = null,
    Object? transcriptUrl = null,
    Object? keyTopics = null,
    Object? sentimentScores = null,
    Object? participants = null,
    Object? isCompleted = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      callDate: null == callDate
          ? _value.callDate
          : callDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      earningsDate: null == earningsDate
          ? _value.earningsDate
          : earningsDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      quarter: null == quarter
          ? _value.quarter
          : quarter // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      epsForecast: freezed == epsForecast
          ? _value.epsForecast
          : epsForecast // ignore: cast_nullable_to_non_nullable
              as double?,
      revenueForecast: freezed == revenueForecast
          ? _value.revenueForecast
          : revenueForecast // ignore: cast_nullable_to_non_nullable
              as double?,
      epsActual: freezed == epsActual
          ? _value.epsActual
          : epsActual // ignore: cast_nullable_to_non_nullable
              as double?,
      revenueActual: freezed == revenueActual
          ? _value.revenueActual
          : revenueActual // ignore: cast_nullable_to_non_nullable
              as double?,
      callUrl: null == callUrl
          ? _value.callUrl
          : callUrl // ignore: cast_nullable_to_non_nullable
              as String,
      transcriptUrl: null == transcriptUrl
          ? _value.transcriptUrl
          : transcriptUrl // ignore: cast_nullable_to_non_nullable
              as String,
      keyTopics: null == keyTopics
          ? _value.keyTopics
          : keyTopics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sentimentScores: null == sentimentScores
          ? _value.sentimentScores
          : sentimentScores // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EarningsCallImplCopyWith<$Res>
    implements $EarningsCallCopyWith<$Res> {
  factory _$$EarningsCallImplCopyWith(
          _$EarningsCallImpl value, $Res Function(_$EarningsCallImpl) then) =
      __$$EarningsCallImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String symbol,
      String companyName,
      DateTime callDate,
      DateTime earningsDate,
      String quarter,
      int year,
      double? epsForecast,
      double? revenueForecast,
      double? epsActual,
      double? revenueActual,
      String callUrl,
      String transcriptUrl,
      List<String> keyTopics,
      Map<String, double> sentimentScores,
      List<String> participants,
      bool isCompleted,
      String status});
}

/// @nodoc
class __$$EarningsCallImplCopyWithImpl<$Res>
    extends _$EarningsCallCopyWithImpl<$Res, _$EarningsCallImpl>
    implements _$$EarningsCallImplCopyWith<$Res> {
  __$$EarningsCallImplCopyWithImpl(
      _$EarningsCallImpl _value, $Res Function(_$EarningsCallImpl) _then)
      : super(_value, _then);

  /// Create a copy of EarningsCall
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? symbol = null,
    Object? companyName = null,
    Object? callDate = null,
    Object? earningsDate = null,
    Object? quarter = null,
    Object? year = null,
    Object? epsForecast = freezed,
    Object? revenueForecast = freezed,
    Object? epsActual = freezed,
    Object? revenueActual = freezed,
    Object? callUrl = null,
    Object? transcriptUrl = null,
    Object? keyTopics = null,
    Object? sentimentScores = null,
    Object? participants = null,
    Object? isCompleted = null,
    Object? status = null,
  }) {
    return _then(_$EarningsCallImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      callDate: null == callDate
          ? _value.callDate
          : callDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      earningsDate: null == earningsDate
          ? _value.earningsDate
          : earningsDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      quarter: null == quarter
          ? _value.quarter
          : quarter // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      epsForecast: freezed == epsForecast
          ? _value.epsForecast
          : epsForecast // ignore: cast_nullable_to_non_nullable
              as double?,
      revenueForecast: freezed == revenueForecast
          ? _value.revenueForecast
          : revenueForecast // ignore: cast_nullable_to_non_nullable
              as double?,
      epsActual: freezed == epsActual
          ? _value.epsActual
          : epsActual // ignore: cast_nullable_to_non_nullable
              as double?,
      revenueActual: freezed == revenueActual
          ? _value.revenueActual
          : revenueActual // ignore: cast_nullable_to_non_nullable
              as double?,
      callUrl: null == callUrl
          ? _value.callUrl
          : callUrl // ignore: cast_nullable_to_non_nullable
              as String,
      transcriptUrl: null == transcriptUrl
          ? _value.transcriptUrl
          : transcriptUrl // ignore: cast_nullable_to_non_nullable
              as String,
      keyTopics: null == keyTopics
          ? _value._keyTopics
          : keyTopics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sentimentScores: null == sentimentScores
          ? _value._sentimentScores
          : sentimentScores // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EarningsCallImpl implements _EarningsCall {
  const _$EarningsCallImpl(
      {required this.id,
      required this.symbol,
      required this.companyName,
      required this.callDate,
      required this.earningsDate,
      required this.quarter,
      required this.year,
      required this.epsForecast,
      required this.revenueForecast,
      required this.epsActual,
      required this.revenueActual,
      required this.callUrl,
      required this.transcriptUrl,
      required final List<String> keyTopics,
      required final Map<String, double> sentimentScores,
      required final List<String> participants,
      required this.isCompleted,
      required this.status})
      : _keyTopics = keyTopics,
        _sentimentScores = sentimentScores,
        _participants = participants;

  factory _$EarningsCallImpl.fromJson(Map<String, dynamic> json) =>
      _$$EarningsCallImplFromJson(json);

  @override
  final String id;
  @override
  final String symbol;
  @override
  final String companyName;
  @override
  final DateTime callDate;
  @override
  final DateTime earningsDate;
  @override
  final String quarter;
  @override
  final int year;
  @override
  final double? epsForecast;
  @override
  final double? revenueForecast;
  @override
  final double? epsActual;
  @override
  final double? revenueActual;
  @override
  final String callUrl;
  @override
  final String transcriptUrl;
  final List<String> _keyTopics;
  @override
  List<String> get keyTopics {
    if (_keyTopics is EqualUnmodifiableListView) return _keyTopics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keyTopics);
  }

  final Map<String, double> _sentimentScores;
  @override
  Map<String, double> get sentimentScores {
    if (_sentimentScores is EqualUnmodifiableMapView) return _sentimentScores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_sentimentScores);
  }

  final List<String> _participants;
  @override
  List<String> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  @override
  final bool isCompleted;
  @override
  final String status;

  @override
  String toString() {
    return 'EarningsCall(id: $id, symbol: $symbol, companyName: $companyName, callDate: $callDate, earningsDate: $earningsDate, quarter: $quarter, year: $year, epsForecast: $epsForecast, revenueForecast: $revenueForecast, epsActual: $epsActual, revenueActual: $revenueActual, callUrl: $callUrl, transcriptUrl: $transcriptUrl, keyTopics: $keyTopics, sentimentScores: $sentimentScores, participants: $participants, isCompleted: $isCompleted, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarningsCallImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.callDate, callDate) ||
                other.callDate == callDate) &&
            (identical(other.earningsDate, earningsDate) ||
                other.earningsDate == earningsDate) &&
            (identical(other.quarter, quarter) || other.quarter == quarter) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.epsForecast, epsForecast) ||
                other.epsForecast == epsForecast) &&
            (identical(other.revenueForecast, revenueForecast) ||
                other.revenueForecast == revenueForecast) &&
            (identical(other.epsActual, epsActual) ||
                other.epsActual == epsActual) &&
            (identical(other.revenueActual, revenueActual) ||
                other.revenueActual == revenueActual) &&
            (identical(other.callUrl, callUrl) || other.callUrl == callUrl) &&
            (identical(other.transcriptUrl, transcriptUrl) ||
                other.transcriptUrl == transcriptUrl) &&
            const DeepCollectionEquality()
                .equals(other._keyTopics, _keyTopics) &&
            const DeepCollectionEquality()
                .equals(other._sentimentScores, _sentimentScores) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      symbol,
      companyName,
      callDate,
      earningsDate,
      quarter,
      year,
      epsForecast,
      revenueForecast,
      epsActual,
      revenueActual,
      callUrl,
      transcriptUrl,
      const DeepCollectionEquality().hash(_keyTopics),
      const DeepCollectionEquality().hash(_sentimentScores),
      const DeepCollectionEquality().hash(_participants),
      isCompleted,
      status);

  /// Create a copy of EarningsCall
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EarningsCallImplCopyWith<_$EarningsCallImpl> get copyWith =>
      __$$EarningsCallImplCopyWithImpl<_$EarningsCallImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EarningsCallImplToJson(
      this,
    );
  }
}

abstract class _EarningsCall implements EarningsCall {
  const factory _EarningsCall(
      {required final String id,
      required final String symbol,
      required final String companyName,
      required final DateTime callDate,
      required final DateTime earningsDate,
      required final String quarter,
      required final int year,
      required final double? epsForecast,
      required final double? revenueForecast,
      required final double? epsActual,
      required final double? revenueActual,
      required final String callUrl,
      required final String transcriptUrl,
      required final List<String> keyTopics,
      required final Map<String, double> sentimentScores,
      required final List<String> participants,
      required final bool isCompleted,
      required final String status}) = _$EarningsCallImpl;

  factory _EarningsCall.fromJson(Map<String, dynamic> json) =
      _$EarningsCallImpl.fromJson;

  @override
  String get id;
  @override
  String get symbol;
  @override
  String get companyName;
  @override
  DateTime get callDate;
  @override
  DateTime get earningsDate;
  @override
  String get quarter;
  @override
  int get year;
  @override
  double? get epsForecast;
  @override
  double? get revenueForecast;
  @override
  double? get epsActual;
  @override
  double? get revenueActual;
  @override
  String get callUrl;
  @override
  String get transcriptUrl;
  @override
  List<String> get keyTopics;
  @override
  Map<String, double> get sentimentScores;
  @override
  List<String> get participants;
  @override
  bool get isCompleted;
  @override
  String get status;

  /// Create a copy of EarningsCall
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EarningsCallImplCopyWith<_$EarningsCallImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

KeyFigure _$KeyFigureFromJson(Map<String, dynamic> json) {
  return _KeyFigure.fromJson(json);
}

/// @nodoc
mixin _$KeyFigure {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get company => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  List<String> get recentActions => throw _privateConstructorUsedError;
  List<String> get holdings => throw _privateConstructorUsedError;
  double get netWorth => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  List<String> get relatedNews => throw _privateConstructorUsedError;

  /// Serializes this KeyFigure to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KeyFigure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KeyFigureCopyWith<KeyFigure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyFigureCopyWith<$Res> {
  factory $KeyFigureCopyWith(KeyFigure value, $Res Function(KeyFigure) then) =
      _$KeyFigureCopyWithImpl<$Res, KeyFigure>;
  @useResult
  $Res call(
      {String id,
      String name,
      String title,
      String company,
      String? photoUrl,
      List<String> recentActions,
      List<String> holdings,
      double netWorth,
      String source,
      DateTime lastUpdated,
      List<String> relatedNews});
}

/// @nodoc
class _$KeyFigureCopyWithImpl<$Res, $Val extends KeyFigure>
    implements $KeyFigureCopyWith<$Res> {
  _$KeyFigureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KeyFigure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? title = null,
    Object? company = null,
    Object? photoUrl = freezed,
    Object? recentActions = null,
    Object? holdings = null,
    Object? netWorth = null,
    Object? source = null,
    Object? lastUpdated = null,
    Object? relatedNews = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      recentActions: null == recentActions
          ? _value.recentActions
          : recentActions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      holdings: null == holdings
          ? _value.holdings
          : holdings // ignore: cast_nullable_to_non_nullable
              as List<String>,
      netWorth: null == netWorth
          ? _value.netWorth
          : netWorth // ignore: cast_nullable_to_non_nullable
              as double,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      relatedNews: null == relatedNews
          ? _value.relatedNews
          : relatedNews // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeyFigureImplCopyWith<$Res>
    implements $KeyFigureCopyWith<$Res> {
  factory _$$KeyFigureImplCopyWith(
          _$KeyFigureImpl value, $Res Function(_$KeyFigureImpl) then) =
      __$$KeyFigureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String title,
      String company,
      String? photoUrl,
      List<String> recentActions,
      List<String> holdings,
      double netWorth,
      String source,
      DateTime lastUpdated,
      List<String> relatedNews});
}

/// @nodoc
class __$$KeyFigureImplCopyWithImpl<$Res>
    extends _$KeyFigureCopyWithImpl<$Res, _$KeyFigureImpl>
    implements _$$KeyFigureImplCopyWith<$Res> {
  __$$KeyFigureImplCopyWithImpl(
      _$KeyFigureImpl _value, $Res Function(_$KeyFigureImpl) _then)
      : super(_value, _then);

  /// Create a copy of KeyFigure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? title = null,
    Object? company = null,
    Object? photoUrl = freezed,
    Object? recentActions = null,
    Object? holdings = null,
    Object? netWorth = null,
    Object? source = null,
    Object? lastUpdated = null,
    Object? relatedNews = null,
  }) {
    return _then(_$KeyFigureImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      recentActions: null == recentActions
          ? _value._recentActions
          : recentActions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      holdings: null == holdings
          ? _value._holdings
          : holdings // ignore: cast_nullable_to_non_nullable
              as List<String>,
      netWorth: null == netWorth
          ? _value.netWorth
          : netWorth // ignore: cast_nullable_to_non_nullable
              as double,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      relatedNews: null == relatedNews
          ? _value._relatedNews
          : relatedNews // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KeyFigureImpl implements _KeyFigure {
  const _$KeyFigureImpl(
      {required this.id,
      required this.name,
      required this.title,
      required this.company,
      required this.photoUrl,
      required final List<String> recentActions,
      required final List<String> holdings,
      required this.netWorth,
      required this.source,
      required this.lastUpdated,
      required final List<String> relatedNews})
      : _recentActions = recentActions,
        _holdings = holdings,
        _relatedNews = relatedNews;

  factory _$KeyFigureImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeyFigureImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String title;
  @override
  final String company;
  @override
  final String? photoUrl;
  final List<String> _recentActions;
  @override
  List<String> get recentActions {
    if (_recentActions is EqualUnmodifiableListView) return _recentActions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentActions);
  }

  final List<String> _holdings;
  @override
  List<String> get holdings {
    if (_holdings is EqualUnmodifiableListView) return _holdings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_holdings);
  }

  @override
  final double netWorth;
  @override
  final String source;
  @override
  final DateTime lastUpdated;
  final List<String> _relatedNews;
  @override
  List<String> get relatedNews {
    if (_relatedNews is EqualUnmodifiableListView) return _relatedNews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relatedNews);
  }

  @override
  String toString() {
    return 'KeyFigure(id: $id, name: $name, title: $title, company: $company, photoUrl: $photoUrl, recentActions: $recentActions, holdings: $holdings, netWorth: $netWorth, source: $source, lastUpdated: $lastUpdated, relatedNews: $relatedNews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeyFigureImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            const DeepCollectionEquality()
                .equals(other._recentActions, _recentActions) &&
            const DeepCollectionEquality().equals(other._holdings, _holdings) &&
            (identical(other.netWorth, netWorth) ||
                other.netWorth == netWorth) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            const DeepCollectionEquality()
                .equals(other._relatedNews, _relatedNews));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      title,
      company,
      photoUrl,
      const DeepCollectionEquality().hash(_recentActions),
      const DeepCollectionEquality().hash(_holdings),
      netWorth,
      source,
      lastUpdated,
      const DeepCollectionEquality().hash(_relatedNews));

  /// Create a copy of KeyFigure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KeyFigureImplCopyWith<_$KeyFigureImpl> get copyWith =>
      __$$KeyFigureImplCopyWithImpl<_$KeyFigureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeyFigureImplToJson(
      this,
    );
  }
}

abstract class _KeyFigure implements KeyFigure {
  const factory _KeyFigure(
      {required final String id,
      required final String name,
      required final String title,
      required final String company,
      required final String? photoUrl,
      required final List<String> recentActions,
      required final List<String> holdings,
      required final double netWorth,
      required final String source,
      required final DateTime lastUpdated,
      required final List<String> relatedNews}) = _$KeyFigureImpl;

  factory _KeyFigure.fromJson(Map<String, dynamic> json) =
      _$KeyFigureImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get title;
  @override
  String get company;
  @override
  String? get photoUrl;
  @override
  List<String> get recentActions;
  @override
  List<String> get holdings;
  @override
  double get netWorth;
  @override
  String get source;
  @override
  DateTime get lastUpdated;
  @override
  List<String> get relatedNews;

  /// Create a copy of KeyFigure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KeyFigureImplCopyWith<_$KeyFigureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MarketSentiment _$MarketSentimentFromJson(Map<String, dynamic> json) {
  return _MarketSentiment.fromJson(json);
}

/// @nodoc
mixin _$MarketSentiment {
  String get id => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  double get overallSentiment => throw _privateConstructorUsedError;
  Map<String, double> get sectorSentiment => throw _privateConstructorUsedError;
  Map<String, double> get assetClassSentiment =>
      throw _privateConstructorUsedError;
  List<String> get topPositiveTopics => throw _privateConstructorUsedError;
  List<String> get topNegativeTopics => throw _privateConstructorUsedError;
  double get fearGreedIndex => throw _privateConstructorUsedError;
  double get volatilityIndex => throw _privateConstructorUsedError;
  List<String> get trendingTopics => throw _privateConstructorUsedError;

  /// Serializes this MarketSentiment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MarketSentiment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MarketSentimentCopyWith<MarketSentiment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketSentimentCopyWith<$Res> {
  factory $MarketSentimentCopyWith(
          MarketSentiment value, $Res Function(MarketSentiment) then) =
      _$MarketSentimentCopyWithImpl<$Res, MarketSentiment>;
  @useResult
  $Res call(
      {String id,
      DateTime date,
      double overallSentiment,
      Map<String, double> sectorSentiment,
      Map<String, double> assetClassSentiment,
      List<String> topPositiveTopics,
      List<String> topNegativeTopics,
      double fearGreedIndex,
      double volatilityIndex,
      List<String> trendingTopics});
}

/// @nodoc
class _$MarketSentimentCopyWithImpl<$Res, $Val extends MarketSentiment>
    implements $MarketSentimentCopyWith<$Res> {
  _$MarketSentimentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarketSentiment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? overallSentiment = null,
    Object? sectorSentiment = null,
    Object? assetClassSentiment = null,
    Object? topPositiveTopics = null,
    Object? topNegativeTopics = null,
    Object? fearGreedIndex = null,
    Object? volatilityIndex = null,
    Object? trendingTopics = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      overallSentiment: null == overallSentiment
          ? _value.overallSentiment
          : overallSentiment // ignore: cast_nullable_to_non_nullable
              as double,
      sectorSentiment: null == sectorSentiment
          ? _value.sectorSentiment
          : sectorSentiment // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      assetClassSentiment: null == assetClassSentiment
          ? _value.assetClassSentiment
          : assetClassSentiment // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      topPositiveTopics: null == topPositiveTopics
          ? _value.topPositiveTopics
          : topPositiveTopics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      topNegativeTopics: null == topNegativeTopics
          ? _value.topNegativeTopics
          : topNegativeTopics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      fearGreedIndex: null == fearGreedIndex
          ? _value.fearGreedIndex
          : fearGreedIndex // ignore: cast_nullable_to_non_nullable
              as double,
      volatilityIndex: null == volatilityIndex
          ? _value.volatilityIndex
          : volatilityIndex // ignore: cast_nullable_to_non_nullable
              as double,
      trendingTopics: null == trendingTopics
          ? _value.trendingTopics
          : trendingTopics // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarketSentimentImplCopyWith<$Res>
    implements $MarketSentimentCopyWith<$Res> {
  factory _$$MarketSentimentImplCopyWith(_$MarketSentimentImpl value,
          $Res Function(_$MarketSentimentImpl) then) =
      __$$MarketSentimentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime date,
      double overallSentiment,
      Map<String, double> sectorSentiment,
      Map<String, double> assetClassSentiment,
      List<String> topPositiveTopics,
      List<String> topNegativeTopics,
      double fearGreedIndex,
      double volatilityIndex,
      List<String> trendingTopics});
}

/// @nodoc
class __$$MarketSentimentImplCopyWithImpl<$Res>
    extends _$MarketSentimentCopyWithImpl<$Res, _$MarketSentimentImpl>
    implements _$$MarketSentimentImplCopyWith<$Res> {
  __$$MarketSentimentImplCopyWithImpl(
      _$MarketSentimentImpl _value, $Res Function(_$MarketSentimentImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarketSentiment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? overallSentiment = null,
    Object? sectorSentiment = null,
    Object? assetClassSentiment = null,
    Object? topPositiveTopics = null,
    Object? topNegativeTopics = null,
    Object? fearGreedIndex = null,
    Object? volatilityIndex = null,
    Object? trendingTopics = null,
  }) {
    return _then(_$MarketSentimentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      overallSentiment: null == overallSentiment
          ? _value.overallSentiment
          : overallSentiment // ignore: cast_nullable_to_non_nullable
              as double,
      sectorSentiment: null == sectorSentiment
          ? _value._sectorSentiment
          : sectorSentiment // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      assetClassSentiment: null == assetClassSentiment
          ? _value._assetClassSentiment
          : assetClassSentiment // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      topPositiveTopics: null == topPositiveTopics
          ? _value._topPositiveTopics
          : topPositiveTopics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      topNegativeTopics: null == topNegativeTopics
          ? _value._topNegativeTopics
          : topNegativeTopics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      fearGreedIndex: null == fearGreedIndex
          ? _value.fearGreedIndex
          : fearGreedIndex // ignore: cast_nullable_to_non_nullable
              as double,
      volatilityIndex: null == volatilityIndex
          ? _value.volatilityIndex
          : volatilityIndex // ignore: cast_nullable_to_non_nullable
              as double,
      trendingTopics: null == trendingTopics
          ? _value._trendingTopics
          : trendingTopics // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketSentimentImpl implements _MarketSentiment {
  const _$MarketSentimentImpl(
      {required this.id,
      required this.date,
      required this.overallSentiment,
      required final Map<String, double> sectorSentiment,
      required final Map<String, double> assetClassSentiment,
      required final List<String> topPositiveTopics,
      required final List<String> topNegativeTopics,
      required this.fearGreedIndex,
      required this.volatilityIndex,
      required final List<String> trendingTopics})
      : _sectorSentiment = sectorSentiment,
        _assetClassSentiment = assetClassSentiment,
        _topPositiveTopics = topPositiveTopics,
        _topNegativeTopics = topNegativeTopics,
        _trendingTopics = trendingTopics;

  factory _$MarketSentimentImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketSentimentImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime date;
  @override
  final double overallSentiment;
  final Map<String, double> _sectorSentiment;
  @override
  Map<String, double> get sectorSentiment {
    if (_sectorSentiment is EqualUnmodifiableMapView) return _sectorSentiment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_sectorSentiment);
  }

  final Map<String, double> _assetClassSentiment;
  @override
  Map<String, double> get assetClassSentiment {
    if (_assetClassSentiment is EqualUnmodifiableMapView)
      return _assetClassSentiment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_assetClassSentiment);
  }

  final List<String> _topPositiveTopics;
  @override
  List<String> get topPositiveTopics {
    if (_topPositiveTopics is EqualUnmodifiableListView)
      return _topPositiveTopics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topPositiveTopics);
  }

  final List<String> _topNegativeTopics;
  @override
  List<String> get topNegativeTopics {
    if (_topNegativeTopics is EqualUnmodifiableListView)
      return _topNegativeTopics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topNegativeTopics);
  }

  @override
  final double fearGreedIndex;
  @override
  final double volatilityIndex;
  final List<String> _trendingTopics;
  @override
  List<String> get trendingTopics {
    if (_trendingTopics is EqualUnmodifiableListView) return _trendingTopics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendingTopics);
  }

  @override
  String toString() {
    return 'MarketSentiment(id: $id, date: $date, overallSentiment: $overallSentiment, sectorSentiment: $sectorSentiment, assetClassSentiment: $assetClassSentiment, topPositiveTopics: $topPositiveTopics, topNegativeTopics: $topNegativeTopics, fearGreedIndex: $fearGreedIndex, volatilityIndex: $volatilityIndex, trendingTopics: $trendingTopics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketSentimentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.overallSentiment, overallSentiment) ||
                other.overallSentiment == overallSentiment) &&
            const DeepCollectionEquality()
                .equals(other._sectorSentiment, _sectorSentiment) &&
            const DeepCollectionEquality()
                .equals(other._assetClassSentiment, _assetClassSentiment) &&
            const DeepCollectionEquality()
                .equals(other._topPositiveTopics, _topPositiveTopics) &&
            const DeepCollectionEquality()
                .equals(other._topNegativeTopics, _topNegativeTopics) &&
            (identical(other.fearGreedIndex, fearGreedIndex) ||
                other.fearGreedIndex == fearGreedIndex) &&
            (identical(other.volatilityIndex, volatilityIndex) ||
                other.volatilityIndex == volatilityIndex) &&
            const DeepCollectionEquality()
                .equals(other._trendingTopics, _trendingTopics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      date,
      overallSentiment,
      const DeepCollectionEquality().hash(_sectorSentiment),
      const DeepCollectionEquality().hash(_assetClassSentiment),
      const DeepCollectionEquality().hash(_topPositiveTopics),
      const DeepCollectionEquality().hash(_topNegativeTopics),
      fearGreedIndex,
      volatilityIndex,
      const DeepCollectionEquality().hash(_trendingTopics));

  /// Create a copy of MarketSentiment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketSentimentImplCopyWith<_$MarketSentimentImpl> get copyWith =>
      __$$MarketSentimentImplCopyWithImpl<_$MarketSentimentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketSentimentImplToJson(
      this,
    );
  }
}

abstract class _MarketSentiment implements MarketSentiment {
  const factory _MarketSentiment(
      {required final String id,
      required final DateTime date,
      required final double overallSentiment,
      required final Map<String, double> sectorSentiment,
      required final Map<String, double> assetClassSentiment,
      required final List<String> topPositiveTopics,
      required final List<String> topNegativeTopics,
      required final double fearGreedIndex,
      required final double volatilityIndex,
      required final List<String> trendingTopics}) = _$MarketSentimentImpl;

  factory _MarketSentiment.fromJson(Map<String, dynamic> json) =
      _$MarketSentimentImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get date;
  @override
  double get overallSentiment;
  @override
  Map<String, double> get sectorSentiment;
  @override
  Map<String, double> get assetClassSentiment;
  @override
  List<String> get topPositiveTopics;
  @override
  List<String> get topNegativeTopics;
  @override
  double get fearGreedIndex;
  @override
  double get volatilityIndex;
  @override
  List<String> get trendingTopics;

  /// Create a copy of MarketSentiment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarketSentimentImplCopyWith<_$MarketSentimentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TrendingTopic _$TrendingTopicFromJson(Map<String, dynamic> json) {
  return _TrendingTopic.fromJson(json);
}

/// @nodoc
mixin _$TrendingTopic {
  String get id => throw _privateConstructorUsedError;
  String get topic => throw _privateConstructorUsedError;
  double get volume => throw _privateConstructorUsedError;
  double get volumeChange => throw _privateConstructorUsedError;
  double get sentiment => throw _privateConstructorUsedError;
  double get sentimentChange => throw _privateConstructorUsedError;
  List<String> get relatedSymbols => throw _privateConstructorUsedError;
  List<String> get topArticles => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;

  /// Serializes this TrendingTopic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrendingTopic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrendingTopicCopyWith<TrendingTopic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingTopicCopyWith<$Res> {
  factory $TrendingTopicCopyWith(
          TrendingTopic value, $Res Function(TrendingTopic) then) =
      _$TrendingTopicCopyWithImpl<$Res, TrendingTopic>;
  @useResult
  $Res call(
      {String id,
      String topic,
      double volume,
      double volumeChange,
      double sentiment,
      double sentimentChange,
      List<String> relatedSymbols,
      List<String> topArticles,
      DateTime startDate,
      DateTime endDate});
}

/// @nodoc
class _$TrendingTopicCopyWithImpl<$Res, $Val extends TrendingTopic>
    implements $TrendingTopicCopyWith<$Res> {
  _$TrendingTopicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrendingTopic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? topic = null,
    Object? volume = null,
    Object? volumeChange = null,
    Object? sentiment = null,
    Object? sentimentChange = null,
    Object? relatedSymbols = null,
    Object? topArticles = null,
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      volumeChange: null == volumeChange
          ? _value.volumeChange
          : volumeChange // ignore: cast_nullable_to_non_nullable
              as double,
      sentiment: null == sentiment
          ? _value.sentiment
          : sentiment // ignore: cast_nullable_to_non_nullable
              as double,
      sentimentChange: null == sentimentChange
          ? _value.sentimentChange
          : sentimentChange // ignore: cast_nullable_to_non_nullable
              as double,
      relatedSymbols: null == relatedSymbols
          ? _value.relatedSymbols
          : relatedSymbols // ignore: cast_nullable_to_non_nullable
              as List<String>,
      topArticles: null == topArticles
          ? _value.topArticles
          : topArticles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrendingTopicImplCopyWith<$Res>
    implements $TrendingTopicCopyWith<$Res> {
  factory _$$TrendingTopicImplCopyWith(
          _$TrendingTopicImpl value, $Res Function(_$TrendingTopicImpl) then) =
      __$$TrendingTopicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String topic,
      double volume,
      double volumeChange,
      double sentiment,
      double sentimentChange,
      List<String> relatedSymbols,
      List<String> topArticles,
      DateTime startDate,
      DateTime endDate});
}

/// @nodoc
class __$$TrendingTopicImplCopyWithImpl<$Res>
    extends _$TrendingTopicCopyWithImpl<$Res, _$TrendingTopicImpl>
    implements _$$TrendingTopicImplCopyWith<$Res> {
  __$$TrendingTopicImplCopyWithImpl(
      _$TrendingTopicImpl _value, $Res Function(_$TrendingTopicImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrendingTopic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? topic = null,
    Object? volume = null,
    Object? volumeChange = null,
    Object? sentiment = null,
    Object? sentimentChange = null,
    Object? relatedSymbols = null,
    Object? topArticles = null,
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_$TrendingTopicImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      volumeChange: null == volumeChange
          ? _value.volumeChange
          : volumeChange // ignore: cast_nullable_to_non_nullable
              as double,
      sentiment: null == sentiment
          ? _value.sentiment
          : sentiment // ignore: cast_nullable_to_non_nullable
              as double,
      sentimentChange: null == sentimentChange
          ? _value.sentimentChange
          : sentimentChange // ignore: cast_nullable_to_non_nullable
              as double,
      relatedSymbols: null == relatedSymbols
          ? _value._relatedSymbols
          : relatedSymbols // ignore: cast_nullable_to_non_nullable
              as List<String>,
      topArticles: null == topArticles
          ? _value._topArticles
          : topArticles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrendingTopicImpl implements _TrendingTopic {
  const _$TrendingTopicImpl(
      {required this.id,
      required this.topic,
      required this.volume,
      required this.volumeChange,
      required this.sentiment,
      required this.sentimentChange,
      required final List<String> relatedSymbols,
      required final List<String> topArticles,
      required this.startDate,
      required this.endDate})
      : _relatedSymbols = relatedSymbols,
        _topArticles = topArticles;

  factory _$TrendingTopicImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrendingTopicImplFromJson(json);

  @override
  final String id;
  @override
  final String topic;
  @override
  final double volume;
  @override
  final double volumeChange;
  @override
  final double sentiment;
  @override
  final double sentimentChange;
  final List<String> _relatedSymbols;
  @override
  List<String> get relatedSymbols {
    if (_relatedSymbols is EqualUnmodifiableListView) return _relatedSymbols;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relatedSymbols);
  }

  final List<String> _topArticles;
  @override
  List<String> get topArticles {
    if (_topArticles is EqualUnmodifiableListView) return _topArticles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topArticles);
  }

  @override
  final DateTime startDate;
  @override
  final DateTime endDate;

  @override
  String toString() {
    return 'TrendingTopic(id: $id, topic: $topic, volume: $volume, volumeChange: $volumeChange, sentiment: $sentiment, sentimentChange: $sentimentChange, relatedSymbols: $relatedSymbols, topArticles: $topArticles, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrendingTopicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.volumeChange, volumeChange) ||
                other.volumeChange == volumeChange) &&
            (identical(other.sentiment, sentiment) ||
                other.sentiment == sentiment) &&
            (identical(other.sentimentChange, sentimentChange) ||
                other.sentimentChange == sentimentChange) &&
            const DeepCollectionEquality()
                .equals(other._relatedSymbols, _relatedSymbols) &&
            const DeepCollectionEquality()
                .equals(other._topArticles, _topArticles) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      topic,
      volume,
      volumeChange,
      sentiment,
      sentimentChange,
      const DeepCollectionEquality().hash(_relatedSymbols),
      const DeepCollectionEquality().hash(_topArticles),
      startDate,
      endDate);

  /// Create a copy of TrendingTopic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrendingTopicImplCopyWith<_$TrendingTopicImpl> get copyWith =>
      __$$TrendingTopicImplCopyWithImpl<_$TrendingTopicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrendingTopicImplToJson(
      this,
    );
  }
}

abstract class _TrendingTopic implements TrendingTopic {
  const factory _TrendingTopic(
      {required final String id,
      required final String topic,
      required final double volume,
      required final double volumeChange,
      required final double sentiment,
      required final double sentimentChange,
      required final List<String> relatedSymbols,
      required final List<String> topArticles,
      required final DateTime startDate,
      required final DateTime endDate}) = _$TrendingTopicImpl;

  factory _TrendingTopic.fromJson(Map<String, dynamic> json) =
      _$TrendingTopicImpl.fromJson;

  @override
  String get id;
  @override
  String get topic;
  @override
  double get volume;
  @override
  double get volumeChange;
  @override
  double get sentiment;
  @override
  double get sentimentChange;
  @override
  List<String> get relatedSymbols;
  @override
  List<String> get topArticles;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;

  /// Create a copy of TrendingTopic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrendingTopicImplCopyWith<_$TrendingTopicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SentimentRequest _$SentimentRequestFromJson(Map<String, dynamic> json) {
  return _SentimentRequest.fromJson(json);
}

/// @nodoc
mixin _$SentimentRequest {
  String get text => throw _privateConstructorUsedError;
  String get context => throw _privateConstructorUsedError;

  /// Serializes this SentimentRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SentimentRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SentimentRequestCopyWith<SentimentRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SentimentRequestCopyWith<$Res> {
  factory $SentimentRequestCopyWith(
          SentimentRequest value, $Res Function(SentimentRequest) then) =
      _$SentimentRequestCopyWithImpl<$Res, SentimentRequest>;
  @useResult
  $Res call({String text, String context});
}

/// @nodoc
class _$SentimentRequestCopyWithImpl<$Res, $Val extends SentimentRequest>
    implements $SentimentRequestCopyWith<$Res> {
  _$SentimentRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SentimentRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? context = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SentimentRequestImplCopyWith<$Res>
    implements $SentimentRequestCopyWith<$Res> {
  factory _$$SentimentRequestImplCopyWith(_$SentimentRequestImpl value,
          $Res Function(_$SentimentRequestImpl) then) =
      __$$SentimentRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String context});
}

/// @nodoc
class __$$SentimentRequestImplCopyWithImpl<$Res>
    extends _$SentimentRequestCopyWithImpl<$Res, _$SentimentRequestImpl>
    implements _$$SentimentRequestImplCopyWith<$Res> {
  __$$SentimentRequestImplCopyWithImpl(_$SentimentRequestImpl _value,
      $Res Function(_$SentimentRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of SentimentRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? context = null,
  }) {
    return _then(_$SentimentRequestImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SentimentRequestImpl implements _SentimentRequest {
  const _$SentimentRequestImpl({required this.text, required this.context});

  factory _$SentimentRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SentimentRequestImplFromJson(json);

  @override
  final String text;
  @override
  final String context;

  @override
  String toString() {
    return 'SentimentRequest(text: $text, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SentimentRequestImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.context, context) || other.context == context));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, context);

  /// Create a copy of SentimentRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SentimentRequestImplCopyWith<_$SentimentRequestImpl> get copyWith =>
      __$$SentimentRequestImplCopyWithImpl<_$SentimentRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SentimentRequestImplToJson(
      this,
    );
  }
}

abstract class _SentimentRequest implements SentimentRequest {
  const factory _SentimentRequest(
      {required final String text,
      required final String context}) = _$SentimentRequestImpl;

  factory _SentimentRequest.fromJson(Map<String, dynamic> json) =
      _$SentimentRequestImpl.fromJson;

  @override
  String get text;
  @override
  String get context;

  /// Create a copy of SentimentRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SentimentRequestImplCopyWith<_$SentimentRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SentimentAnalysis _$SentimentAnalysisFromJson(Map<String, dynamic> json) {
  return _SentimentAnalysis.fromJson(json);
}

/// @nodoc
mixin _$SentimentAnalysis {
  Sentiment get sentiment => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;
  Map<String, double> get aspects => throw _privateConstructorUsedError;

  /// Serializes this SentimentAnalysis to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SentimentAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SentimentAnalysisCopyWith<SentimentAnalysis> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SentimentAnalysisCopyWith<$Res> {
  factory $SentimentAnalysisCopyWith(
          SentimentAnalysis value, $Res Function(SentimentAnalysis) then) =
      _$SentimentAnalysisCopyWithImpl<$Res, SentimentAnalysis>;
  @useResult
  $Res call(
      {Sentiment sentiment,
      double score,
      double confidence,
      Map<String, double> aspects});
}

/// @nodoc
class _$SentimentAnalysisCopyWithImpl<$Res, $Val extends SentimentAnalysis>
    implements $SentimentAnalysisCopyWith<$Res> {
  _$SentimentAnalysisCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SentimentAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sentiment = null,
    Object? score = null,
    Object? confidence = null,
    Object? aspects = null,
  }) {
    return _then(_value.copyWith(
      sentiment: null == sentiment
          ? _value.sentiment
          : sentiment // ignore: cast_nullable_to_non_nullable
              as Sentiment,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      aspects: null == aspects
          ? _value.aspects
          : aspects // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SentimentAnalysisImplCopyWith<$Res>
    implements $SentimentAnalysisCopyWith<$Res> {
  factory _$$SentimentAnalysisImplCopyWith(_$SentimentAnalysisImpl value,
          $Res Function(_$SentimentAnalysisImpl) then) =
      __$$SentimentAnalysisImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Sentiment sentiment,
      double score,
      double confidence,
      Map<String, double> aspects});
}

/// @nodoc
class __$$SentimentAnalysisImplCopyWithImpl<$Res>
    extends _$SentimentAnalysisCopyWithImpl<$Res, _$SentimentAnalysisImpl>
    implements _$$SentimentAnalysisImplCopyWith<$Res> {
  __$$SentimentAnalysisImplCopyWithImpl(_$SentimentAnalysisImpl _value,
      $Res Function(_$SentimentAnalysisImpl) _then)
      : super(_value, _then);

  /// Create a copy of SentimentAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sentiment = null,
    Object? score = null,
    Object? confidence = null,
    Object? aspects = null,
  }) {
    return _then(_$SentimentAnalysisImpl(
      sentiment: null == sentiment
          ? _value.sentiment
          : sentiment // ignore: cast_nullable_to_non_nullable
              as Sentiment,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      aspects: null == aspects
          ? _value._aspects
          : aspects // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SentimentAnalysisImpl implements _SentimentAnalysis {
  const _$SentimentAnalysisImpl(
      {required this.sentiment,
      required this.score,
      required this.confidence,
      required final Map<String, double> aspects})
      : _aspects = aspects;

  factory _$SentimentAnalysisImpl.fromJson(Map<String, dynamic> json) =>
      _$$SentimentAnalysisImplFromJson(json);

  @override
  final Sentiment sentiment;
  @override
  final double score;
  @override
  final double confidence;
  final Map<String, double> _aspects;
  @override
  Map<String, double> get aspects {
    if (_aspects is EqualUnmodifiableMapView) return _aspects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_aspects);
  }

  @override
  String toString() {
    return 'SentimentAnalysis(sentiment: $sentiment, score: $score, confidence: $confidence, aspects: $aspects)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SentimentAnalysisImpl &&
            (identical(other.sentiment, sentiment) ||
                other.sentiment == sentiment) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            const DeepCollectionEquality().equals(other._aspects, _aspects));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sentiment, score, confidence,
      const DeepCollectionEquality().hash(_aspects));

  /// Create a copy of SentimentAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SentimentAnalysisImplCopyWith<_$SentimentAnalysisImpl> get copyWith =>
      __$$SentimentAnalysisImplCopyWithImpl<_$SentimentAnalysisImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SentimentAnalysisImplToJson(
      this,
    );
  }
}

abstract class _SentimentAnalysis implements SentimentAnalysis {
  const factory _SentimentAnalysis(
      {required final Sentiment sentiment,
      required final double score,
      required final double confidence,
      required final Map<String, double> aspects}) = _$SentimentAnalysisImpl;

  factory _SentimentAnalysis.fromJson(Map<String, dynamic> json) =
      _$SentimentAnalysisImpl.fromJson;

  @override
  Sentiment get sentiment;
  @override
  double get score;
  @override
  double get confidence;
  @override
  Map<String, double> get aspects;

  /// Create a copy of SentimentAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SentimentAnalysisImplCopyWith<_$SentimentAnalysisImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StanceRequest _$StanceRequestFromJson(Map<String, dynamic> json) {
  return _StanceRequest.fromJson(json);
}

/// @nodoc
mixin _$StanceRequest {
  String get text => throw _privateConstructorUsedError;
  String get topic => throw _privateConstructorUsedError;
  String get context => throw _privateConstructorUsedError;

  /// Serializes this StanceRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StanceRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StanceRequestCopyWith<StanceRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StanceRequestCopyWith<$Res> {
  factory $StanceRequestCopyWith(
          StanceRequest value, $Res Function(StanceRequest) then) =
      _$StanceRequestCopyWithImpl<$Res, StanceRequest>;
  @useResult
  $Res call({String text, String topic, String context});
}

/// @nodoc
class _$StanceRequestCopyWithImpl<$Res, $Val extends StanceRequest>
    implements $StanceRequestCopyWith<$Res> {
  _$StanceRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StanceRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? topic = null,
    Object? context = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StanceRequestImplCopyWith<$Res>
    implements $StanceRequestCopyWith<$Res> {
  factory _$$StanceRequestImplCopyWith(
          _$StanceRequestImpl value, $Res Function(_$StanceRequestImpl) then) =
      __$$StanceRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String topic, String context});
}

/// @nodoc
class __$$StanceRequestImplCopyWithImpl<$Res>
    extends _$StanceRequestCopyWithImpl<$Res, _$StanceRequestImpl>
    implements _$$StanceRequestImplCopyWith<$Res> {
  __$$StanceRequestImplCopyWithImpl(
      _$StanceRequestImpl _value, $Res Function(_$StanceRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of StanceRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? topic = null,
    Object? context = null,
  }) {
    return _then(_$StanceRequestImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StanceRequestImpl implements _StanceRequest {
  const _$StanceRequestImpl(
      {required this.text, required this.topic, required this.context});

  factory _$StanceRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$StanceRequestImplFromJson(json);

  @override
  final String text;
  @override
  final String topic;
  @override
  final String context;

  @override
  String toString() {
    return 'StanceRequest(text: $text, topic: $topic, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StanceRequestImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.context, context) || other.context == context));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, topic, context);

  /// Create a copy of StanceRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StanceRequestImplCopyWith<_$StanceRequestImpl> get copyWith =>
      __$$StanceRequestImplCopyWithImpl<_$StanceRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StanceRequestImplToJson(
      this,
    );
  }
}

abstract class _StanceRequest implements StanceRequest {
  const factory _StanceRequest(
      {required final String text,
      required final String topic,
      required final String context}) = _$StanceRequestImpl;

  factory _StanceRequest.fromJson(Map<String, dynamic> json) =
      _$StanceRequestImpl.fromJson;

  @override
  String get text;
  @override
  String get topic;
  @override
  String get context;

  /// Create a copy of StanceRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StanceRequestImplCopyWith<_$StanceRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StanceDetection _$StanceDetectionFromJson(Map<String, dynamic> json) {
  return _StanceDetection.fromJson(json);
}

/// @nodoc
mixin _$StanceDetection {
  Stance get stance => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;
  String get reasoning => throw _privateConstructorUsedError;

  /// Serializes this StanceDetection to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StanceDetection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StanceDetectionCopyWith<StanceDetection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StanceDetectionCopyWith<$Res> {
  factory $StanceDetectionCopyWith(
          StanceDetection value, $Res Function(StanceDetection) then) =
      _$StanceDetectionCopyWithImpl<$Res, StanceDetection>;
  @useResult
  $Res call({Stance stance, double confidence, String reasoning});
}

/// @nodoc
class _$StanceDetectionCopyWithImpl<$Res, $Val extends StanceDetection>
    implements $StanceDetectionCopyWith<$Res> {
  _$StanceDetectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StanceDetection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stance = null,
    Object? confidence = null,
    Object? reasoning = null,
  }) {
    return _then(_value.copyWith(
      stance: null == stance
          ? _value.stance
          : stance // ignore: cast_nullable_to_non_nullable
              as Stance,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      reasoning: null == reasoning
          ? _value.reasoning
          : reasoning // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StanceDetectionImplCopyWith<$Res>
    implements $StanceDetectionCopyWith<$Res> {
  factory _$$StanceDetectionImplCopyWith(_$StanceDetectionImpl value,
          $Res Function(_$StanceDetectionImpl) then) =
      __$$StanceDetectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Stance stance, double confidence, String reasoning});
}

/// @nodoc
class __$$StanceDetectionImplCopyWithImpl<$Res>
    extends _$StanceDetectionCopyWithImpl<$Res, _$StanceDetectionImpl>
    implements _$$StanceDetectionImplCopyWith<$Res> {
  __$$StanceDetectionImplCopyWithImpl(
      _$StanceDetectionImpl _value, $Res Function(_$StanceDetectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of StanceDetection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stance = null,
    Object? confidence = null,
    Object? reasoning = null,
  }) {
    return _then(_$StanceDetectionImpl(
      stance: null == stance
          ? _value.stance
          : stance // ignore: cast_nullable_to_non_nullable
              as Stance,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      reasoning: null == reasoning
          ? _value.reasoning
          : reasoning // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StanceDetectionImpl implements _StanceDetection {
  const _$StanceDetectionImpl(
      {required this.stance,
      required this.confidence,
      required this.reasoning});

  factory _$StanceDetectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$StanceDetectionImplFromJson(json);

  @override
  final Stance stance;
  @override
  final double confidence;
  @override
  final String reasoning;

  @override
  String toString() {
    return 'StanceDetection(stance: $stance, confidence: $confidence, reasoning: $reasoning)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StanceDetectionImpl &&
            (identical(other.stance, stance) || other.stance == stance) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            (identical(other.reasoning, reasoning) ||
                other.reasoning == reasoning));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, stance, confidence, reasoning);

  /// Create a copy of StanceDetection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StanceDetectionImplCopyWith<_$StanceDetectionImpl> get copyWith =>
      __$$StanceDetectionImplCopyWithImpl<_$StanceDetectionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StanceDetectionImplToJson(
      this,
    );
  }
}

abstract class _StanceDetection implements StanceDetection {
  const factory _StanceDetection(
      {required final Stance stance,
      required final double confidence,
      required final String reasoning}) = _$StanceDetectionImpl;

  factory _StanceDetection.fromJson(Map<String, dynamic> json) =
      _$StanceDetectionImpl.fromJson;

  @override
  Stance get stance;
  @override
  double get confidence;
  @override
  String get reasoning;

  /// Create a copy of StanceDetection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StanceDetectionImplCopyWith<_$StanceDetectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SummaryRequest _$SummaryRequestFromJson(Map<String, dynamic> json) {
  return _SummaryRequest.fromJson(json);
}

/// @nodoc
mixin _$SummaryRequest {
  String get content => throw _privateConstructorUsedError;
  int get maxLength => throw _privateConstructorUsedError;
  bool get includeKeyPoints => throw _privateConstructorUsedError;

  /// Serializes this SummaryRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SummaryRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SummaryRequestCopyWith<SummaryRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummaryRequestCopyWith<$Res> {
  factory $SummaryRequestCopyWith(
          SummaryRequest value, $Res Function(SummaryRequest) then) =
      _$SummaryRequestCopyWithImpl<$Res, SummaryRequest>;
  @useResult
  $Res call({String content, int maxLength, bool includeKeyPoints});
}

/// @nodoc
class _$SummaryRequestCopyWithImpl<$Res, $Val extends SummaryRequest>
    implements $SummaryRequestCopyWith<$Res> {
  _$SummaryRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SummaryRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? maxLength = null,
    Object? includeKeyPoints = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      maxLength: null == maxLength
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int,
      includeKeyPoints: null == includeKeyPoints
          ? _value.includeKeyPoints
          : includeKeyPoints // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SummaryRequestImplCopyWith<$Res>
    implements $SummaryRequestCopyWith<$Res> {
  factory _$$SummaryRequestImplCopyWith(_$SummaryRequestImpl value,
          $Res Function(_$SummaryRequestImpl) then) =
      __$$SummaryRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content, int maxLength, bool includeKeyPoints});
}

/// @nodoc
class __$$SummaryRequestImplCopyWithImpl<$Res>
    extends _$SummaryRequestCopyWithImpl<$Res, _$SummaryRequestImpl>
    implements _$$SummaryRequestImplCopyWith<$Res> {
  __$$SummaryRequestImplCopyWithImpl(
      _$SummaryRequestImpl _value, $Res Function(_$SummaryRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of SummaryRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? maxLength = null,
    Object? includeKeyPoints = null,
  }) {
    return _then(_$SummaryRequestImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      maxLength: null == maxLength
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int,
      includeKeyPoints: null == includeKeyPoints
          ? _value.includeKeyPoints
          : includeKeyPoints // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SummaryRequestImpl implements _SummaryRequest {
  const _$SummaryRequestImpl(
      {required this.content,
      required this.maxLength,
      required this.includeKeyPoints});

  factory _$SummaryRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SummaryRequestImplFromJson(json);

  @override
  final String content;
  @override
  final int maxLength;
  @override
  final bool includeKeyPoints;

  @override
  String toString() {
    return 'SummaryRequest(content: $content, maxLength: $maxLength, includeKeyPoints: $includeKeyPoints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SummaryRequestImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.maxLength, maxLength) ||
                other.maxLength == maxLength) &&
            (identical(other.includeKeyPoints, includeKeyPoints) ||
                other.includeKeyPoints == includeKeyPoints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, content, maxLength, includeKeyPoints);

  /// Create a copy of SummaryRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SummaryRequestImplCopyWith<_$SummaryRequestImpl> get copyWith =>
      __$$SummaryRequestImplCopyWithImpl<_$SummaryRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SummaryRequestImplToJson(
      this,
    );
  }
}

abstract class _SummaryRequest implements SummaryRequest {
  const factory _SummaryRequest(
      {required final String content,
      required final int maxLength,
      required final bool includeKeyPoints}) = _$SummaryRequestImpl;

  factory _SummaryRequest.fromJson(Map<String, dynamic> json) =
      _$SummaryRequestImpl.fromJson;

  @override
  String get content;
  @override
  int get maxLength;
  @override
  bool get includeKeyPoints;

  /// Create a copy of SummaryRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SummaryRequestImplCopyWith<_$SummaryRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsSummary _$NewsSummaryFromJson(Map<String, dynamic> json) {
  return _NewsSummary.fromJson(json);
}

/// @nodoc
mixin _$NewsSummary {
  String get summary => throw _privateConstructorUsedError;
  List<String> get keyPoints => throw _privateConstructorUsedError;
  int get readingTime => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;

  /// Serializes this NewsSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsSummaryCopyWith<NewsSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsSummaryCopyWith<$Res> {
  factory $NewsSummaryCopyWith(
          NewsSummary value, $Res Function(NewsSummary) then) =
      _$NewsSummaryCopyWithImpl<$Res, NewsSummary>;
  @useResult
  $Res call(
      {String summary,
      List<String> keyPoints,
      int readingTime,
      double confidence});
}

/// @nodoc
class _$NewsSummaryCopyWithImpl<$Res, $Val extends NewsSummary>
    implements $NewsSummaryCopyWith<$Res> {
  _$NewsSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? summary = null,
    Object? keyPoints = null,
    Object? readingTime = null,
    Object? confidence = null,
  }) {
    return _then(_value.copyWith(
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      keyPoints: null == keyPoints
          ? _value.keyPoints
          : keyPoints // ignore: cast_nullable_to_non_nullable
              as List<String>,
      readingTime: null == readingTime
          ? _value.readingTime
          : readingTime // ignore: cast_nullable_to_non_nullable
              as int,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsSummaryImplCopyWith<$Res>
    implements $NewsSummaryCopyWith<$Res> {
  factory _$$NewsSummaryImplCopyWith(
          _$NewsSummaryImpl value, $Res Function(_$NewsSummaryImpl) then) =
      __$$NewsSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String summary,
      List<String> keyPoints,
      int readingTime,
      double confidence});
}

/// @nodoc
class __$$NewsSummaryImplCopyWithImpl<$Res>
    extends _$NewsSummaryCopyWithImpl<$Res, _$NewsSummaryImpl>
    implements _$$NewsSummaryImplCopyWith<$Res> {
  __$$NewsSummaryImplCopyWithImpl(
      _$NewsSummaryImpl _value, $Res Function(_$NewsSummaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? summary = null,
    Object? keyPoints = null,
    Object? readingTime = null,
    Object? confidence = null,
  }) {
    return _then(_$NewsSummaryImpl(
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      keyPoints: null == keyPoints
          ? _value._keyPoints
          : keyPoints // ignore: cast_nullable_to_non_nullable
              as List<String>,
      readingTime: null == readingTime
          ? _value.readingTime
          : readingTime // ignore: cast_nullable_to_non_nullable
              as int,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsSummaryImpl implements _NewsSummary {
  const _$NewsSummaryImpl(
      {required this.summary,
      required final List<String> keyPoints,
      required this.readingTime,
      required this.confidence})
      : _keyPoints = keyPoints;

  factory _$NewsSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsSummaryImplFromJson(json);

  @override
  final String summary;
  final List<String> _keyPoints;
  @override
  List<String> get keyPoints {
    if (_keyPoints is EqualUnmodifiableListView) return _keyPoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keyPoints);
  }

  @override
  final int readingTime;
  @override
  final double confidence;

  @override
  String toString() {
    return 'NewsSummary(summary: $summary, keyPoints: $keyPoints, readingTime: $readingTime, confidence: $confidence)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsSummaryImpl &&
            (identical(other.summary, summary) || other.summary == summary) &&
            const DeepCollectionEquality()
                .equals(other._keyPoints, _keyPoints) &&
            (identical(other.readingTime, readingTime) ||
                other.readingTime == readingTime) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, summary,
      const DeepCollectionEquality().hash(_keyPoints), readingTime, confidence);

  /// Create a copy of NewsSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsSummaryImplCopyWith<_$NewsSummaryImpl> get copyWith =>
      __$$NewsSummaryImplCopyWithImpl<_$NewsSummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsSummaryImplToJson(
      this,
    );
  }
}

abstract class _NewsSummary implements NewsSummary {
  const factory _NewsSummary(
      {required final String summary,
      required final List<String> keyPoints,
      required final int readingTime,
      required final double confidence}) = _$NewsSummaryImpl;

  factory _NewsSummary.fromJson(Map<String, dynamic> json) =
      _$NewsSummaryImpl.fromJson;

  @override
  String get summary;
  @override
  List<String> get keyPoints;
  @override
  int get readingTime;
  @override
  double get confidence;

  /// Create a copy of NewsSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsSummaryImplCopyWith<_$NewsSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EntityRequest _$EntityRequestFromJson(Map<String, dynamic> json) {
  return _EntityRequest.fromJson(json);
}

/// @nodoc
mixin _$EntityRequest {
  String get text => throw _privateConstructorUsedError;
  List<EntityType> get entityTypes => throw _privateConstructorUsedError;

  /// Serializes this EntityRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EntityRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EntityRequestCopyWith<EntityRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityRequestCopyWith<$Res> {
  factory $EntityRequestCopyWith(
          EntityRequest value, $Res Function(EntityRequest) then) =
      _$EntityRequestCopyWithImpl<$Res, EntityRequest>;
  @useResult
  $Res call({String text, List<EntityType> entityTypes});
}

/// @nodoc
class _$EntityRequestCopyWithImpl<$Res, $Val extends EntityRequest>
    implements $EntityRequestCopyWith<$Res> {
  _$EntityRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EntityRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? entityTypes = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      entityTypes: null == entityTypes
          ? _value.entityTypes
          : entityTypes // ignore: cast_nullable_to_non_nullable
              as List<EntityType>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EntityRequestImplCopyWith<$Res>
    implements $EntityRequestCopyWith<$Res> {
  factory _$$EntityRequestImplCopyWith(
          _$EntityRequestImpl value, $Res Function(_$EntityRequestImpl) then) =
      __$$EntityRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, List<EntityType> entityTypes});
}

/// @nodoc
class __$$EntityRequestImplCopyWithImpl<$Res>
    extends _$EntityRequestCopyWithImpl<$Res, _$EntityRequestImpl>
    implements _$$EntityRequestImplCopyWith<$Res> {
  __$$EntityRequestImplCopyWithImpl(
      _$EntityRequestImpl _value, $Res Function(_$EntityRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of EntityRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? entityTypes = null,
  }) {
    return _then(_$EntityRequestImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      entityTypes: null == entityTypes
          ? _value._entityTypes
          : entityTypes // ignore: cast_nullable_to_non_nullable
              as List<EntityType>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EntityRequestImpl implements _EntityRequest {
  const _$EntityRequestImpl(
      {required this.text, required final List<EntityType> entityTypes})
      : _entityTypes = entityTypes;

  factory _$EntityRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$EntityRequestImplFromJson(json);

  @override
  final String text;
  final List<EntityType> _entityTypes;
  @override
  List<EntityType> get entityTypes {
    if (_entityTypes is EqualUnmodifiableListView) return _entityTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entityTypes);
  }

  @override
  String toString() {
    return 'EntityRequest(text: $text, entityTypes: $entityTypes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntityRequestImpl &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality()
                .equals(other._entityTypes, _entityTypes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, text, const DeepCollectionEquality().hash(_entityTypes));

  /// Create a copy of EntityRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EntityRequestImplCopyWith<_$EntityRequestImpl> get copyWith =>
      __$$EntityRequestImplCopyWithImpl<_$EntityRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EntityRequestImplToJson(
      this,
    );
  }
}

abstract class _EntityRequest implements EntityRequest {
  const factory _EntityRequest(
      {required final String text,
      required final List<EntityType> entityTypes}) = _$EntityRequestImpl;

  factory _EntityRequest.fromJson(Map<String, dynamic> json) =
      _$EntityRequestImpl.fromJson;

  @override
  String get text;
  @override
  List<EntityType> get entityTypes;

  /// Create a copy of EntityRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EntityRequestImplCopyWith<_$EntityRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EntityExtraction _$EntityExtractionFromJson(Map<String, dynamic> json) {
  return _EntityExtraction.fromJson(json);
}

/// @nodoc
mixin _$EntityExtraction {
  List<Entity> get entities => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;

  /// Serializes this EntityExtraction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EntityExtraction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EntityExtractionCopyWith<EntityExtraction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityExtractionCopyWith<$Res> {
  factory $EntityExtractionCopyWith(
          EntityExtraction value, $Res Function(EntityExtraction) then) =
      _$EntityExtractionCopyWithImpl<$Res, EntityExtraction>;
  @useResult
  $Res call({List<Entity> entities, double confidence});
}

/// @nodoc
class _$EntityExtractionCopyWithImpl<$Res, $Val extends EntityExtraction>
    implements $EntityExtractionCopyWith<$Res> {
  _$EntityExtractionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EntityExtraction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entities = null,
    Object? confidence = null,
  }) {
    return _then(_value.copyWith(
      entities: null == entities
          ? _value.entities
          : entities // ignore: cast_nullable_to_non_nullable
              as List<Entity>,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EntityExtractionImplCopyWith<$Res>
    implements $EntityExtractionCopyWith<$Res> {
  factory _$$EntityExtractionImplCopyWith(_$EntityExtractionImpl value,
          $Res Function(_$EntityExtractionImpl) then) =
      __$$EntityExtractionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Entity> entities, double confidence});
}

/// @nodoc
class __$$EntityExtractionImplCopyWithImpl<$Res>
    extends _$EntityExtractionCopyWithImpl<$Res, _$EntityExtractionImpl>
    implements _$$EntityExtractionImplCopyWith<$Res> {
  __$$EntityExtractionImplCopyWithImpl(_$EntityExtractionImpl _value,
      $Res Function(_$EntityExtractionImpl) _then)
      : super(_value, _then);

  /// Create a copy of EntityExtraction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entities = null,
    Object? confidence = null,
  }) {
    return _then(_$EntityExtractionImpl(
      entities: null == entities
          ? _value._entities
          : entities // ignore: cast_nullable_to_non_nullable
              as List<Entity>,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EntityExtractionImpl implements _EntityExtraction {
  const _$EntityExtractionImpl(
      {required final List<Entity> entities, required this.confidence})
      : _entities = entities;

  factory _$EntityExtractionImpl.fromJson(Map<String, dynamic> json) =>
      _$$EntityExtractionImplFromJson(json);

  final List<Entity> _entities;
  @override
  List<Entity> get entities {
    if (_entities is EqualUnmodifiableListView) return _entities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entities);
  }

  @override
  final double confidence;

  @override
  String toString() {
    return 'EntityExtraction(entities: $entities, confidence: $confidence)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntityExtractionImpl &&
            const DeepCollectionEquality().equals(other._entities, _entities) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_entities), confidence);

  /// Create a copy of EntityExtraction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EntityExtractionImplCopyWith<_$EntityExtractionImpl> get copyWith =>
      __$$EntityExtractionImplCopyWithImpl<_$EntityExtractionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EntityExtractionImplToJson(
      this,
    );
  }
}

abstract class _EntityExtraction implements EntityExtraction {
  const factory _EntityExtraction(
      {required final List<Entity> entities,
      required final double confidence}) = _$EntityExtractionImpl;

  factory _EntityExtraction.fromJson(Map<String, dynamic> json) =
      _$EntityExtractionImpl.fromJson;

  @override
  List<Entity> get entities;
  @override
  double get confidence;

  /// Create a copy of EntityExtraction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EntityExtractionImplCopyWith<_$EntityExtractionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Entity _$EntityFromJson(Map<String, dynamic> json) {
  return _Entity.fromJson(json);
}

/// @nodoc
mixin _$Entity {
  String get text => throw _privateConstructorUsedError;
  EntityType get type => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;
  int get startIndex => throw _privateConstructorUsedError;
  int get endIndex => throw _privateConstructorUsedError;

  /// Serializes this Entity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Entity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EntityCopyWith<Entity> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityCopyWith<$Res> {
  factory $EntityCopyWith(Entity value, $Res Function(Entity) then) =
      _$EntityCopyWithImpl<$Res, Entity>;
  @useResult
  $Res call(
      {String text,
      EntityType type,
      double confidence,
      int startIndex,
      int endIndex});
}

/// @nodoc
class _$EntityCopyWithImpl<$Res, $Val extends Entity>
    implements $EntityCopyWith<$Res> {
  _$EntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Entity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? type = null,
    Object? confidence = null,
    Object? startIndex = null,
    Object? endIndex = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as EntityType,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      startIndex: null == startIndex
          ? _value.startIndex
          : startIndex // ignore: cast_nullable_to_non_nullable
              as int,
      endIndex: null == endIndex
          ? _value.endIndex
          : endIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EntityImplCopyWith<$Res> implements $EntityCopyWith<$Res> {
  factory _$$EntityImplCopyWith(
          _$EntityImpl value, $Res Function(_$EntityImpl) then) =
      __$$EntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String text,
      EntityType type,
      double confidence,
      int startIndex,
      int endIndex});
}

/// @nodoc
class __$$EntityImplCopyWithImpl<$Res>
    extends _$EntityCopyWithImpl<$Res, _$EntityImpl>
    implements _$$EntityImplCopyWith<$Res> {
  __$$EntityImplCopyWithImpl(
      _$EntityImpl _value, $Res Function(_$EntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of Entity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? type = null,
    Object? confidence = null,
    Object? startIndex = null,
    Object? endIndex = null,
  }) {
    return _then(_$EntityImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as EntityType,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      startIndex: null == startIndex
          ? _value.startIndex
          : startIndex // ignore: cast_nullable_to_non_nullable
              as int,
      endIndex: null == endIndex
          ? _value.endIndex
          : endIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EntityImpl implements _Entity {
  const _$EntityImpl(
      {required this.text,
      required this.type,
      required this.confidence,
      required this.startIndex,
      required this.endIndex});

  factory _$EntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$EntityImplFromJson(json);

  @override
  final String text;
  @override
  final EntityType type;
  @override
  final double confidence;
  @override
  final int startIndex;
  @override
  final int endIndex;

  @override
  String toString() {
    return 'Entity(text: $text, type: $type, confidence: $confidence, startIndex: $startIndex, endIndex: $endIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntityImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            (identical(other.startIndex, startIndex) ||
                other.startIndex == startIndex) &&
            (identical(other.endIndex, endIndex) ||
                other.endIndex == endIndex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, text, type, confidence, startIndex, endIndex);

  /// Create a copy of Entity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EntityImplCopyWith<_$EntityImpl> get copyWith =>
      __$$EntityImplCopyWithImpl<_$EntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EntityImplToJson(
      this,
    );
  }
}

abstract class _Entity implements Entity {
  const factory _Entity(
      {required final String text,
      required final EntityType type,
      required final double confidence,
      required final int startIndex,
      required final int endIndex}) = _$EntityImpl;

  factory _Entity.fromJson(Map<String, dynamic> json) = _$EntityImpl.fromJson;

  @override
  String get text;
  @override
  EntityType get type;
  @override
  double get confidence;
  @override
  int get startIndex;
  @override
  int get endIndex;

  /// Create a copy of Entity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EntityImplCopyWith<_$EntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClassificationRequest _$ClassificationRequestFromJson(
    Map<String, dynamic> json) {
  return _ClassificationRequest.fromJson(json);
}

/// @nodoc
mixin _$ClassificationRequest {
  String get content => throw _privateConstructorUsedError;
  List<String> get categories => throw _privateConstructorUsedError;

  /// Serializes this ClassificationRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassificationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassificationRequestCopyWith<ClassificationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassificationRequestCopyWith<$Res> {
  factory $ClassificationRequestCopyWith(ClassificationRequest value,
          $Res Function(ClassificationRequest) then) =
      _$ClassificationRequestCopyWithImpl<$Res, ClassificationRequest>;
  @useResult
  $Res call({String content, List<String> categories});
}

/// @nodoc
class _$ClassificationRequestCopyWithImpl<$Res,
        $Val extends ClassificationRequest>
    implements $ClassificationRequestCopyWith<$Res> {
  _$ClassificationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassificationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClassificationRequestImplCopyWith<$Res>
    implements $ClassificationRequestCopyWith<$Res> {
  factory _$$ClassificationRequestImplCopyWith(
          _$ClassificationRequestImpl value,
          $Res Function(_$ClassificationRequestImpl) then) =
      __$$ClassificationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content, List<String> categories});
}

/// @nodoc
class __$$ClassificationRequestImplCopyWithImpl<$Res>
    extends _$ClassificationRequestCopyWithImpl<$Res,
        _$ClassificationRequestImpl>
    implements _$$ClassificationRequestImplCopyWith<$Res> {
  __$$ClassificationRequestImplCopyWithImpl(_$ClassificationRequestImpl _value,
      $Res Function(_$ClassificationRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassificationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? categories = null,
  }) {
    return _then(_$ClassificationRequestImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassificationRequestImpl implements _ClassificationRequest {
  const _$ClassificationRequestImpl(
      {required this.content, required final List<String> categories})
      : _categories = categories;

  factory _$ClassificationRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassificationRequestImplFromJson(json);

  @override
  final String content;
  final List<String> _categories;
  @override
  List<String> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'ClassificationRequest(content: $content, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassificationRequestImpl &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, content, const DeepCollectionEquality().hash(_categories));

  /// Create a copy of ClassificationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassificationRequestImplCopyWith<_$ClassificationRequestImpl>
      get copyWith => __$$ClassificationRequestImplCopyWithImpl<
          _$ClassificationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassificationRequestImplToJson(
      this,
    );
  }
}

abstract class _ClassificationRequest implements ClassificationRequest {
  const factory _ClassificationRequest(
      {required final String content,
      required final List<String> categories}) = _$ClassificationRequestImpl;

  factory _ClassificationRequest.fromJson(Map<String, dynamic> json) =
      _$ClassificationRequestImpl.fromJson;

  @override
  String get content;
  @override
  List<String> get categories;

  /// Create a copy of ClassificationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassificationRequestImplCopyWith<_$ClassificationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NewsClassification _$NewsClassificationFromJson(Map<String, dynamic> json) {
  return _NewsClassification.fromJson(json);
}

/// @nodoc
mixin _$NewsClassification {
  String get category => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;
  List<String> get subcategories => throw _privateConstructorUsedError;

  /// Serializes this NewsClassification to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsClassification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsClassificationCopyWith<NewsClassification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsClassificationCopyWith<$Res> {
  factory $NewsClassificationCopyWith(
          NewsClassification value, $Res Function(NewsClassification) then) =
      _$NewsClassificationCopyWithImpl<$Res, NewsClassification>;
  @useResult
  $Res call({String category, double confidence, List<String> subcategories});
}

/// @nodoc
class _$NewsClassificationCopyWithImpl<$Res, $Val extends NewsClassification>
    implements $NewsClassificationCopyWith<$Res> {
  _$NewsClassificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsClassification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? confidence = null,
    Object? subcategories = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      subcategories: null == subcategories
          ? _value.subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsClassificationImplCopyWith<$Res>
    implements $NewsClassificationCopyWith<$Res> {
  factory _$$NewsClassificationImplCopyWith(_$NewsClassificationImpl value,
          $Res Function(_$NewsClassificationImpl) then) =
      __$$NewsClassificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String category, double confidence, List<String> subcategories});
}

/// @nodoc
class __$$NewsClassificationImplCopyWithImpl<$Res>
    extends _$NewsClassificationCopyWithImpl<$Res, _$NewsClassificationImpl>
    implements _$$NewsClassificationImplCopyWith<$Res> {
  __$$NewsClassificationImplCopyWithImpl(_$NewsClassificationImpl _value,
      $Res Function(_$NewsClassificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsClassification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? confidence = null,
    Object? subcategories = null,
  }) {
    return _then(_$NewsClassificationImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      subcategories: null == subcategories
          ? _value._subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsClassificationImpl implements _NewsClassification {
  const _$NewsClassificationImpl(
      {required this.category,
      required this.confidence,
      required final List<String> subcategories})
      : _subcategories = subcategories;

  factory _$NewsClassificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsClassificationImplFromJson(json);

  @override
  final String category;
  @override
  final double confidence;
  final List<String> _subcategories;
  @override
  List<String> get subcategories {
    if (_subcategories is EqualUnmodifiableListView) return _subcategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subcategories);
  }

  @override
  String toString() {
    return 'NewsClassification(category: $category, confidence: $confidence, subcategories: $subcategories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsClassificationImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            const DeepCollectionEquality()
                .equals(other._subcategories, _subcategories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, category, confidence,
      const DeepCollectionEquality().hash(_subcategories));

  /// Create a copy of NewsClassification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsClassificationImplCopyWith<_$NewsClassificationImpl> get copyWith =>
      __$$NewsClassificationImplCopyWithImpl<_$NewsClassificationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsClassificationImplToJson(
      this,
    );
  }
}

abstract class _NewsClassification implements NewsClassification {
  const factory _NewsClassification(
      {required final String category,
      required final double confidence,
      required final List<String> subcategories}) = _$NewsClassificationImpl;

  factory _NewsClassification.fromJson(Map<String, dynamic> json) =
      _$NewsClassificationImpl.fromJson;

  @override
  String get category;
  @override
  double get confidence;
  @override
  List<String> get subcategories;

  /// Create a copy of NewsClassification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsClassificationImplCopyWith<_$NewsClassificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RAGQuery _$RAGQueryFromJson(Map<String, dynamic> json) {
  return _RAGQuery.fromJson(json);
}

/// @nodoc
mixin _$RAGQuery {
  String get query => throw _privateConstructorUsedError;
  String get context => throw _privateConstructorUsedError;
  int get maxResults => throw _privateConstructorUsedError;

  /// Serializes this RAGQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RAGQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RAGQueryCopyWith<RAGQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RAGQueryCopyWith<$Res> {
  factory $RAGQueryCopyWith(RAGQuery value, $Res Function(RAGQuery) then) =
      _$RAGQueryCopyWithImpl<$Res, RAGQuery>;
  @useResult
  $Res call({String query, String context, int maxResults});
}

/// @nodoc
class _$RAGQueryCopyWithImpl<$Res, $Val extends RAGQuery>
    implements $RAGQueryCopyWith<$Res> {
  _$RAGQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RAGQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? context = null,
    Object? maxResults = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as String,
      maxResults: null == maxResults
          ? _value.maxResults
          : maxResults // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RAGQueryImplCopyWith<$Res>
    implements $RAGQueryCopyWith<$Res> {
  factory _$$RAGQueryImplCopyWith(
          _$RAGQueryImpl value, $Res Function(_$RAGQueryImpl) then) =
      __$$RAGQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query, String context, int maxResults});
}

/// @nodoc
class __$$RAGQueryImplCopyWithImpl<$Res>
    extends _$RAGQueryCopyWithImpl<$Res, _$RAGQueryImpl>
    implements _$$RAGQueryImplCopyWith<$Res> {
  __$$RAGQueryImplCopyWithImpl(
      _$RAGQueryImpl _value, $Res Function(_$RAGQueryImpl) _then)
      : super(_value, _then);

  /// Create a copy of RAGQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? context = null,
    Object? maxResults = null,
  }) {
    return _then(_$RAGQueryImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as String,
      maxResults: null == maxResults
          ? _value.maxResults
          : maxResults // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RAGQueryImpl implements _RAGQuery {
  const _$RAGQueryImpl(
      {required this.query, required this.context, required this.maxResults});

  factory _$RAGQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$RAGQueryImplFromJson(json);

  @override
  final String query;
  @override
  final String context;
  @override
  final int maxResults;

  @override
  String toString() {
    return 'RAGQuery(query: $query, context: $context, maxResults: $maxResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RAGQueryImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.maxResults, maxResults) ||
                other.maxResults == maxResults));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, query, context, maxResults);

  /// Create a copy of RAGQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RAGQueryImplCopyWith<_$RAGQueryImpl> get copyWith =>
      __$$RAGQueryImplCopyWithImpl<_$RAGQueryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RAGQueryImplToJson(
      this,
    );
  }
}

abstract class _RAGQuery implements RAGQuery {
  const factory _RAGQuery(
      {required final String query,
      required final String context,
      required final int maxResults}) = _$RAGQueryImpl;

  factory _RAGQuery.fromJson(Map<String, dynamic> json) =
      _$RAGQueryImpl.fromJson;

  @override
  String get query;
  @override
  String get context;
  @override
  int get maxResults;

  /// Create a copy of RAGQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RAGQueryImplCopyWith<_$RAGQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RAGResponse _$RAGResponseFromJson(Map<String, dynamic> json) {
  return _RAGResponse.fromJson(json);
}

/// @nodoc
mixin _$RAGResponse {
  List<RAGInsight> get insights => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;

  /// Serializes this RAGResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RAGResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RAGResponseCopyWith<RAGResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RAGResponseCopyWith<$Res> {
  factory $RAGResponseCopyWith(
          RAGResponse value, $Res Function(RAGResponse) then) =
      _$RAGResponseCopyWithImpl<$Res, RAGResponse>;
  @useResult
  $Res call({List<RAGInsight> insights, double confidence});
}

/// @nodoc
class _$RAGResponseCopyWithImpl<$Res, $Val extends RAGResponse>
    implements $RAGResponseCopyWith<$Res> {
  _$RAGResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RAGResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? insights = null,
    Object? confidence = null,
  }) {
    return _then(_value.copyWith(
      insights: null == insights
          ? _value.insights
          : insights // ignore: cast_nullable_to_non_nullable
              as List<RAGInsight>,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RAGResponseImplCopyWith<$Res>
    implements $RAGResponseCopyWith<$Res> {
  factory _$$RAGResponseImplCopyWith(
          _$RAGResponseImpl value, $Res Function(_$RAGResponseImpl) then) =
      __$$RAGResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RAGInsight> insights, double confidence});
}

/// @nodoc
class __$$RAGResponseImplCopyWithImpl<$Res>
    extends _$RAGResponseCopyWithImpl<$Res, _$RAGResponseImpl>
    implements _$$RAGResponseImplCopyWith<$Res> {
  __$$RAGResponseImplCopyWithImpl(
      _$RAGResponseImpl _value, $Res Function(_$RAGResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of RAGResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? insights = null,
    Object? confidence = null,
  }) {
    return _then(_$RAGResponseImpl(
      insights: null == insights
          ? _value._insights
          : insights // ignore: cast_nullable_to_non_nullable
              as List<RAGInsight>,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RAGResponseImpl implements _RAGResponse {
  const _$RAGResponseImpl(
      {required final List<RAGInsight> insights, required this.confidence})
      : _insights = insights;

  factory _$RAGResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RAGResponseImplFromJson(json);

  final List<RAGInsight> _insights;
  @override
  List<RAGInsight> get insights {
    if (_insights is EqualUnmodifiableListView) return _insights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_insights);
  }

  @override
  final double confidence;

  @override
  String toString() {
    return 'RAGResponse(insights: $insights, confidence: $confidence)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RAGResponseImpl &&
            const DeepCollectionEquality().equals(other._insights, _insights) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_insights), confidence);

  /// Create a copy of RAGResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RAGResponseImplCopyWith<_$RAGResponseImpl> get copyWith =>
      __$$RAGResponseImplCopyWithImpl<_$RAGResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RAGResponseImplToJson(
      this,
    );
  }
}

abstract class _RAGResponse implements RAGResponse {
  const factory _RAGResponse(
      {required final List<RAGInsight> insights,
      required final double confidence}) = _$RAGResponseImpl;

  factory _RAGResponse.fromJson(Map<String, dynamic> json) =
      _$RAGResponseImpl.fromJson;

  @override
  List<RAGInsight> get insights;
  @override
  double get confidence;

  /// Create a copy of RAGResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RAGResponseImplCopyWith<_$RAGResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RAGInsight _$RAGInsightFromJson(Map<String, dynamic> json) {
  return _RAGInsight.fromJson(json);
}

/// @nodoc
mixin _$RAGInsight {
  String get insight => throw _privateConstructorUsedError;
  double get relevance => throw _privateConstructorUsedError;
  List<String> get sources => throw _privateConstructorUsedError;

  /// Serializes this RAGInsight to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RAGInsight
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RAGInsightCopyWith<RAGInsight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RAGInsightCopyWith<$Res> {
  factory $RAGInsightCopyWith(
          RAGInsight value, $Res Function(RAGInsight) then) =
      _$RAGInsightCopyWithImpl<$Res, RAGInsight>;
  @useResult
  $Res call({String insight, double relevance, List<String> sources});
}

/// @nodoc
class _$RAGInsightCopyWithImpl<$Res, $Val extends RAGInsight>
    implements $RAGInsightCopyWith<$Res> {
  _$RAGInsightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RAGInsight
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? insight = null,
    Object? relevance = null,
    Object? sources = null,
  }) {
    return _then(_value.copyWith(
      insight: null == insight
          ? _value.insight
          : insight // ignore: cast_nullable_to_non_nullable
              as String,
      relevance: null == relevance
          ? _value.relevance
          : relevance // ignore: cast_nullable_to_non_nullable
              as double,
      sources: null == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RAGInsightImplCopyWith<$Res>
    implements $RAGInsightCopyWith<$Res> {
  factory _$$RAGInsightImplCopyWith(
          _$RAGInsightImpl value, $Res Function(_$RAGInsightImpl) then) =
      __$$RAGInsightImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String insight, double relevance, List<String> sources});
}

/// @nodoc
class __$$RAGInsightImplCopyWithImpl<$Res>
    extends _$RAGInsightCopyWithImpl<$Res, _$RAGInsightImpl>
    implements _$$RAGInsightImplCopyWith<$Res> {
  __$$RAGInsightImplCopyWithImpl(
      _$RAGInsightImpl _value, $Res Function(_$RAGInsightImpl) _then)
      : super(_value, _then);

  /// Create a copy of RAGInsight
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? insight = null,
    Object? relevance = null,
    Object? sources = null,
  }) {
    return _then(_$RAGInsightImpl(
      insight: null == insight
          ? _value.insight
          : insight // ignore: cast_nullable_to_non_nullable
              as String,
      relevance: null == relevance
          ? _value.relevance
          : relevance // ignore: cast_nullable_to_non_nullable
              as double,
      sources: null == sources
          ? _value._sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RAGInsightImpl implements _RAGInsight {
  const _$RAGInsightImpl(
      {required this.insight,
      required this.relevance,
      required final List<String> sources})
      : _sources = sources;

  factory _$RAGInsightImpl.fromJson(Map<String, dynamic> json) =>
      _$$RAGInsightImplFromJson(json);

  @override
  final String insight;
  @override
  final double relevance;
  final List<String> _sources;
  @override
  List<String> get sources {
    if (_sources is EqualUnmodifiableListView) return _sources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sources);
  }

  @override
  String toString() {
    return 'RAGInsight(insight: $insight, relevance: $relevance, sources: $sources)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RAGInsightImpl &&
            (identical(other.insight, insight) || other.insight == insight) &&
            (identical(other.relevance, relevance) ||
                other.relevance == relevance) &&
            const DeepCollectionEquality().equals(other._sources, _sources));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, insight, relevance,
      const DeepCollectionEquality().hash(_sources));

  /// Create a copy of RAGInsight
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RAGInsightImplCopyWith<_$RAGInsightImpl> get copyWith =>
      __$$RAGInsightImplCopyWithImpl<_$RAGInsightImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RAGInsightImplToJson(
      this,
    );
  }
}

abstract class _RAGInsight implements RAGInsight {
  const factory _RAGInsight(
      {required final String insight,
      required final double relevance,
      required final List<String> sources}) = _$RAGInsightImpl;

  factory _RAGInsight.fromJson(Map<String, dynamic> json) =
      _$RAGInsightImpl.fromJson;

  @override
  String get insight;
  @override
  double get relevance;
  @override
  List<String> get sources;

  /// Create a copy of RAGInsight
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RAGInsightImplCopyWith<_$RAGInsightImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RAGContext _$RAGContextFromJson(Map<String, dynamic> json) {
  return _RAGContext.fromJson(json);
}

/// @nodoc
mixin _$RAGContext {
  String get context => throw _privateConstructorUsedError;
  List<String> get sources => throw _privateConstructorUsedError;
  double get relevance => throw _privateConstructorUsedError;

  /// Serializes this RAGContext to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RAGContext
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RAGContextCopyWith<RAGContext> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RAGContextCopyWith<$Res> {
  factory $RAGContextCopyWith(
          RAGContext value, $Res Function(RAGContext) then) =
      _$RAGContextCopyWithImpl<$Res, RAGContext>;
  @useResult
  $Res call({String context, List<String> sources, double relevance});
}

/// @nodoc
class _$RAGContextCopyWithImpl<$Res, $Val extends RAGContext>
    implements $RAGContextCopyWith<$Res> {
  _$RAGContextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RAGContext
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? sources = null,
    Object? relevance = null,
  }) {
    return _then(_value.copyWith(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as String,
      sources: null == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<String>,
      relevance: null == relevance
          ? _value.relevance
          : relevance // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RAGContextImplCopyWith<$Res>
    implements $RAGContextCopyWith<$Res> {
  factory _$$RAGContextImplCopyWith(
          _$RAGContextImpl value, $Res Function(_$RAGContextImpl) then) =
      __$$RAGContextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String context, List<String> sources, double relevance});
}

/// @nodoc
class __$$RAGContextImplCopyWithImpl<$Res>
    extends _$RAGContextCopyWithImpl<$Res, _$RAGContextImpl>
    implements _$$RAGContextImplCopyWith<$Res> {
  __$$RAGContextImplCopyWithImpl(
      _$RAGContextImpl _value, $Res Function(_$RAGContextImpl) _then)
      : super(_value, _then);

  /// Create a copy of RAGContext
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? sources = null,
    Object? relevance = null,
  }) {
    return _then(_$RAGContextImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as String,
      sources: null == sources
          ? _value._sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<String>,
      relevance: null == relevance
          ? _value.relevance
          : relevance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RAGContextImpl implements _RAGContext {
  const _$RAGContextImpl(
      {required this.context,
      required final List<String> sources,
      required this.relevance})
      : _sources = sources;

  factory _$RAGContextImpl.fromJson(Map<String, dynamic> json) =>
      _$$RAGContextImplFromJson(json);

  @override
  final String context;
  final List<String> _sources;
  @override
  List<String> get sources {
    if (_sources is EqualUnmodifiableListView) return _sources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sources);
  }

  @override
  final double relevance;

  @override
  String toString() {
    return 'RAGContext(context: $context, sources: $sources, relevance: $relevance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RAGContextImpl &&
            (identical(other.context, context) || other.context == context) &&
            const DeepCollectionEquality().equals(other._sources, _sources) &&
            (identical(other.relevance, relevance) ||
                other.relevance == relevance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, context,
      const DeepCollectionEquality().hash(_sources), relevance);

  /// Create a copy of RAGContext
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RAGContextImplCopyWith<_$RAGContextImpl> get copyWith =>
      __$$RAGContextImplCopyWithImpl<_$RAGContextImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RAGContextImplToJson(
      this,
    );
  }
}

abstract class _RAGContext implements RAGContext {
  const factory _RAGContext(
      {required final String context,
      required final List<String> sources,
      required final double relevance}) = _$RAGContextImpl;

  factory _RAGContext.fromJson(Map<String, dynamic> json) =
      _$RAGContextImpl.fromJson;

  @override
  String get context;
  @override
  List<String> get sources;
  @override
  double get relevance;

  /// Create a copy of RAGContext
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RAGContextImplCopyWith<_$RAGContextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RecommendationRequest _$RecommendationRequestFromJson(
    Map<String, dynamic> json) {
  return _RecommendationRequest.fromJson(json);
}

/// @nodoc
mixin _$RecommendationRequest {
  String get userId => throw _privateConstructorUsedError;
  List<String> get interests => throw _privateConstructorUsedError;
  List<String> get watchlist => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  bool get includeSentiment => throw _privateConstructorUsedError;
  bool get includeStance => throw _privateConstructorUsedError;

  /// Serializes this RecommendationRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecommendationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecommendationRequestCopyWith<RecommendationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendationRequestCopyWith<$Res> {
  factory $RecommendationRequestCopyWith(RecommendationRequest value,
          $Res Function(RecommendationRequest) then) =
      _$RecommendationRequestCopyWithImpl<$Res, RecommendationRequest>;
  @useResult
  $Res call(
      {String userId,
      List<String> interests,
      List<String> watchlist,
      int limit,
      bool includeSentiment,
      bool includeStance});
}

/// @nodoc
class _$RecommendationRequestCopyWithImpl<$Res,
        $Val extends RecommendationRequest>
    implements $RecommendationRequestCopyWith<$Res> {
  _$RecommendationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecommendationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? interests = null,
    Object? watchlist = null,
    Object? limit = null,
    Object? includeSentiment = null,
    Object? includeStance = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      interests: null == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<String>,
      watchlist: null == watchlist
          ? _value.watchlist
          : watchlist // ignore: cast_nullable_to_non_nullable
              as List<String>,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      includeSentiment: null == includeSentiment
          ? _value.includeSentiment
          : includeSentiment // ignore: cast_nullable_to_non_nullable
              as bool,
      includeStance: null == includeStance
          ? _value.includeStance
          : includeStance // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecommendationRequestImplCopyWith<$Res>
    implements $RecommendationRequestCopyWith<$Res> {
  factory _$$RecommendationRequestImplCopyWith(
          _$RecommendationRequestImpl value,
          $Res Function(_$RecommendationRequestImpl) then) =
      __$$RecommendationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      List<String> interests,
      List<String> watchlist,
      int limit,
      bool includeSentiment,
      bool includeStance});
}

/// @nodoc
class __$$RecommendationRequestImplCopyWithImpl<$Res>
    extends _$RecommendationRequestCopyWithImpl<$Res,
        _$RecommendationRequestImpl>
    implements _$$RecommendationRequestImplCopyWith<$Res> {
  __$$RecommendationRequestImplCopyWithImpl(_$RecommendationRequestImpl _value,
      $Res Function(_$RecommendationRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecommendationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? interests = null,
    Object? watchlist = null,
    Object? limit = null,
    Object? includeSentiment = null,
    Object? includeStance = null,
  }) {
    return _then(_$RecommendationRequestImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      interests: null == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<String>,
      watchlist: null == watchlist
          ? _value._watchlist
          : watchlist // ignore: cast_nullable_to_non_nullable
              as List<String>,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      includeSentiment: null == includeSentiment
          ? _value.includeSentiment
          : includeSentiment // ignore: cast_nullable_to_non_nullable
              as bool,
      includeStance: null == includeStance
          ? _value.includeStance
          : includeStance // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecommendationRequestImpl implements _RecommendationRequest {
  const _$RecommendationRequestImpl(
      {required this.userId,
      required final List<String> interests,
      required final List<String> watchlist,
      required this.limit,
      required this.includeSentiment,
      required this.includeStance})
      : _interests = interests,
        _watchlist = watchlist;

  factory _$RecommendationRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecommendationRequestImplFromJson(json);

  @override
  final String userId;
  final List<String> _interests;
  @override
  List<String> get interests {
    if (_interests is EqualUnmodifiableListView) return _interests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_interests);
  }

  final List<String> _watchlist;
  @override
  List<String> get watchlist {
    if (_watchlist is EqualUnmodifiableListView) return _watchlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_watchlist);
  }

  @override
  final int limit;
  @override
  final bool includeSentiment;
  @override
  final bool includeStance;

  @override
  String toString() {
    return 'RecommendationRequest(userId: $userId, interests: $interests, watchlist: $watchlist, limit: $limit, includeSentiment: $includeSentiment, includeStance: $includeStance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendationRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
            const DeepCollectionEquality()
                .equals(other._watchlist, _watchlist) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.includeSentiment, includeSentiment) ||
                other.includeSentiment == includeSentiment) &&
            (identical(other.includeStance, includeStance) ||
                other.includeStance == includeStance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      const DeepCollectionEquality().hash(_interests),
      const DeepCollectionEquality().hash(_watchlist),
      limit,
      includeSentiment,
      includeStance);

  /// Create a copy of RecommendationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendationRequestImplCopyWith<_$RecommendationRequestImpl>
      get copyWith => __$$RecommendationRequestImplCopyWithImpl<
          _$RecommendationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecommendationRequestImplToJson(
      this,
    );
  }
}

abstract class _RecommendationRequest implements RecommendationRequest {
  const factory _RecommendationRequest(
      {required final String userId,
      required final List<String> interests,
      required final List<String> watchlist,
      required final int limit,
      required final bool includeSentiment,
      required final bool includeStance}) = _$RecommendationRequestImpl;

  factory _RecommendationRequest.fromJson(Map<String, dynamic> json) =
      _$RecommendationRequestImpl.fromJson;

  @override
  String get userId;
  @override
  List<String> get interests;
  @override
  List<String> get watchlist;
  @override
  int get limit;
  @override
  bool get includeSentiment;
  @override
  bool get includeStance;

  /// Create a copy of RecommendationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecommendationRequestImplCopyWith<_$RecommendationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NewsAlertRequest _$NewsAlertRequestFromJson(Map<String, dynamic> json) {
  return _NewsAlertRequest.fromJson(json);
}

/// @nodoc
mixin _$NewsAlertRequest {
  String get userId => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  List<String> get sources => throw _privateConstructorUsedError;
  AlertFrequency get frequency => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;

  /// Serializes this NewsAlertRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsAlertRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsAlertRequestCopyWith<NewsAlertRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsAlertRequestCopyWith<$Res> {
  factory $NewsAlertRequestCopyWith(
          NewsAlertRequest value, $Res Function(NewsAlertRequest) then) =
      _$NewsAlertRequestCopyWithImpl<$Res, NewsAlertRequest>;
  @useResult
  $Res call(
      {String userId,
      String query,
      List<String> sources,
      AlertFrequency frequency,
      bool active});
}

/// @nodoc
class _$NewsAlertRequestCopyWithImpl<$Res, $Val extends NewsAlertRequest>
    implements $NewsAlertRequestCopyWith<$Res> {
  _$NewsAlertRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsAlertRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? query = null,
    Object? sources = null,
    Object? frequency = null,
    Object? active = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      sources: null == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<String>,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as AlertFrequency,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsAlertRequestImplCopyWith<$Res>
    implements $NewsAlertRequestCopyWith<$Res> {
  factory _$$NewsAlertRequestImplCopyWith(_$NewsAlertRequestImpl value,
          $Res Function(_$NewsAlertRequestImpl) then) =
      __$$NewsAlertRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String query,
      List<String> sources,
      AlertFrequency frequency,
      bool active});
}

/// @nodoc
class __$$NewsAlertRequestImplCopyWithImpl<$Res>
    extends _$NewsAlertRequestCopyWithImpl<$Res, _$NewsAlertRequestImpl>
    implements _$$NewsAlertRequestImplCopyWith<$Res> {
  __$$NewsAlertRequestImplCopyWithImpl(_$NewsAlertRequestImpl _value,
      $Res Function(_$NewsAlertRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsAlertRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? query = null,
    Object? sources = null,
    Object? frequency = null,
    Object? active = null,
  }) {
    return _then(_$NewsAlertRequestImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      sources: null == sources
          ? _value._sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<String>,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as AlertFrequency,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsAlertRequestImpl implements _NewsAlertRequest {
  const _$NewsAlertRequestImpl(
      {required this.userId,
      required this.query,
      required final List<String> sources,
      required this.frequency,
      required this.active})
      : _sources = sources;

  factory _$NewsAlertRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsAlertRequestImplFromJson(json);

  @override
  final String userId;
  @override
  final String query;
  final List<String> _sources;
  @override
  List<String> get sources {
    if (_sources is EqualUnmodifiableListView) return _sources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sources);
  }

  @override
  final AlertFrequency frequency;
  @override
  final bool active;

  @override
  String toString() {
    return 'NewsAlertRequest(userId: $userId, query: $query, sources: $sources, frequency: $frequency, active: $active)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsAlertRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality().equals(other._sources, _sources) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, query,
      const DeepCollectionEquality().hash(_sources), frequency, active);

  /// Create a copy of NewsAlertRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsAlertRequestImplCopyWith<_$NewsAlertRequestImpl> get copyWith =>
      __$$NewsAlertRequestImplCopyWithImpl<_$NewsAlertRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsAlertRequestImplToJson(
      this,
    );
  }
}

abstract class _NewsAlertRequest implements NewsAlertRequest {
  const factory _NewsAlertRequest(
      {required final String userId,
      required final String query,
      required final List<String> sources,
      required final AlertFrequency frequency,
      required final bool active}) = _$NewsAlertRequestImpl;

  factory _NewsAlertRequest.fromJson(Map<String, dynamic> json) =
      _$NewsAlertRequestImpl.fromJson;

  @override
  String get userId;
  @override
  String get query;
  @override
  List<String> get sources;
  @override
  AlertFrequency get frequency;
  @override
  bool get active;

  /// Create a copy of NewsAlertRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsAlertRequestImplCopyWith<_$NewsAlertRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
