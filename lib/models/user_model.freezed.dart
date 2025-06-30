// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  UserProfile get profile => throw _privateConstructorUsedError;
  UserPreferences get preferences => throw _privateConstructorUsedError;
  UserBehavior get behavior => throw _privateConstructorUsedError;
  List<Watchlist> get watchlists => throw _privateConstructorUsedError;
  List<Portfolio> get portfolios => throw _privateConstructorUsedError;
  List<Alert> get alerts => throw _privateConstructorUsedError;
  List<Note> get notes => throw _privateConstructorUsedError;
  List<SearchHistory> get searchHistory => throw _privateConstructorUsedError;
  List<ViewHistory> get viewHistory => throw _privateConstructorUsedError;
  List<Interaction> get interactions => throw _privateConstructorUsedError;
  List<Recommendation> get recommendations =>
      throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get lastActive => throw _privateConstructorUsedError;
  bool get isPremium => throw _privateConstructorUsedError;
  SubscriptionData get subscription => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String id,
      String email,
      String name,
      UserProfile profile,
      UserPreferences preferences,
      UserBehavior behavior,
      List<Watchlist> watchlists,
      List<Portfolio> portfolios,
      List<Alert> alerts,
      List<Note> notes,
      List<SearchHistory> searchHistory,
      List<ViewHistory> viewHistory,
      List<Interaction> interactions,
      List<Recommendation> recommendations,
      DateTime createdAt,
      DateTime lastActive,
      bool isPremium,
      SubscriptionData subscription});

  $UserProfileCopyWith<$Res> get profile;
  $UserPreferencesCopyWith<$Res> get preferences;
  $UserBehaviorCopyWith<$Res> get behavior;
  $SubscriptionDataCopyWith<$Res> get subscription;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? name = null,
    Object? profile = null,
    Object? preferences = null,
    Object? behavior = null,
    Object? watchlists = null,
    Object? portfolios = null,
    Object? alerts = null,
    Object? notes = null,
    Object? searchHistory = null,
    Object? viewHistory = null,
    Object? interactions = null,
    Object? recommendations = null,
    Object? createdAt = null,
    Object? lastActive = null,
    Object? isPremium = null,
    Object? subscription = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as UserProfile,
      preferences: null == preferences
          ? _value.preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as UserPreferences,
      behavior: null == behavior
          ? _value.behavior
          : behavior // ignore: cast_nullable_to_non_nullable
              as UserBehavior,
      watchlists: null == watchlists
          ? _value.watchlists
          : watchlists // ignore: cast_nullable_to_non_nullable
              as List<Watchlist>,
      portfolios: null == portfolios
          ? _value.portfolios
          : portfolios // ignore: cast_nullable_to_non_nullable
              as List<Portfolio>,
      alerts: null == alerts
          ? _value.alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<Alert>,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      searchHistory: null == searchHistory
          ? _value.searchHistory
          : searchHistory // ignore: cast_nullable_to_non_nullable
              as List<SearchHistory>,
      viewHistory: null == viewHistory
          ? _value.viewHistory
          : viewHistory // ignore: cast_nullable_to_non_nullable
              as List<ViewHistory>,
      interactions: null == interactions
          ? _value.interactions
          : interactions // ignore: cast_nullable_to_non_nullable
              as List<Interaction>,
      recommendations: null == recommendations
          ? _value.recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as List<Recommendation>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastActive: null == lastActive
          ? _value.lastActive
          : lastActive // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      subscription: null == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as SubscriptionData,
    ) as $Val);
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserProfileCopyWith<$Res> get profile {
    return $UserProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserPreferencesCopyWith<$Res> get preferences {
    return $UserPreferencesCopyWith<$Res>(_value.preferences, (value) {
      return _then(_value.copyWith(preferences: value) as $Val);
    });
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserBehaviorCopyWith<$Res> get behavior {
    return $UserBehaviorCopyWith<$Res>(_value.behavior, (value) {
      return _then(_value.copyWith(behavior: value) as $Val);
    });
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionDataCopyWith<$Res> get subscription {
    return $SubscriptionDataCopyWith<$Res>(_value.subscription, (value) {
      return _then(_value.copyWith(subscription: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String email,
      String name,
      UserProfile profile,
      UserPreferences preferences,
      UserBehavior behavior,
      List<Watchlist> watchlists,
      List<Portfolio> portfolios,
      List<Alert> alerts,
      List<Note> notes,
      List<SearchHistory> searchHistory,
      List<ViewHistory> viewHistory,
      List<Interaction> interactions,
      List<Recommendation> recommendations,
      DateTime createdAt,
      DateTime lastActive,
      bool isPremium,
      SubscriptionData subscription});

  @override
  $UserProfileCopyWith<$Res> get profile;
  @override
  $UserPreferencesCopyWith<$Res> get preferences;
  @override
  $UserBehaviorCopyWith<$Res> get behavior;
  @override
  $SubscriptionDataCopyWith<$Res> get subscription;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? name = null,
    Object? profile = null,
    Object? preferences = null,
    Object? behavior = null,
    Object? watchlists = null,
    Object? portfolios = null,
    Object? alerts = null,
    Object? notes = null,
    Object? searchHistory = null,
    Object? viewHistory = null,
    Object? interactions = null,
    Object? recommendations = null,
    Object? createdAt = null,
    Object? lastActive = null,
    Object? isPremium = null,
    Object? subscription = null,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as UserProfile,
      preferences: null == preferences
          ? _value.preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as UserPreferences,
      behavior: null == behavior
          ? _value.behavior
          : behavior // ignore: cast_nullable_to_non_nullable
              as UserBehavior,
      watchlists: null == watchlists
          ? _value._watchlists
          : watchlists // ignore: cast_nullable_to_non_nullable
              as List<Watchlist>,
      portfolios: null == portfolios
          ? _value._portfolios
          : portfolios // ignore: cast_nullable_to_non_nullable
              as List<Portfolio>,
      alerts: null == alerts
          ? _value._alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<Alert>,
      notes: null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      searchHistory: null == searchHistory
          ? _value._searchHistory
          : searchHistory // ignore: cast_nullable_to_non_nullable
              as List<SearchHistory>,
      viewHistory: null == viewHistory
          ? _value._viewHistory
          : viewHistory // ignore: cast_nullable_to_non_nullable
              as List<ViewHistory>,
      interactions: null == interactions
          ? _value._interactions
          : interactions // ignore: cast_nullable_to_non_nullable
              as List<Interaction>,
      recommendations: null == recommendations
          ? _value._recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as List<Recommendation>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastActive: null == lastActive
          ? _value.lastActive
          : lastActive // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      subscription: null == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as SubscriptionData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {required this.id,
      required this.email,
      required this.name,
      required this.profile,
      required this.preferences,
      required this.behavior,
      required final List<Watchlist> watchlists,
      required final List<Portfolio> portfolios,
      required final List<Alert> alerts,
      required final List<Note> notes,
      required final List<SearchHistory> searchHistory,
      required final List<ViewHistory> viewHistory,
      required final List<Interaction> interactions,
      required final List<Recommendation> recommendations,
      required this.createdAt,
      required this.lastActive,
      required this.isPremium,
      required this.subscription})
      : _watchlists = watchlists,
        _portfolios = portfolios,
        _alerts = alerts,
        _notes = notes,
        _searchHistory = searchHistory,
        _viewHistory = viewHistory,
        _interactions = interactions,
        _recommendations = recommendations;

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final String name;
  @override
  final UserProfile profile;
  @override
  final UserPreferences preferences;
  @override
  final UserBehavior behavior;
  final List<Watchlist> _watchlists;
  @override
  List<Watchlist> get watchlists {
    if (_watchlists is EqualUnmodifiableListView) return _watchlists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_watchlists);
  }

  final List<Portfolio> _portfolios;
  @override
  List<Portfolio> get portfolios {
    if (_portfolios is EqualUnmodifiableListView) return _portfolios;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_portfolios);
  }

  final List<Alert> _alerts;
  @override
  List<Alert> get alerts {
    if (_alerts is EqualUnmodifiableListView) return _alerts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_alerts);
  }

  final List<Note> _notes;
  @override
  List<Note> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  final List<SearchHistory> _searchHistory;
  @override
  List<SearchHistory> get searchHistory {
    if (_searchHistory is EqualUnmodifiableListView) return _searchHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchHistory);
  }

  final List<ViewHistory> _viewHistory;
  @override
  List<ViewHistory> get viewHistory {
    if (_viewHistory is EqualUnmodifiableListView) return _viewHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_viewHistory);
  }

  final List<Interaction> _interactions;
  @override
  List<Interaction> get interactions {
    if (_interactions is EqualUnmodifiableListView) return _interactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_interactions);
  }

  final List<Recommendation> _recommendations;
  @override
  List<Recommendation> get recommendations {
    if (_recommendations is EqualUnmodifiableListView) return _recommendations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendations);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime lastActive;
  @override
  final bool isPremium;
  @override
  final SubscriptionData subscription;

  @override
  String toString() {
    return 'User(id: $id, email: $email, name: $name, profile: $profile, preferences: $preferences, behavior: $behavior, watchlists: $watchlists, portfolios: $portfolios, alerts: $alerts, notes: $notes, searchHistory: $searchHistory, viewHistory: $viewHistory, interactions: $interactions, recommendations: $recommendations, createdAt: $createdAt, lastActive: $lastActive, isPremium: $isPremium, subscription: $subscription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.preferences, preferences) ||
                other.preferences == preferences) &&
            (identical(other.behavior, behavior) ||
                other.behavior == behavior) &&
            const DeepCollectionEquality()
                .equals(other._watchlists, _watchlists) &&
            const DeepCollectionEquality()
                .equals(other._portfolios, _portfolios) &&
            const DeepCollectionEquality().equals(other._alerts, _alerts) &&
            const DeepCollectionEquality().equals(other._notes, _notes) &&
            const DeepCollectionEquality()
                .equals(other._searchHistory, _searchHistory) &&
            const DeepCollectionEquality()
                .equals(other._viewHistory, _viewHistory) &&
            const DeepCollectionEquality()
                .equals(other._interactions, _interactions) &&
            const DeepCollectionEquality()
                .equals(other._recommendations, _recommendations) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lastActive, lastActive) ||
                other.lastActive == lastActive) &&
            (identical(other.isPremium, isPremium) ||
                other.isPremium == isPremium) &&
            (identical(other.subscription, subscription) ||
                other.subscription == subscription));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      name,
      profile,
      preferences,
      behavior,
      const DeepCollectionEquality().hash(_watchlists),
      const DeepCollectionEquality().hash(_portfolios),
      const DeepCollectionEquality().hash(_alerts),
      const DeepCollectionEquality().hash(_notes),
      const DeepCollectionEquality().hash(_searchHistory),
      const DeepCollectionEquality().hash(_viewHistory),
      const DeepCollectionEquality().hash(_interactions),
      const DeepCollectionEquality().hash(_recommendations),
      createdAt,
      lastActive,
      isPremium,
      subscription);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {required final String id,
      required final String email,
      required final String name,
      required final UserProfile profile,
      required final UserPreferences preferences,
      required final UserBehavior behavior,
      required final List<Watchlist> watchlists,
      required final List<Portfolio> portfolios,
      required final List<Alert> alerts,
      required final List<Note> notes,
      required final List<SearchHistory> searchHistory,
      required final List<ViewHistory> viewHistory,
      required final List<Interaction> interactions,
      required final List<Recommendation> recommendations,
      required final DateTime createdAt,
      required final DateTime lastActive,
      required final bool isPremium,
      required final SubscriptionData subscription}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  String get name;
  @override
  UserProfile get profile;
  @override
  UserPreferences get preferences;
  @override
  UserBehavior get behavior;
  @override
  List<Watchlist> get watchlists;
  @override
  List<Portfolio> get portfolios;
  @override
  List<Alert> get alerts;
  @override
  List<Note> get notes;
  @override
  List<SearchHistory> get searchHistory;
  @override
  List<ViewHistory> get viewHistory;
  @override
  List<Interaction> get interactions;
  @override
  List<Recommendation> get recommendations;
  @override
  DateTime get createdAt;
  @override
  DateTime get lastActive;
  @override
  bool get isPremium;
  @override
  SubscriptionData get subscription;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) {
  return _UserProfile.fromJson(json);
}

/// @nodoc
mixin _$UserProfile {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  DateTime get dateOfBirth => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;
  List<String> get interests => throw _privateConstructorUsedError;
  List<String> get expertise => throw _privateConstructorUsedError;
  int get experienceYears => throw _privateConstructorUsedError;
  String get tradingStyle => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;

  /// Serializes this UserProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileCopyWith<UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) then) =
      _$UserProfileCopyWithImpl<$Res, UserProfile>;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String? avatar,
      String? bio,
      DateTime dateOfBirth,
      String? phoneNumber,
      String? location,
      String? timezone,
      List<String> interests,
      List<String> expertise,
      int experienceYears,
      String tradingStyle,
      bool isVerified});
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res, $Val extends UserProfile>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? avatar = freezed,
    Object? bio = freezed,
    Object? dateOfBirth = null,
    Object? phoneNumber = freezed,
    Object? location = freezed,
    Object? timezone = freezed,
    Object? interests = null,
    Object? expertise = null,
    Object? experienceYears = null,
    Object? tradingStyle = null,
    Object? isVerified = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: null == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<String>,
      expertise: null == expertise
          ? _value.expertise
          : expertise // ignore: cast_nullable_to_non_nullable
              as List<String>,
      experienceYears: null == experienceYears
          ? _value.experienceYears
          : experienceYears // ignore: cast_nullable_to_non_nullable
              as int,
      tradingStyle: null == tradingStyle
          ? _value.tradingStyle
          : tradingStyle // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserProfileImplCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$$UserProfileImplCopyWith(
          _$UserProfileImpl value, $Res Function(_$UserProfileImpl) then) =
      __$$UserProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String? avatar,
      String? bio,
      DateTime dateOfBirth,
      String? phoneNumber,
      String? location,
      String? timezone,
      List<String> interests,
      List<String> expertise,
      int experienceYears,
      String tradingStyle,
      bool isVerified});
}

/// @nodoc
class __$$UserProfileImplCopyWithImpl<$Res>
    extends _$UserProfileCopyWithImpl<$Res, _$UserProfileImpl>
    implements _$$UserProfileImplCopyWith<$Res> {
  __$$UserProfileImplCopyWithImpl(
      _$UserProfileImpl _value, $Res Function(_$UserProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? avatar = freezed,
    Object? bio = freezed,
    Object? dateOfBirth = null,
    Object? phoneNumber = freezed,
    Object? location = freezed,
    Object? timezone = freezed,
    Object? interests = null,
    Object? expertise = null,
    Object? experienceYears = null,
    Object? tradingStyle = null,
    Object? isVerified = null,
  }) {
    return _then(_$UserProfileImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: null == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<String>,
      expertise: null == expertise
          ? _value._expertise
          : expertise // ignore: cast_nullable_to_non_nullable
              as List<String>,
      experienceYears: null == experienceYears
          ? _value.experienceYears
          : experienceYears // ignore: cast_nullable_to_non_nullable
              as int,
      tradingStyle: null == tradingStyle
          ? _value.tradingStyle
          : tradingStyle // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileImpl implements _UserProfile {
  const _$UserProfileImpl(
      {required this.firstName,
      required this.lastName,
      required this.avatar,
      required this.bio,
      required this.dateOfBirth,
      required this.phoneNumber,
      required this.location,
      required this.timezone,
      required final List<String> interests,
      required final List<String> expertise,
      required this.experienceYears,
      required this.tradingStyle,
      required this.isVerified})
      : _interests = interests,
        _expertise = expertise;

  factory _$UserProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileImplFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String? avatar;
  @override
  final String? bio;
  @override
  final DateTime dateOfBirth;
  @override
  final String? phoneNumber;
  @override
  final String? location;
  @override
  final String? timezone;
  final List<String> _interests;
  @override
  List<String> get interests {
    if (_interests is EqualUnmodifiableListView) return _interests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_interests);
  }

  final List<String> _expertise;
  @override
  List<String> get expertise {
    if (_expertise is EqualUnmodifiableListView) return _expertise;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expertise);
  }

  @override
  final int experienceYears;
  @override
  final String tradingStyle;
  @override
  final bool isVerified;

  @override
  String toString() {
    return 'UserProfile(firstName: $firstName, lastName: $lastName, avatar: $avatar, bio: $bio, dateOfBirth: $dateOfBirth, phoneNumber: $phoneNumber, location: $location, timezone: $timezone, interests: $interests, expertise: $expertise, experienceYears: $experienceYears, tradingStyle: $tradingStyle, isVerified: $isVerified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
            const DeepCollectionEquality()
                .equals(other._expertise, _expertise) &&
            (identical(other.experienceYears, experienceYears) ||
                other.experienceYears == experienceYears) &&
            (identical(other.tradingStyle, tradingStyle) ||
                other.tradingStyle == tradingStyle) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      firstName,
      lastName,
      avatar,
      bio,
      dateOfBirth,
      phoneNumber,
      location,
      timezone,
      const DeepCollectionEquality().hash(_interests),
      const DeepCollectionEquality().hash(_expertise),
      experienceYears,
      tradingStyle,
      isVerified);

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      __$$UserProfileImplCopyWithImpl<_$UserProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileImplToJson(
      this,
    );
  }
}

abstract class _UserProfile implements UserProfile {
  const factory _UserProfile(
      {required final String firstName,
      required final String lastName,
      required final String? avatar,
      required final String? bio,
      required final DateTime dateOfBirth,
      required final String? phoneNumber,
      required final String? location,
      required final String? timezone,
      required final List<String> interests,
      required final List<String> expertise,
      required final int experienceYears,
      required final String tradingStyle,
      required final bool isVerified}) = _$UserProfileImpl;

  factory _UserProfile.fromJson(Map<String, dynamic> json) =
      _$UserProfileImpl.fromJson;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String? get avatar;
  @override
  String? get bio;
  @override
  DateTime get dateOfBirth;
  @override
  String? get phoneNumber;
  @override
  String? get location;
  @override
  String? get timezone;
  @override
  List<String> get interests;
  @override
  List<String> get expertise;
  @override
  int get experienceYears;
  @override
  String get tradingStyle;
  @override
  bool get isVerified;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserPreferences _$UserPreferencesFromJson(Map<String, dynamic> json) {
  return _UserPreferences.fromJson(json);
}

/// @nodoc
mixin _$UserPreferences {
  RiskTolerance get riskTolerance => throw _privateConstructorUsedError;
  InvestmentGoals get investmentGoals => throw _privateConstructorUsedError;
  List<String> get preferredSectors => throw _privateConstructorUsedError;
  List<String> get excludedSectors => throw _privateConstructorUsedError;
  List<String> get preferredAssets => throw _privateConstructorUsedError;
  List<String> get excludedAssets => throw _privateConstructorUsedError;
  NotificationSettings get notifications => throw _privateConstructorUsedError;
  DisplaySettings get display => throw _privateConstructorUsedError;
  PrivacySettings get privacy => throw _privateConstructorUsedError;
  List<String> get dataSources => throw _privateConstructorUsedError;
  List<String> get newsSources => throw _privateConstructorUsedError;
  bool get enableAIRecommendations => throw _privateConstructorUsedError;
  bool get enableBehavioralLearning => throw _privateConstructorUsedError;
  bool get enableSocialFeatures => throw _privateConstructorUsedError;

  /// Serializes this UserPreferences to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserPreferences
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserPreferencesCopyWith<UserPreferences> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPreferencesCopyWith<$Res> {
  factory $UserPreferencesCopyWith(
          UserPreferences value, $Res Function(UserPreferences) then) =
      _$UserPreferencesCopyWithImpl<$Res, UserPreferences>;
  @useResult
  $Res call(
      {RiskTolerance riskTolerance,
      InvestmentGoals investmentGoals,
      List<String> preferredSectors,
      List<String> excludedSectors,
      List<String> preferredAssets,
      List<String> excludedAssets,
      NotificationSettings notifications,
      DisplaySettings display,
      PrivacySettings privacy,
      List<String> dataSources,
      List<String> newsSources,
      bool enableAIRecommendations,
      bool enableBehavioralLearning,
      bool enableSocialFeatures});

  $RiskToleranceCopyWith<$Res> get riskTolerance;
  $InvestmentGoalsCopyWith<$Res> get investmentGoals;
  $NotificationSettingsCopyWith<$Res> get notifications;
  $DisplaySettingsCopyWith<$Res> get display;
  $PrivacySettingsCopyWith<$Res> get privacy;
}

/// @nodoc
class _$UserPreferencesCopyWithImpl<$Res, $Val extends UserPreferences>
    implements $UserPreferencesCopyWith<$Res> {
  _$UserPreferencesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserPreferences
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? riskTolerance = null,
    Object? investmentGoals = null,
    Object? preferredSectors = null,
    Object? excludedSectors = null,
    Object? preferredAssets = null,
    Object? excludedAssets = null,
    Object? notifications = null,
    Object? display = null,
    Object? privacy = null,
    Object? dataSources = null,
    Object? newsSources = null,
    Object? enableAIRecommendations = null,
    Object? enableBehavioralLearning = null,
    Object? enableSocialFeatures = null,
  }) {
    return _then(_value.copyWith(
      riskTolerance: null == riskTolerance
          ? _value.riskTolerance
          : riskTolerance // ignore: cast_nullable_to_non_nullable
              as RiskTolerance,
      investmentGoals: null == investmentGoals
          ? _value.investmentGoals
          : investmentGoals // ignore: cast_nullable_to_non_nullable
              as InvestmentGoals,
      preferredSectors: null == preferredSectors
          ? _value.preferredSectors
          : preferredSectors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      excludedSectors: null == excludedSectors
          ? _value.excludedSectors
          : excludedSectors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      preferredAssets: null == preferredAssets
          ? _value.preferredAssets
          : preferredAssets // ignore: cast_nullable_to_non_nullable
              as List<String>,
      excludedAssets: null == excludedAssets
          ? _value.excludedAssets
          : excludedAssets // ignore: cast_nullable_to_non_nullable
              as List<String>,
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as NotificationSettings,
      display: null == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as DisplaySettings,
      privacy: null == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as PrivacySettings,
      dataSources: null == dataSources
          ? _value.dataSources
          : dataSources // ignore: cast_nullable_to_non_nullable
              as List<String>,
      newsSources: null == newsSources
          ? _value.newsSources
          : newsSources // ignore: cast_nullable_to_non_nullable
              as List<String>,
      enableAIRecommendations: null == enableAIRecommendations
          ? _value.enableAIRecommendations
          : enableAIRecommendations // ignore: cast_nullable_to_non_nullable
              as bool,
      enableBehavioralLearning: null == enableBehavioralLearning
          ? _value.enableBehavioralLearning
          : enableBehavioralLearning // ignore: cast_nullable_to_non_nullable
              as bool,
      enableSocialFeatures: null == enableSocialFeatures
          ? _value.enableSocialFeatures
          : enableSocialFeatures // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of UserPreferences
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RiskToleranceCopyWith<$Res> get riskTolerance {
    return $RiskToleranceCopyWith<$Res>(_value.riskTolerance, (value) {
      return _then(_value.copyWith(riskTolerance: value) as $Val);
    });
  }

  /// Create a copy of UserPreferences
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvestmentGoalsCopyWith<$Res> get investmentGoals {
    return $InvestmentGoalsCopyWith<$Res>(_value.investmentGoals, (value) {
      return _then(_value.copyWith(investmentGoals: value) as $Val);
    });
  }

  /// Create a copy of UserPreferences
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationSettingsCopyWith<$Res> get notifications {
    return $NotificationSettingsCopyWith<$Res>(_value.notifications, (value) {
      return _then(_value.copyWith(notifications: value) as $Val);
    });
  }

  /// Create a copy of UserPreferences
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DisplaySettingsCopyWith<$Res> get display {
    return $DisplaySettingsCopyWith<$Res>(_value.display, (value) {
      return _then(_value.copyWith(display: value) as $Val);
    });
  }

  /// Create a copy of UserPreferences
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PrivacySettingsCopyWith<$Res> get privacy {
    return $PrivacySettingsCopyWith<$Res>(_value.privacy, (value) {
      return _then(_value.copyWith(privacy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserPreferencesImplCopyWith<$Res>
    implements $UserPreferencesCopyWith<$Res> {
  factory _$$UserPreferencesImplCopyWith(_$UserPreferencesImpl value,
          $Res Function(_$UserPreferencesImpl) then) =
      __$$UserPreferencesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RiskTolerance riskTolerance,
      InvestmentGoals investmentGoals,
      List<String> preferredSectors,
      List<String> excludedSectors,
      List<String> preferredAssets,
      List<String> excludedAssets,
      NotificationSettings notifications,
      DisplaySettings display,
      PrivacySettings privacy,
      List<String> dataSources,
      List<String> newsSources,
      bool enableAIRecommendations,
      bool enableBehavioralLearning,
      bool enableSocialFeatures});

  @override
  $RiskToleranceCopyWith<$Res> get riskTolerance;
  @override
  $InvestmentGoalsCopyWith<$Res> get investmentGoals;
  @override
  $NotificationSettingsCopyWith<$Res> get notifications;
  @override
  $DisplaySettingsCopyWith<$Res> get display;
  @override
  $PrivacySettingsCopyWith<$Res> get privacy;
}

/// @nodoc
class __$$UserPreferencesImplCopyWithImpl<$Res>
    extends _$UserPreferencesCopyWithImpl<$Res, _$UserPreferencesImpl>
    implements _$$UserPreferencesImplCopyWith<$Res> {
  __$$UserPreferencesImplCopyWithImpl(
      _$UserPreferencesImpl _value, $Res Function(_$UserPreferencesImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPreferences
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? riskTolerance = null,
    Object? investmentGoals = null,
    Object? preferredSectors = null,
    Object? excludedSectors = null,
    Object? preferredAssets = null,
    Object? excludedAssets = null,
    Object? notifications = null,
    Object? display = null,
    Object? privacy = null,
    Object? dataSources = null,
    Object? newsSources = null,
    Object? enableAIRecommendations = null,
    Object? enableBehavioralLearning = null,
    Object? enableSocialFeatures = null,
  }) {
    return _then(_$UserPreferencesImpl(
      riskTolerance: null == riskTolerance
          ? _value.riskTolerance
          : riskTolerance // ignore: cast_nullable_to_non_nullable
              as RiskTolerance,
      investmentGoals: null == investmentGoals
          ? _value.investmentGoals
          : investmentGoals // ignore: cast_nullable_to_non_nullable
              as InvestmentGoals,
      preferredSectors: null == preferredSectors
          ? _value._preferredSectors
          : preferredSectors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      excludedSectors: null == excludedSectors
          ? _value._excludedSectors
          : excludedSectors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      preferredAssets: null == preferredAssets
          ? _value._preferredAssets
          : preferredAssets // ignore: cast_nullable_to_non_nullable
              as List<String>,
      excludedAssets: null == excludedAssets
          ? _value._excludedAssets
          : excludedAssets // ignore: cast_nullable_to_non_nullable
              as List<String>,
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as NotificationSettings,
      display: null == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as DisplaySettings,
      privacy: null == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as PrivacySettings,
      dataSources: null == dataSources
          ? _value._dataSources
          : dataSources // ignore: cast_nullable_to_non_nullable
              as List<String>,
      newsSources: null == newsSources
          ? _value._newsSources
          : newsSources // ignore: cast_nullable_to_non_nullable
              as List<String>,
      enableAIRecommendations: null == enableAIRecommendations
          ? _value.enableAIRecommendations
          : enableAIRecommendations // ignore: cast_nullable_to_non_nullable
              as bool,
      enableBehavioralLearning: null == enableBehavioralLearning
          ? _value.enableBehavioralLearning
          : enableBehavioralLearning // ignore: cast_nullable_to_non_nullable
              as bool,
      enableSocialFeatures: null == enableSocialFeatures
          ? _value.enableSocialFeatures
          : enableSocialFeatures // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserPreferencesImpl implements _UserPreferences {
  const _$UserPreferencesImpl(
      {required this.riskTolerance,
      required this.investmentGoals,
      required final List<String> preferredSectors,
      required final List<String> excludedSectors,
      required final List<String> preferredAssets,
      required final List<String> excludedAssets,
      required this.notifications,
      required this.display,
      required this.privacy,
      required final List<String> dataSources,
      required final List<String> newsSources,
      required this.enableAIRecommendations,
      required this.enableBehavioralLearning,
      required this.enableSocialFeatures})
      : _preferredSectors = preferredSectors,
        _excludedSectors = excludedSectors,
        _preferredAssets = preferredAssets,
        _excludedAssets = excludedAssets,
        _dataSources = dataSources,
        _newsSources = newsSources;

  factory _$UserPreferencesImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserPreferencesImplFromJson(json);

  @override
  final RiskTolerance riskTolerance;
  @override
  final InvestmentGoals investmentGoals;
  final List<String> _preferredSectors;
  @override
  List<String> get preferredSectors {
    if (_preferredSectors is EqualUnmodifiableListView)
      return _preferredSectors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_preferredSectors);
  }

  final List<String> _excludedSectors;
  @override
  List<String> get excludedSectors {
    if (_excludedSectors is EqualUnmodifiableListView) return _excludedSectors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_excludedSectors);
  }

  final List<String> _preferredAssets;
  @override
  List<String> get preferredAssets {
    if (_preferredAssets is EqualUnmodifiableListView) return _preferredAssets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_preferredAssets);
  }

  final List<String> _excludedAssets;
  @override
  List<String> get excludedAssets {
    if (_excludedAssets is EqualUnmodifiableListView) return _excludedAssets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_excludedAssets);
  }

  @override
  final NotificationSettings notifications;
  @override
  final DisplaySettings display;
  @override
  final PrivacySettings privacy;
  final List<String> _dataSources;
  @override
  List<String> get dataSources {
    if (_dataSources is EqualUnmodifiableListView) return _dataSources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dataSources);
  }

  final List<String> _newsSources;
  @override
  List<String> get newsSources {
    if (_newsSources is EqualUnmodifiableListView) return _newsSources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newsSources);
  }

  @override
  final bool enableAIRecommendations;
  @override
  final bool enableBehavioralLearning;
  @override
  final bool enableSocialFeatures;

  @override
  String toString() {
    return 'UserPreferences(riskTolerance: $riskTolerance, investmentGoals: $investmentGoals, preferredSectors: $preferredSectors, excludedSectors: $excludedSectors, preferredAssets: $preferredAssets, excludedAssets: $excludedAssets, notifications: $notifications, display: $display, privacy: $privacy, dataSources: $dataSources, newsSources: $newsSources, enableAIRecommendations: $enableAIRecommendations, enableBehavioralLearning: $enableBehavioralLearning, enableSocialFeatures: $enableSocialFeatures)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPreferencesImpl &&
            (identical(other.riskTolerance, riskTolerance) ||
                other.riskTolerance == riskTolerance) &&
            (identical(other.investmentGoals, investmentGoals) ||
                other.investmentGoals == investmentGoals) &&
            const DeepCollectionEquality()
                .equals(other._preferredSectors, _preferredSectors) &&
            const DeepCollectionEquality()
                .equals(other._excludedSectors, _excludedSectors) &&
            const DeepCollectionEquality()
                .equals(other._preferredAssets, _preferredAssets) &&
            const DeepCollectionEquality()
                .equals(other._excludedAssets, _excludedAssets) &&
            (identical(other.notifications, notifications) ||
                other.notifications == notifications) &&
            (identical(other.display, display) || other.display == display) &&
            (identical(other.privacy, privacy) || other.privacy == privacy) &&
            const DeepCollectionEquality()
                .equals(other._dataSources, _dataSources) &&
            const DeepCollectionEquality()
                .equals(other._newsSources, _newsSources) &&
            (identical(
                    other.enableAIRecommendations, enableAIRecommendations) ||
                other.enableAIRecommendations == enableAIRecommendations) &&
            (identical(
                    other.enableBehavioralLearning, enableBehavioralLearning) ||
                other.enableBehavioralLearning == enableBehavioralLearning) &&
            (identical(other.enableSocialFeatures, enableSocialFeatures) ||
                other.enableSocialFeatures == enableSocialFeatures));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      riskTolerance,
      investmentGoals,
      const DeepCollectionEquality().hash(_preferredSectors),
      const DeepCollectionEquality().hash(_excludedSectors),
      const DeepCollectionEquality().hash(_preferredAssets),
      const DeepCollectionEquality().hash(_excludedAssets),
      notifications,
      display,
      privacy,
      const DeepCollectionEquality().hash(_dataSources),
      const DeepCollectionEquality().hash(_newsSources),
      enableAIRecommendations,
      enableBehavioralLearning,
      enableSocialFeatures);

  /// Create a copy of UserPreferences
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPreferencesImplCopyWith<_$UserPreferencesImpl> get copyWith =>
      __$$UserPreferencesImplCopyWithImpl<_$UserPreferencesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserPreferencesImplToJson(
      this,
    );
  }
}

abstract class _UserPreferences implements UserPreferences {
  const factory _UserPreferences(
      {required final RiskTolerance riskTolerance,
      required final InvestmentGoals investmentGoals,
      required final List<String> preferredSectors,
      required final List<String> excludedSectors,
      required final List<String> preferredAssets,
      required final List<String> excludedAssets,
      required final NotificationSettings notifications,
      required final DisplaySettings display,
      required final PrivacySettings privacy,
      required final List<String> dataSources,
      required final List<String> newsSources,
      required final bool enableAIRecommendations,
      required final bool enableBehavioralLearning,
      required final bool enableSocialFeatures}) = _$UserPreferencesImpl;

  factory _UserPreferences.fromJson(Map<String, dynamic> json) =
      _$UserPreferencesImpl.fromJson;

  @override
  RiskTolerance get riskTolerance;
  @override
  InvestmentGoals get investmentGoals;
  @override
  List<String> get preferredSectors;
  @override
  List<String> get excludedSectors;
  @override
  List<String> get preferredAssets;
  @override
  List<String> get excludedAssets;
  @override
  NotificationSettings get notifications;
  @override
  DisplaySettings get display;
  @override
  PrivacySettings get privacy;
  @override
  List<String> get dataSources;
  @override
  List<String> get newsSources;
  @override
  bool get enableAIRecommendations;
  @override
  bool get enableBehavioralLearning;
  @override
  bool get enableSocialFeatures;

  /// Create a copy of UserPreferences
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPreferencesImplCopyWith<_$UserPreferencesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RiskTolerance _$RiskToleranceFromJson(Map<String, dynamic> json) {
  return _RiskTolerance.fromJson(json);
}

/// @nodoc
mixin _$RiskTolerance {
  String get level => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;
  List<String> get characteristics => throw _privateConstructorUsedError;

  /// Serializes this RiskTolerance to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RiskTolerance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RiskToleranceCopyWith<RiskTolerance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RiskToleranceCopyWith<$Res> {
  factory $RiskToleranceCopyWith(
          RiskTolerance value, $Res Function(RiskTolerance) then) =
      _$RiskToleranceCopyWithImpl<$Res, RiskTolerance>;
  @useResult
  $Res call({String level, double score, List<String> characteristics});
}

/// @nodoc
class _$RiskToleranceCopyWithImpl<$Res, $Val extends RiskTolerance>
    implements $RiskToleranceCopyWith<$Res> {
  _$RiskToleranceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RiskTolerance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? score = null,
    Object? characteristics = null,
  }) {
    return _then(_value.copyWith(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      characteristics: null == characteristics
          ? _value.characteristics
          : characteristics // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RiskToleranceImplCopyWith<$Res>
    implements $RiskToleranceCopyWith<$Res> {
  factory _$$RiskToleranceImplCopyWith(
          _$RiskToleranceImpl value, $Res Function(_$RiskToleranceImpl) then) =
      __$$RiskToleranceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String level, double score, List<String> characteristics});
}

/// @nodoc
class __$$RiskToleranceImplCopyWithImpl<$Res>
    extends _$RiskToleranceCopyWithImpl<$Res, _$RiskToleranceImpl>
    implements _$$RiskToleranceImplCopyWith<$Res> {
  __$$RiskToleranceImplCopyWithImpl(
      _$RiskToleranceImpl _value, $Res Function(_$RiskToleranceImpl) _then)
      : super(_value, _then);

  /// Create a copy of RiskTolerance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? score = null,
    Object? characteristics = null,
  }) {
    return _then(_$RiskToleranceImpl(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      characteristics: null == characteristics
          ? _value._characteristics
          : characteristics // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RiskToleranceImpl implements _RiskTolerance {
  const _$RiskToleranceImpl(
      {required this.level,
      required this.score,
      required final List<String> characteristics})
      : _characteristics = characteristics;

  factory _$RiskToleranceImpl.fromJson(Map<String, dynamic> json) =>
      _$$RiskToleranceImplFromJson(json);

  @override
  final String level;
  @override
  final double score;
  final List<String> _characteristics;
  @override
  List<String> get characteristics {
    if (_characteristics is EqualUnmodifiableListView) return _characteristics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characteristics);
  }

  @override
  String toString() {
    return 'RiskTolerance(level: $level, score: $score, characteristics: $characteristics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RiskToleranceImpl &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.score, score) || other.score == score) &&
            const DeepCollectionEquality()
                .equals(other._characteristics, _characteristics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, level, score,
      const DeepCollectionEquality().hash(_characteristics));

  /// Create a copy of RiskTolerance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RiskToleranceImplCopyWith<_$RiskToleranceImpl> get copyWith =>
      __$$RiskToleranceImplCopyWithImpl<_$RiskToleranceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RiskToleranceImplToJson(
      this,
    );
  }
}

abstract class _RiskTolerance implements RiskTolerance {
  const factory _RiskTolerance(
      {required final String level,
      required final double score,
      required final List<String> characteristics}) = _$RiskToleranceImpl;

  factory _RiskTolerance.fromJson(Map<String, dynamic> json) =
      _$RiskToleranceImpl.fromJson;

  @override
  String get level;
  @override
  double get score;
  @override
  List<String> get characteristics;

  /// Create a copy of RiskTolerance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RiskToleranceImplCopyWith<_$RiskToleranceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InvestmentGoals _$InvestmentGoalsFromJson(Map<String, dynamic> json) {
  return _InvestmentGoals.fromJson(json);
}

/// @nodoc
mixin _$InvestmentGoals {
  List<String> get primaryGoals => throw _privateConstructorUsedError;
  List<String> get secondaryGoals => throw _privateConstructorUsedError;
  double get targetReturn => throw _privateConstructorUsedError;
  int get timeHorizon => throw _privateConstructorUsedError;
  double get initialInvestment => throw _privateConstructorUsedError;
  double get monthlyContribution => throw _privateConstructorUsedError;

  /// Serializes this InvestmentGoals to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvestmentGoals
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvestmentGoalsCopyWith<InvestmentGoals> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvestmentGoalsCopyWith<$Res> {
  factory $InvestmentGoalsCopyWith(
          InvestmentGoals value, $Res Function(InvestmentGoals) then) =
      _$InvestmentGoalsCopyWithImpl<$Res, InvestmentGoals>;
  @useResult
  $Res call(
      {List<String> primaryGoals,
      List<String> secondaryGoals,
      double targetReturn,
      int timeHorizon,
      double initialInvestment,
      double monthlyContribution});
}

/// @nodoc
class _$InvestmentGoalsCopyWithImpl<$Res, $Val extends InvestmentGoals>
    implements $InvestmentGoalsCopyWith<$Res> {
  _$InvestmentGoalsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvestmentGoals
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primaryGoals = null,
    Object? secondaryGoals = null,
    Object? targetReturn = null,
    Object? timeHorizon = null,
    Object? initialInvestment = null,
    Object? monthlyContribution = null,
  }) {
    return _then(_value.copyWith(
      primaryGoals: null == primaryGoals
          ? _value.primaryGoals
          : primaryGoals // ignore: cast_nullable_to_non_nullable
              as List<String>,
      secondaryGoals: null == secondaryGoals
          ? _value.secondaryGoals
          : secondaryGoals // ignore: cast_nullable_to_non_nullable
              as List<String>,
      targetReturn: null == targetReturn
          ? _value.targetReturn
          : targetReturn // ignore: cast_nullable_to_non_nullable
              as double,
      timeHorizon: null == timeHorizon
          ? _value.timeHorizon
          : timeHorizon // ignore: cast_nullable_to_non_nullable
              as int,
      initialInvestment: null == initialInvestment
          ? _value.initialInvestment
          : initialInvestment // ignore: cast_nullable_to_non_nullable
              as double,
      monthlyContribution: null == monthlyContribution
          ? _value.monthlyContribution
          : monthlyContribution // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvestmentGoalsImplCopyWith<$Res>
    implements $InvestmentGoalsCopyWith<$Res> {
  factory _$$InvestmentGoalsImplCopyWith(_$InvestmentGoalsImpl value,
          $Res Function(_$InvestmentGoalsImpl) then) =
      __$$InvestmentGoalsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> primaryGoals,
      List<String> secondaryGoals,
      double targetReturn,
      int timeHorizon,
      double initialInvestment,
      double monthlyContribution});
}

/// @nodoc
class __$$InvestmentGoalsImplCopyWithImpl<$Res>
    extends _$InvestmentGoalsCopyWithImpl<$Res, _$InvestmentGoalsImpl>
    implements _$$InvestmentGoalsImplCopyWith<$Res> {
  __$$InvestmentGoalsImplCopyWithImpl(
      _$InvestmentGoalsImpl _value, $Res Function(_$InvestmentGoalsImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvestmentGoals
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primaryGoals = null,
    Object? secondaryGoals = null,
    Object? targetReturn = null,
    Object? timeHorizon = null,
    Object? initialInvestment = null,
    Object? monthlyContribution = null,
  }) {
    return _then(_$InvestmentGoalsImpl(
      primaryGoals: null == primaryGoals
          ? _value._primaryGoals
          : primaryGoals // ignore: cast_nullable_to_non_nullable
              as List<String>,
      secondaryGoals: null == secondaryGoals
          ? _value._secondaryGoals
          : secondaryGoals // ignore: cast_nullable_to_non_nullable
              as List<String>,
      targetReturn: null == targetReturn
          ? _value.targetReturn
          : targetReturn // ignore: cast_nullable_to_non_nullable
              as double,
      timeHorizon: null == timeHorizon
          ? _value.timeHorizon
          : timeHorizon // ignore: cast_nullable_to_non_nullable
              as int,
      initialInvestment: null == initialInvestment
          ? _value.initialInvestment
          : initialInvestment // ignore: cast_nullable_to_non_nullable
              as double,
      monthlyContribution: null == monthlyContribution
          ? _value.monthlyContribution
          : monthlyContribution // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvestmentGoalsImpl implements _InvestmentGoals {
  const _$InvestmentGoalsImpl(
      {required final List<String> primaryGoals,
      required final List<String> secondaryGoals,
      required this.targetReturn,
      required this.timeHorizon,
      required this.initialInvestment,
      required this.monthlyContribution})
      : _primaryGoals = primaryGoals,
        _secondaryGoals = secondaryGoals;

  factory _$InvestmentGoalsImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvestmentGoalsImplFromJson(json);

  final List<String> _primaryGoals;
  @override
  List<String> get primaryGoals {
    if (_primaryGoals is EqualUnmodifiableListView) return _primaryGoals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_primaryGoals);
  }

  final List<String> _secondaryGoals;
  @override
  List<String> get secondaryGoals {
    if (_secondaryGoals is EqualUnmodifiableListView) return _secondaryGoals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_secondaryGoals);
  }

  @override
  final double targetReturn;
  @override
  final int timeHorizon;
  @override
  final double initialInvestment;
  @override
  final double monthlyContribution;

  @override
  String toString() {
    return 'InvestmentGoals(primaryGoals: $primaryGoals, secondaryGoals: $secondaryGoals, targetReturn: $targetReturn, timeHorizon: $timeHorizon, initialInvestment: $initialInvestment, monthlyContribution: $monthlyContribution)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvestmentGoalsImpl &&
            const DeepCollectionEquality()
                .equals(other._primaryGoals, _primaryGoals) &&
            const DeepCollectionEquality()
                .equals(other._secondaryGoals, _secondaryGoals) &&
            (identical(other.targetReturn, targetReturn) ||
                other.targetReturn == targetReturn) &&
            (identical(other.timeHorizon, timeHorizon) ||
                other.timeHorizon == timeHorizon) &&
            (identical(other.initialInvestment, initialInvestment) ||
                other.initialInvestment == initialInvestment) &&
            (identical(other.monthlyContribution, monthlyContribution) ||
                other.monthlyContribution == monthlyContribution));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_primaryGoals),
      const DeepCollectionEquality().hash(_secondaryGoals),
      targetReturn,
      timeHorizon,
      initialInvestment,
      monthlyContribution);

  /// Create a copy of InvestmentGoals
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvestmentGoalsImplCopyWith<_$InvestmentGoalsImpl> get copyWith =>
      __$$InvestmentGoalsImplCopyWithImpl<_$InvestmentGoalsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvestmentGoalsImplToJson(
      this,
    );
  }
}

abstract class _InvestmentGoals implements InvestmentGoals {
  const factory _InvestmentGoals(
      {required final List<String> primaryGoals,
      required final List<String> secondaryGoals,
      required final double targetReturn,
      required final int timeHorizon,
      required final double initialInvestment,
      required final double monthlyContribution}) = _$InvestmentGoalsImpl;

  factory _InvestmentGoals.fromJson(Map<String, dynamic> json) =
      _$InvestmentGoalsImpl.fromJson;

  @override
  List<String> get primaryGoals;
  @override
  List<String> get secondaryGoals;
  @override
  double get targetReturn;
  @override
  int get timeHorizon;
  @override
  double get initialInvestment;
  @override
  double get monthlyContribution;

  /// Create a copy of InvestmentGoals
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvestmentGoalsImplCopyWith<_$InvestmentGoalsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationSettings _$NotificationSettingsFromJson(Map<String, dynamic> json) {
  return _NotificationSettings.fromJson(json);
}

/// @nodoc
mixin _$NotificationSettings {
  bool get priceAlerts => throw _privateConstructorUsedError;
  bool get newsAlerts => throw _privateConstructorUsedError;
  bool get sentimentAlerts => throw _privateConstructorUsedError;
  bool get volumeAlerts => throw _privateConstructorUsedError;
  bool get patternAlerts => throw _privateConstructorUsedError;
  bool get earningsAlerts => throw _privateConstructorUsedError;
  bool get marketOpenClose => throw _privateConstructorUsedError;
  bool get weeklyDigest => throw _privateConstructorUsedError;
  bool get pushNotifications => throw _privateConstructorUsedError;
  bool get emailNotifications => throw _privateConstructorUsedError;
  bool get smsNotifications => throw _privateConstructorUsedError;

  /// Serializes this NotificationSettings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationSettingsCopyWith<NotificationSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationSettingsCopyWith<$Res> {
  factory $NotificationSettingsCopyWith(NotificationSettings value,
          $Res Function(NotificationSettings) then) =
      _$NotificationSettingsCopyWithImpl<$Res, NotificationSettings>;
  @useResult
  $Res call(
      {bool priceAlerts,
      bool newsAlerts,
      bool sentimentAlerts,
      bool volumeAlerts,
      bool patternAlerts,
      bool earningsAlerts,
      bool marketOpenClose,
      bool weeklyDigest,
      bool pushNotifications,
      bool emailNotifications,
      bool smsNotifications});
}

/// @nodoc
class _$NotificationSettingsCopyWithImpl<$Res,
        $Val extends NotificationSettings>
    implements $NotificationSettingsCopyWith<$Res> {
  _$NotificationSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? priceAlerts = null,
    Object? newsAlerts = null,
    Object? sentimentAlerts = null,
    Object? volumeAlerts = null,
    Object? patternAlerts = null,
    Object? earningsAlerts = null,
    Object? marketOpenClose = null,
    Object? weeklyDigest = null,
    Object? pushNotifications = null,
    Object? emailNotifications = null,
    Object? smsNotifications = null,
  }) {
    return _then(_value.copyWith(
      priceAlerts: null == priceAlerts
          ? _value.priceAlerts
          : priceAlerts // ignore: cast_nullable_to_non_nullable
              as bool,
      newsAlerts: null == newsAlerts
          ? _value.newsAlerts
          : newsAlerts // ignore: cast_nullable_to_non_nullable
              as bool,
      sentimentAlerts: null == sentimentAlerts
          ? _value.sentimentAlerts
          : sentimentAlerts // ignore: cast_nullable_to_non_nullable
              as bool,
      volumeAlerts: null == volumeAlerts
          ? _value.volumeAlerts
          : volumeAlerts // ignore: cast_nullable_to_non_nullable
              as bool,
      patternAlerts: null == patternAlerts
          ? _value.patternAlerts
          : patternAlerts // ignore: cast_nullable_to_non_nullable
              as bool,
      earningsAlerts: null == earningsAlerts
          ? _value.earningsAlerts
          : earningsAlerts // ignore: cast_nullable_to_non_nullable
              as bool,
      marketOpenClose: null == marketOpenClose
          ? _value.marketOpenClose
          : marketOpenClose // ignore: cast_nullable_to_non_nullable
              as bool,
      weeklyDigest: null == weeklyDigest
          ? _value.weeklyDigest
          : weeklyDigest // ignore: cast_nullable_to_non_nullable
              as bool,
      pushNotifications: null == pushNotifications
          ? _value.pushNotifications
          : pushNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      emailNotifications: null == emailNotifications
          ? _value.emailNotifications
          : emailNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      smsNotifications: null == smsNotifications
          ? _value.smsNotifications
          : smsNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationSettingsImplCopyWith<$Res>
    implements $NotificationSettingsCopyWith<$Res> {
  factory _$$NotificationSettingsImplCopyWith(_$NotificationSettingsImpl value,
          $Res Function(_$NotificationSettingsImpl) then) =
      __$$NotificationSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool priceAlerts,
      bool newsAlerts,
      bool sentimentAlerts,
      bool volumeAlerts,
      bool patternAlerts,
      bool earningsAlerts,
      bool marketOpenClose,
      bool weeklyDigest,
      bool pushNotifications,
      bool emailNotifications,
      bool smsNotifications});
}

/// @nodoc
class __$$NotificationSettingsImplCopyWithImpl<$Res>
    extends _$NotificationSettingsCopyWithImpl<$Res, _$NotificationSettingsImpl>
    implements _$$NotificationSettingsImplCopyWith<$Res> {
  __$$NotificationSettingsImplCopyWithImpl(_$NotificationSettingsImpl _value,
      $Res Function(_$NotificationSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? priceAlerts = null,
    Object? newsAlerts = null,
    Object? sentimentAlerts = null,
    Object? volumeAlerts = null,
    Object? patternAlerts = null,
    Object? earningsAlerts = null,
    Object? marketOpenClose = null,
    Object? weeklyDigest = null,
    Object? pushNotifications = null,
    Object? emailNotifications = null,
    Object? smsNotifications = null,
  }) {
    return _then(_$NotificationSettingsImpl(
      priceAlerts: null == priceAlerts
          ? _value.priceAlerts
          : priceAlerts // ignore: cast_nullable_to_non_nullable
              as bool,
      newsAlerts: null == newsAlerts
          ? _value.newsAlerts
          : newsAlerts // ignore: cast_nullable_to_non_nullable
              as bool,
      sentimentAlerts: null == sentimentAlerts
          ? _value.sentimentAlerts
          : sentimentAlerts // ignore: cast_nullable_to_non_nullable
              as bool,
      volumeAlerts: null == volumeAlerts
          ? _value.volumeAlerts
          : volumeAlerts // ignore: cast_nullable_to_non_nullable
              as bool,
      patternAlerts: null == patternAlerts
          ? _value.patternAlerts
          : patternAlerts // ignore: cast_nullable_to_non_nullable
              as bool,
      earningsAlerts: null == earningsAlerts
          ? _value.earningsAlerts
          : earningsAlerts // ignore: cast_nullable_to_non_nullable
              as bool,
      marketOpenClose: null == marketOpenClose
          ? _value.marketOpenClose
          : marketOpenClose // ignore: cast_nullable_to_non_nullable
              as bool,
      weeklyDigest: null == weeklyDigest
          ? _value.weeklyDigest
          : weeklyDigest // ignore: cast_nullable_to_non_nullable
              as bool,
      pushNotifications: null == pushNotifications
          ? _value.pushNotifications
          : pushNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      emailNotifications: null == emailNotifications
          ? _value.emailNotifications
          : emailNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      smsNotifications: null == smsNotifications
          ? _value.smsNotifications
          : smsNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationSettingsImpl implements _NotificationSettings {
  const _$NotificationSettingsImpl(
      {required this.priceAlerts,
      required this.newsAlerts,
      required this.sentimentAlerts,
      required this.volumeAlerts,
      required this.patternAlerts,
      required this.earningsAlerts,
      required this.marketOpenClose,
      required this.weeklyDigest,
      required this.pushNotifications,
      required this.emailNotifications,
      required this.smsNotifications});

  factory _$NotificationSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationSettingsImplFromJson(json);

  @override
  final bool priceAlerts;
  @override
  final bool newsAlerts;
  @override
  final bool sentimentAlerts;
  @override
  final bool volumeAlerts;
  @override
  final bool patternAlerts;
  @override
  final bool earningsAlerts;
  @override
  final bool marketOpenClose;
  @override
  final bool weeklyDigest;
  @override
  final bool pushNotifications;
  @override
  final bool emailNotifications;
  @override
  final bool smsNotifications;

  @override
  String toString() {
    return 'NotificationSettings(priceAlerts: $priceAlerts, newsAlerts: $newsAlerts, sentimentAlerts: $sentimentAlerts, volumeAlerts: $volumeAlerts, patternAlerts: $patternAlerts, earningsAlerts: $earningsAlerts, marketOpenClose: $marketOpenClose, weeklyDigest: $weeklyDigest, pushNotifications: $pushNotifications, emailNotifications: $emailNotifications, smsNotifications: $smsNotifications)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationSettingsImpl &&
            (identical(other.priceAlerts, priceAlerts) ||
                other.priceAlerts == priceAlerts) &&
            (identical(other.newsAlerts, newsAlerts) ||
                other.newsAlerts == newsAlerts) &&
            (identical(other.sentimentAlerts, sentimentAlerts) ||
                other.sentimentAlerts == sentimentAlerts) &&
            (identical(other.volumeAlerts, volumeAlerts) ||
                other.volumeAlerts == volumeAlerts) &&
            (identical(other.patternAlerts, patternAlerts) ||
                other.patternAlerts == patternAlerts) &&
            (identical(other.earningsAlerts, earningsAlerts) ||
                other.earningsAlerts == earningsAlerts) &&
            (identical(other.marketOpenClose, marketOpenClose) ||
                other.marketOpenClose == marketOpenClose) &&
            (identical(other.weeklyDigest, weeklyDigest) ||
                other.weeklyDigest == weeklyDigest) &&
            (identical(other.pushNotifications, pushNotifications) ||
                other.pushNotifications == pushNotifications) &&
            (identical(other.emailNotifications, emailNotifications) ||
                other.emailNotifications == emailNotifications) &&
            (identical(other.smsNotifications, smsNotifications) ||
                other.smsNotifications == smsNotifications));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      priceAlerts,
      newsAlerts,
      sentimentAlerts,
      volumeAlerts,
      patternAlerts,
      earningsAlerts,
      marketOpenClose,
      weeklyDigest,
      pushNotifications,
      emailNotifications,
      smsNotifications);

  /// Create a copy of NotificationSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationSettingsImplCopyWith<_$NotificationSettingsImpl>
      get copyWith =>
          __$$NotificationSettingsImplCopyWithImpl<_$NotificationSettingsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationSettingsImplToJson(
      this,
    );
  }
}

abstract class _NotificationSettings implements NotificationSettings {
  const factory _NotificationSettings(
      {required final bool priceAlerts,
      required final bool newsAlerts,
      required final bool sentimentAlerts,
      required final bool volumeAlerts,
      required final bool patternAlerts,
      required final bool earningsAlerts,
      required final bool marketOpenClose,
      required final bool weeklyDigest,
      required final bool pushNotifications,
      required final bool emailNotifications,
      required final bool smsNotifications}) = _$NotificationSettingsImpl;

  factory _NotificationSettings.fromJson(Map<String, dynamic> json) =
      _$NotificationSettingsImpl.fromJson;

  @override
  bool get priceAlerts;
  @override
  bool get newsAlerts;
  @override
  bool get sentimentAlerts;
  @override
  bool get volumeAlerts;
  @override
  bool get patternAlerts;
  @override
  bool get earningsAlerts;
  @override
  bool get marketOpenClose;
  @override
  bool get weeklyDigest;
  @override
  bool get pushNotifications;
  @override
  bool get emailNotifications;
  @override
  bool get smsNotifications;

  /// Create a copy of NotificationSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationSettingsImplCopyWith<_$NotificationSettingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DisplaySettings _$DisplaySettingsFromJson(Map<String, dynamic> json) {
  return _DisplaySettings.fromJson(json);
}

/// @nodoc
mixin _$DisplaySettings {
  String get theme => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  bool get darkMode => throw _privateConstructorUsedError;
  bool get compactMode => throw _privateConstructorUsedError;
  List<String> get defaultCharts => throw _privateConstructorUsedError;
  List<String> get visibleMetrics => throw _privateConstructorUsedError;

  /// Serializes this DisplaySettings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DisplaySettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DisplaySettingsCopyWith<DisplaySettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisplaySettingsCopyWith<$Res> {
  factory $DisplaySettingsCopyWith(
          DisplaySettings value, $Res Function(DisplaySettings) then) =
      _$DisplaySettingsCopyWithImpl<$Res, DisplaySettings>;
  @useResult
  $Res call(
      {String theme,
      String currency,
      String language,
      bool darkMode,
      bool compactMode,
      List<String> defaultCharts,
      List<String> visibleMetrics});
}

/// @nodoc
class _$DisplaySettingsCopyWithImpl<$Res, $Val extends DisplaySettings>
    implements $DisplaySettingsCopyWith<$Res> {
  _$DisplaySettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DisplaySettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
    Object? currency = null,
    Object? language = null,
    Object? darkMode = null,
    Object? compactMode = null,
    Object? defaultCharts = null,
    Object? visibleMetrics = null,
  }) {
    return _then(_value.copyWith(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      darkMode: null == darkMode
          ? _value.darkMode
          : darkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      compactMode: null == compactMode
          ? _value.compactMode
          : compactMode // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultCharts: null == defaultCharts
          ? _value.defaultCharts
          : defaultCharts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      visibleMetrics: null == visibleMetrics
          ? _value.visibleMetrics
          : visibleMetrics // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DisplaySettingsImplCopyWith<$Res>
    implements $DisplaySettingsCopyWith<$Res> {
  factory _$$DisplaySettingsImplCopyWith(_$DisplaySettingsImpl value,
          $Res Function(_$DisplaySettingsImpl) then) =
      __$$DisplaySettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String theme,
      String currency,
      String language,
      bool darkMode,
      bool compactMode,
      List<String> defaultCharts,
      List<String> visibleMetrics});
}

/// @nodoc
class __$$DisplaySettingsImplCopyWithImpl<$Res>
    extends _$DisplaySettingsCopyWithImpl<$Res, _$DisplaySettingsImpl>
    implements _$$DisplaySettingsImplCopyWith<$Res> {
  __$$DisplaySettingsImplCopyWithImpl(
      _$DisplaySettingsImpl _value, $Res Function(_$DisplaySettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DisplaySettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
    Object? currency = null,
    Object? language = null,
    Object? darkMode = null,
    Object? compactMode = null,
    Object? defaultCharts = null,
    Object? visibleMetrics = null,
  }) {
    return _then(_$DisplaySettingsImpl(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      darkMode: null == darkMode
          ? _value.darkMode
          : darkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      compactMode: null == compactMode
          ? _value.compactMode
          : compactMode // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultCharts: null == defaultCharts
          ? _value._defaultCharts
          : defaultCharts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      visibleMetrics: null == visibleMetrics
          ? _value._visibleMetrics
          : visibleMetrics // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DisplaySettingsImpl implements _DisplaySettings {
  const _$DisplaySettingsImpl(
      {required this.theme,
      required this.currency,
      required this.language,
      required this.darkMode,
      required this.compactMode,
      required final List<String> defaultCharts,
      required final List<String> visibleMetrics})
      : _defaultCharts = defaultCharts,
        _visibleMetrics = visibleMetrics;

  factory _$DisplaySettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DisplaySettingsImplFromJson(json);

  @override
  final String theme;
  @override
  final String currency;
  @override
  final String language;
  @override
  final bool darkMode;
  @override
  final bool compactMode;
  final List<String> _defaultCharts;
  @override
  List<String> get defaultCharts {
    if (_defaultCharts is EqualUnmodifiableListView) return _defaultCharts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_defaultCharts);
  }

  final List<String> _visibleMetrics;
  @override
  List<String> get visibleMetrics {
    if (_visibleMetrics is EqualUnmodifiableListView) return _visibleMetrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_visibleMetrics);
  }

  @override
  String toString() {
    return 'DisplaySettings(theme: $theme, currency: $currency, language: $language, darkMode: $darkMode, compactMode: $compactMode, defaultCharts: $defaultCharts, visibleMetrics: $visibleMetrics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplaySettingsImpl &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.darkMode, darkMode) ||
                other.darkMode == darkMode) &&
            (identical(other.compactMode, compactMode) ||
                other.compactMode == compactMode) &&
            const DeepCollectionEquality()
                .equals(other._defaultCharts, _defaultCharts) &&
            const DeepCollectionEquality()
                .equals(other._visibleMetrics, _visibleMetrics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      theme,
      currency,
      language,
      darkMode,
      compactMode,
      const DeepCollectionEquality().hash(_defaultCharts),
      const DeepCollectionEquality().hash(_visibleMetrics));

  /// Create a copy of DisplaySettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DisplaySettingsImplCopyWith<_$DisplaySettingsImpl> get copyWith =>
      __$$DisplaySettingsImplCopyWithImpl<_$DisplaySettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DisplaySettingsImplToJson(
      this,
    );
  }
}

abstract class _DisplaySettings implements DisplaySettings {
  const factory _DisplaySettings(
      {required final String theme,
      required final String currency,
      required final String language,
      required final bool darkMode,
      required final bool compactMode,
      required final List<String> defaultCharts,
      required final List<String> visibleMetrics}) = _$DisplaySettingsImpl;

  factory _DisplaySettings.fromJson(Map<String, dynamic> json) =
      _$DisplaySettingsImpl.fromJson;

  @override
  String get theme;
  @override
  String get currency;
  @override
  String get language;
  @override
  bool get darkMode;
  @override
  bool get compactMode;
  @override
  List<String> get defaultCharts;
  @override
  List<String> get visibleMetrics;

  /// Create a copy of DisplaySettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DisplaySettingsImplCopyWith<_$DisplaySettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PrivacySettings _$PrivacySettingsFromJson(Map<String, dynamic> json) {
  return _PrivacySettings.fromJson(json);
}

/// @nodoc
mixin _$PrivacySettings {
  bool get sharePortfolio => throw _privateConstructorUsedError;
  bool get shareWatchlist => throw _privateConstructorUsedError;
  bool get shareActivity => throw _privateConstructorUsedError;
  bool get allowAnalytics => throw _privateConstructorUsedError;
  bool get allowPersonalization => throw _privateConstructorUsedError;
  List<String> get blockedUsers => throw _privateConstructorUsedError;

  /// Serializes this PrivacySettings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PrivacySettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrivacySettingsCopyWith<PrivacySettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivacySettingsCopyWith<$Res> {
  factory $PrivacySettingsCopyWith(
          PrivacySettings value, $Res Function(PrivacySettings) then) =
      _$PrivacySettingsCopyWithImpl<$Res, PrivacySettings>;
  @useResult
  $Res call(
      {bool sharePortfolio,
      bool shareWatchlist,
      bool shareActivity,
      bool allowAnalytics,
      bool allowPersonalization,
      List<String> blockedUsers});
}

/// @nodoc
class _$PrivacySettingsCopyWithImpl<$Res, $Val extends PrivacySettings>
    implements $PrivacySettingsCopyWith<$Res> {
  _$PrivacySettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrivacySettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sharePortfolio = null,
    Object? shareWatchlist = null,
    Object? shareActivity = null,
    Object? allowAnalytics = null,
    Object? allowPersonalization = null,
    Object? blockedUsers = null,
  }) {
    return _then(_value.copyWith(
      sharePortfolio: null == sharePortfolio
          ? _value.sharePortfolio
          : sharePortfolio // ignore: cast_nullable_to_non_nullable
              as bool,
      shareWatchlist: null == shareWatchlist
          ? _value.shareWatchlist
          : shareWatchlist // ignore: cast_nullable_to_non_nullable
              as bool,
      shareActivity: null == shareActivity
          ? _value.shareActivity
          : shareActivity // ignore: cast_nullable_to_non_nullable
              as bool,
      allowAnalytics: null == allowAnalytics
          ? _value.allowAnalytics
          : allowAnalytics // ignore: cast_nullable_to_non_nullable
              as bool,
      allowPersonalization: null == allowPersonalization
          ? _value.allowPersonalization
          : allowPersonalization // ignore: cast_nullable_to_non_nullable
              as bool,
      blockedUsers: null == blockedUsers
          ? _value.blockedUsers
          : blockedUsers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrivacySettingsImplCopyWith<$Res>
    implements $PrivacySettingsCopyWith<$Res> {
  factory _$$PrivacySettingsImplCopyWith(_$PrivacySettingsImpl value,
          $Res Function(_$PrivacySettingsImpl) then) =
      __$$PrivacySettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool sharePortfolio,
      bool shareWatchlist,
      bool shareActivity,
      bool allowAnalytics,
      bool allowPersonalization,
      List<String> blockedUsers});
}

/// @nodoc
class __$$PrivacySettingsImplCopyWithImpl<$Res>
    extends _$PrivacySettingsCopyWithImpl<$Res, _$PrivacySettingsImpl>
    implements _$$PrivacySettingsImplCopyWith<$Res> {
  __$$PrivacySettingsImplCopyWithImpl(
      _$PrivacySettingsImpl _value, $Res Function(_$PrivacySettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrivacySettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sharePortfolio = null,
    Object? shareWatchlist = null,
    Object? shareActivity = null,
    Object? allowAnalytics = null,
    Object? allowPersonalization = null,
    Object? blockedUsers = null,
  }) {
    return _then(_$PrivacySettingsImpl(
      sharePortfolio: null == sharePortfolio
          ? _value.sharePortfolio
          : sharePortfolio // ignore: cast_nullable_to_non_nullable
              as bool,
      shareWatchlist: null == shareWatchlist
          ? _value.shareWatchlist
          : shareWatchlist // ignore: cast_nullable_to_non_nullable
              as bool,
      shareActivity: null == shareActivity
          ? _value.shareActivity
          : shareActivity // ignore: cast_nullable_to_non_nullable
              as bool,
      allowAnalytics: null == allowAnalytics
          ? _value.allowAnalytics
          : allowAnalytics // ignore: cast_nullable_to_non_nullable
              as bool,
      allowPersonalization: null == allowPersonalization
          ? _value.allowPersonalization
          : allowPersonalization // ignore: cast_nullable_to_non_nullable
              as bool,
      blockedUsers: null == blockedUsers
          ? _value._blockedUsers
          : blockedUsers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrivacySettingsImpl implements _PrivacySettings {
  const _$PrivacySettingsImpl(
      {required this.sharePortfolio,
      required this.shareWatchlist,
      required this.shareActivity,
      required this.allowAnalytics,
      required this.allowPersonalization,
      required final List<String> blockedUsers})
      : _blockedUsers = blockedUsers;

  factory _$PrivacySettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrivacySettingsImplFromJson(json);

  @override
  final bool sharePortfolio;
  @override
  final bool shareWatchlist;
  @override
  final bool shareActivity;
  @override
  final bool allowAnalytics;
  @override
  final bool allowPersonalization;
  final List<String> _blockedUsers;
  @override
  List<String> get blockedUsers {
    if (_blockedUsers is EqualUnmodifiableListView) return _blockedUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blockedUsers);
  }

  @override
  String toString() {
    return 'PrivacySettings(sharePortfolio: $sharePortfolio, shareWatchlist: $shareWatchlist, shareActivity: $shareActivity, allowAnalytics: $allowAnalytics, allowPersonalization: $allowPersonalization, blockedUsers: $blockedUsers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrivacySettingsImpl &&
            (identical(other.sharePortfolio, sharePortfolio) ||
                other.sharePortfolio == sharePortfolio) &&
            (identical(other.shareWatchlist, shareWatchlist) ||
                other.shareWatchlist == shareWatchlist) &&
            (identical(other.shareActivity, shareActivity) ||
                other.shareActivity == shareActivity) &&
            (identical(other.allowAnalytics, allowAnalytics) ||
                other.allowAnalytics == allowAnalytics) &&
            (identical(other.allowPersonalization, allowPersonalization) ||
                other.allowPersonalization == allowPersonalization) &&
            const DeepCollectionEquality()
                .equals(other._blockedUsers, _blockedUsers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sharePortfolio,
      shareWatchlist,
      shareActivity,
      allowAnalytics,
      allowPersonalization,
      const DeepCollectionEquality().hash(_blockedUsers));

  /// Create a copy of PrivacySettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrivacySettingsImplCopyWith<_$PrivacySettingsImpl> get copyWith =>
      __$$PrivacySettingsImplCopyWithImpl<_$PrivacySettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrivacySettingsImplToJson(
      this,
    );
  }
}

abstract class _PrivacySettings implements PrivacySettings {
  const factory _PrivacySettings(
      {required final bool sharePortfolio,
      required final bool shareWatchlist,
      required final bool shareActivity,
      required final bool allowAnalytics,
      required final bool allowPersonalization,
      required final List<String> blockedUsers}) = _$PrivacySettingsImpl;

  factory _PrivacySettings.fromJson(Map<String, dynamic> json) =
      _$PrivacySettingsImpl.fromJson;

  @override
  bool get sharePortfolio;
  @override
  bool get shareWatchlist;
  @override
  bool get shareActivity;
  @override
  bool get allowAnalytics;
  @override
  bool get allowPersonalization;
  @override
  List<String> get blockedUsers;

  /// Create a copy of PrivacySettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrivacySettingsImplCopyWith<_$PrivacySettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserBehavior _$UserBehaviorFromJson(Map<String, dynamic> json) {
  return _UserBehavior.fromJson(json);
}

/// @nodoc
mixin _$UserBehavior {
  List<BehavioralPattern> get patterns => throw _privateConstructorUsedError;
  List<InteractionPattern> get interactionPatterns =>
      throw _privateConstructorUsedError;
  List<LearningPreference> get learningPreferences =>
      throw _privateConstructorUsedError;
  List<DecisionPattern> get decisionPatterns =>
      throw _privateConstructorUsedError;
  List<RiskBehavior> get riskBehaviors => throw _privateConstructorUsedError;
  List<TimePattern> get timePatterns => throw _privateConstructorUsedError;
  List<DevicePattern> get devicePatterns => throw _privateConstructorUsedError;
  double get engagementScore => throw _privateConstructorUsedError;
  double get consistencyScore => throw _privateConstructorUsedError;
  double get sophisticationScore => throw _privateConstructorUsedError;

  /// Serializes this UserBehavior to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserBehavior
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserBehaviorCopyWith<UserBehavior> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBehaviorCopyWith<$Res> {
  factory $UserBehaviorCopyWith(
          UserBehavior value, $Res Function(UserBehavior) then) =
      _$UserBehaviorCopyWithImpl<$Res, UserBehavior>;
  @useResult
  $Res call(
      {List<BehavioralPattern> patterns,
      List<InteractionPattern> interactionPatterns,
      List<LearningPreference> learningPreferences,
      List<DecisionPattern> decisionPatterns,
      List<RiskBehavior> riskBehaviors,
      List<TimePattern> timePatterns,
      List<DevicePattern> devicePatterns,
      double engagementScore,
      double consistencyScore,
      double sophisticationScore});
}

/// @nodoc
class _$UserBehaviorCopyWithImpl<$Res, $Val extends UserBehavior>
    implements $UserBehaviorCopyWith<$Res> {
  _$UserBehaviorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserBehavior
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patterns = null,
    Object? interactionPatterns = null,
    Object? learningPreferences = null,
    Object? decisionPatterns = null,
    Object? riskBehaviors = null,
    Object? timePatterns = null,
    Object? devicePatterns = null,
    Object? engagementScore = null,
    Object? consistencyScore = null,
    Object? sophisticationScore = null,
  }) {
    return _then(_value.copyWith(
      patterns: null == patterns
          ? _value.patterns
          : patterns // ignore: cast_nullable_to_non_nullable
              as List<BehavioralPattern>,
      interactionPatterns: null == interactionPatterns
          ? _value.interactionPatterns
          : interactionPatterns // ignore: cast_nullable_to_non_nullable
              as List<InteractionPattern>,
      learningPreferences: null == learningPreferences
          ? _value.learningPreferences
          : learningPreferences // ignore: cast_nullable_to_non_nullable
              as List<LearningPreference>,
      decisionPatterns: null == decisionPatterns
          ? _value.decisionPatterns
          : decisionPatterns // ignore: cast_nullable_to_non_nullable
              as List<DecisionPattern>,
      riskBehaviors: null == riskBehaviors
          ? _value.riskBehaviors
          : riskBehaviors // ignore: cast_nullable_to_non_nullable
              as List<RiskBehavior>,
      timePatterns: null == timePatterns
          ? _value.timePatterns
          : timePatterns // ignore: cast_nullable_to_non_nullable
              as List<TimePattern>,
      devicePatterns: null == devicePatterns
          ? _value.devicePatterns
          : devicePatterns // ignore: cast_nullable_to_non_nullable
              as List<DevicePattern>,
      engagementScore: null == engagementScore
          ? _value.engagementScore
          : engagementScore // ignore: cast_nullable_to_non_nullable
              as double,
      consistencyScore: null == consistencyScore
          ? _value.consistencyScore
          : consistencyScore // ignore: cast_nullable_to_non_nullable
              as double,
      sophisticationScore: null == sophisticationScore
          ? _value.sophisticationScore
          : sophisticationScore // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserBehaviorImplCopyWith<$Res>
    implements $UserBehaviorCopyWith<$Res> {
  factory _$$UserBehaviorImplCopyWith(
          _$UserBehaviorImpl value, $Res Function(_$UserBehaviorImpl) then) =
      __$$UserBehaviorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BehavioralPattern> patterns,
      List<InteractionPattern> interactionPatterns,
      List<LearningPreference> learningPreferences,
      List<DecisionPattern> decisionPatterns,
      List<RiskBehavior> riskBehaviors,
      List<TimePattern> timePatterns,
      List<DevicePattern> devicePatterns,
      double engagementScore,
      double consistencyScore,
      double sophisticationScore});
}

/// @nodoc
class __$$UserBehaviorImplCopyWithImpl<$Res>
    extends _$UserBehaviorCopyWithImpl<$Res, _$UserBehaviorImpl>
    implements _$$UserBehaviorImplCopyWith<$Res> {
  __$$UserBehaviorImplCopyWithImpl(
      _$UserBehaviorImpl _value, $Res Function(_$UserBehaviorImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserBehavior
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patterns = null,
    Object? interactionPatterns = null,
    Object? learningPreferences = null,
    Object? decisionPatterns = null,
    Object? riskBehaviors = null,
    Object? timePatterns = null,
    Object? devicePatterns = null,
    Object? engagementScore = null,
    Object? consistencyScore = null,
    Object? sophisticationScore = null,
  }) {
    return _then(_$UserBehaviorImpl(
      patterns: null == patterns
          ? _value._patterns
          : patterns // ignore: cast_nullable_to_non_nullable
              as List<BehavioralPattern>,
      interactionPatterns: null == interactionPatterns
          ? _value._interactionPatterns
          : interactionPatterns // ignore: cast_nullable_to_non_nullable
              as List<InteractionPattern>,
      learningPreferences: null == learningPreferences
          ? _value._learningPreferences
          : learningPreferences // ignore: cast_nullable_to_non_nullable
              as List<LearningPreference>,
      decisionPatterns: null == decisionPatterns
          ? _value._decisionPatterns
          : decisionPatterns // ignore: cast_nullable_to_non_nullable
              as List<DecisionPattern>,
      riskBehaviors: null == riskBehaviors
          ? _value._riskBehaviors
          : riskBehaviors // ignore: cast_nullable_to_non_nullable
              as List<RiskBehavior>,
      timePatterns: null == timePatterns
          ? _value._timePatterns
          : timePatterns // ignore: cast_nullable_to_non_nullable
              as List<TimePattern>,
      devicePatterns: null == devicePatterns
          ? _value._devicePatterns
          : devicePatterns // ignore: cast_nullable_to_non_nullable
              as List<DevicePattern>,
      engagementScore: null == engagementScore
          ? _value.engagementScore
          : engagementScore // ignore: cast_nullable_to_non_nullable
              as double,
      consistencyScore: null == consistencyScore
          ? _value.consistencyScore
          : consistencyScore // ignore: cast_nullable_to_non_nullable
              as double,
      sophisticationScore: null == sophisticationScore
          ? _value.sophisticationScore
          : sophisticationScore // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserBehaviorImpl implements _UserBehavior {
  const _$UserBehaviorImpl(
      {required final List<BehavioralPattern> patterns,
      required final List<InteractionPattern> interactionPatterns,
      required final List<LearningPreference> learningPreferences,
      required final List<DecisionPattern> decisionPatterns,
      required final List<RiskBehavior> riskBehaviors,
      required final List<TimePattern> timePatterns,
      required final List<DevicePattern> devicePatterns,
      required this.engagementScore,
      required this.consistencyScore,
      required this.sophisticationScore})
      : _patterns = patterns,
        _interactionPatterns = interactionPatterns,
        _learningPreferences = learningPreferences,
        _decisionPatterns = decisionPatterns,
        _riskBehaviors = riskBehaviors,
        _timePatterns = timePatterns,
        _devicePatterns = devicePatterns;

  factory _$UserBehaviorImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserBehaviorImplFromJson(json);

  final List<BehavioralPattern> _patterns;
  @override
  List<BehavioralPattern> get patterns {
    if (_patterns is EqualUnmodifiableListView) return _patterns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_patterns);
  }

  final List<InteractionPattern> _interactionPatterns;
  @override
  List<InteractionPattern> get interactionPatterns {
    if (_interactionPatterns is EqualUnmodifiableListView)
      return _interactionPatterns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_interactionPatterns);
  }

  final List<LearningPreference> _learningPreferences;
  @override
  List<LearningPreference> get learningPreferences {
    if (_learningPreferences is EqualUnmodifiableListView)
      return _learningPreferences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_learningPreferences);
  }

  final List<DecisionPattern> _decisionPatterns;
  @override
  List<DecisionPattern> get decisionPatterns {
    if (_decisionPatterns is EqualUnmodifiableListView)
      return _decisionPatterns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_decisionPatterns);
  }

  final List<RiskBehavior> _riskBehaviors;
  @override
  List<RiskBehavior> get riskBehaviors {
    if (_riskBehaviors is EqualUnmodifiableListView) return _riskBehaviors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_riskBehaviors);
  }

  final List<TimePattern> _timePatterns;
  @override
  List<TimePattern> get timePatterns {
    if (_timePatterns is EqualUnmodifiableListView) return _timePatterns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timePatterns);
  }

  final List<DevicePattern> _devicePatterns;
  @override
  List<DevicePattern> get devicePatterns {
    if (_devicePatterns is EqualUnmodifiableListView) return _devicePatterns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_devicePatterns);
  }

  @override
  final double engagementScore;
  @override
  final double consistencyScore;
  @override
  final double sophisticationScore;

  @override
  String toString() {
    return 'UserBehavior(patterns: $patterns, interactionPatterns: $interactionPatterns, learningPreferences: $learningPreferences, decisionPatterns: $decisionPatterns, riskBehaviors: $riskBehaviors, timePatterns: $timePatterns, devicePatterns: $devicePatterns, engagementScore: $engagementScore, consistencyScore: $consistencyScore, sophisticationScore: $sophisticationScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserBehaviorImpl &&
            const DeepCollectionEquality().equals(other._patterns, _patterns) &&
            const DeepCollectionEquality()
                .equals(other._interactionPatterns, _interactionPatterns) &&
            const DeepCollectionEquality()
                .equals(other._learningPreferences, _learningPreferences) &&
            const DeepCollectionEquality()
                .equals(other._decisionPatterns, _decisionPatterns) &&
            const DeepCollectionEquality()
                .equals(other._riskBehaviors, _riskBehaviors) &&
            const DeepCollectionEquality()
                .equals(other._timePatterns, _timePatterns) &&
            const DeepCollectionEquality()
                .equals(other._devicePatterns, _devicePatterns) &&
            (identical(other.engagementScore, engagementScore) ||
                other.engagementScore == engagementScore) &&
            (identical(other.consistencyScore, consistencyScore) ||
                other.consistencyScore == consistencyScore) &&
            (identical(other.sophisticationScore, sophisticationScore) ||
                other.sophisticationScore == sophisticationScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_patterns),
      const DeepCollectionEquality().hash(_interactionPatterns),
      const DeepCollectionEquality().hash(_learningPreferences),
      const DeepCollectionEquality().hash(_decisionPatterns),
      const DeepCollectionEquality().hash(_riskBehaviors),
      const DeepCollectionEquality().hash(_timePatterns),
      const DeepCollectionEquality().hash(_devicePatterns),
      engagementScore,
      consistencyScore,
      sophisticationScore);

  /// Create a copy of UserBehavior
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserBehaviorImplCopyWith<_$UserBehaviorImpl> get copyWith =>
      __$$UserBehaviorImplCopyWithImpl<_$UserBehaviorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserBehaviorImplToJson(
      this,
    );
  }
}

abstract class _UserBehavior implements UserBehavior {
  const factory _UserBehavior(
      {required final List<BehavioralPattern> patterns,
      required final List<InteractionPattern> interactionPatterns,
      required final List<LearningPreference> learningPreferences,
      required final List<DecisionPattern> decisionPatterns,
      required final List<RiskBehavior> riskBehaviors,
      required final List<TimePattern> timePatterns,
      required final List<DevicePattern> devicePatterns,
      required final double engagementScore,
      required final double consistencyScore,
      required final double sophisticationScore}) = _$UserBehaviorImpl;

  factory _UserBehavior.fromJson(Map<String, dynamic> json) =
      _$UserBehaviorImpl.fromJson;

  @override
  List<BehavioralPattern> get patterns;
  @override
  List<InteractionPattern> get interactionPatterns;
  @override
  List<LearningPreference> get learningPreferences;
  @override
  List<DecisionPattern> get decisionPatterns;
  @override
  List<RiskBehavior> get riskBehaviors;
  @override
  List<TimePattern> get timePatterns;
  @override
  List<DevicePattern> get devicePatterns;
  @override
  double get engagementScore;
  @override
  double get consistencyScore;
  @override
  double get sophisticationScore;

  /// Create a copy of UserBehavior
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserBehaviorImplCopyWith<_$UserBehaviorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BehavioralPattern _$BehavioralPatternFromJson(Map<String, dynamic> json) {
  return _BehavioralPattern.fromJson(json);
}

/// @nodoc
mixin _$BehavioralPattern {
  String get type => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;
  DateTime get firstObserved => throw _privateConstructorUsedError;
  DateTime get lastObserved => throw _privateConstructorUsedError;
  int get frequency => throw _privateConstructorUsedError;
  List<String> get triggers => throw _privateConstructorUsedError;

  /// Serializes this BehavioralPattern to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BehavioralPattern
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BehavioralPatternCopyWith<BehavioralPattern> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BehavioralPatternCopyWith<$Res> {
  factory $BehavioralPatternCopyWith(
          BehavioralPattern value, $Res Function(BehavioralPattern) then) =
      _$BehavioralPatternCopyWithImpl<$Res, BehavioralPattern>;
  @useResult
  $Res call(
      {String type,
      String description,
      double confidence,
      DateTime firstObserved,
      DateTime lastObserved,
      int frequency,
      List<String> triggers});
}

/// @nodoc
class _$BehavioralPatternCopyWithImpl<$Res, $Val extends BehavioralPattern>
    implements $BehavioralPatternCopyWith<$Res> {
  _$BehavioralPatternCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BehavioralPattern
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? description = null,
    Object? confidence = null,
    Object? firstObserved = null,
    Object? lastObserved = null,
    Object? frequency = null,
    Object? triggers = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      firstObserved: null == firstObserved
          ? _value.firstObserved
          : firstObserved // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastObserved: null == lastObserved
          ? _value.lastObserved
          : lastObserved // ignore: cast_nullable_to_non_nullable
              as DateTime,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as int,
      triggers: null == triggers
          ? _value.triggers
          : triggers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BehavioralPatternImplCopyWith<$Res>
    implements $BehavioralPatternCopyWith<$Res> {
  factory _$$BehavioralPatternImplCopyWith(_$BehavioralPatternImpl value,
          $Res Function(_$BehavioralPatternImpl) then) =
      __$$BehavioralPatternImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      String description,
      double confidence,
      DateTime firstObserved,
      DateTime lastObserved,
      int frequency,
      List<String> triggers});
}

/// @nodoc
class __$$BehavioralPatternImplCopyWithImpl<$Res>
    extends _$BehavioralPatternCopyWithImpl<$Res, _$BehavioralPatternImpl>
    implements _$$BehavioralPatternImplCopyWith<$Res> {
  __$$BehavioralPatternImplCopyWithImpl(_$BehavioralPatternImpl _value,
      $Res Function(_$BehavioralPatternImpl) _then)
      : super(_value, _then);

  /// Create a copy of BehavioralPattern
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? description = null,
    Object? confidence = null,
    Object? firstObserved = null,
    Object? lastObserved = null,
    Object? frequency = null,
    Object? triggers = null,
  }) {
    return _then(_$BehavioralPatternImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      firstObserved: null == firstObserved
          ? _value.firstObserved
          : firstObserved // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastObserved: null == lastObserved
          ? _value.lastObserved
          : lastObserved // ignore: cast_nullable_to_non_nullable
              as DateTime,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as int,
      triggers: null == triggers
          ? _value._triggers
          : triggers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BehavioralPatternImpl implements _BehavioralPattern {
  const _$BehavioralPatternImpl(
      {required this.type,
      required this.description,
      required this.confidence,
      required this.firstObserved,
      required this.lastObserved,
      required this.frequency,
      required final List<String> triggers})
      : _triggers = triggers;

  factory _$BehavioralPatternImpl.fromJson(Map<String, dynamic> json) =>
      _$$BehavioralPatternImplFromJson(json);

  @override
  final String type;
  @override
  final String description;
  @override
  final double confidence;
  @override
  final DateTime firstObserved;
  @override
  final DateTime lastObserved;
  @override
  final int frequency;
  final List<String> _triggers;
  @override
  List<String> get triggers {
    if (_triggers is EqualUnmodifiableListView) return _triggers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_triggers);
  }

  @override
  String toString() {
    return 'BehavioralPattern(type: $type, description: $description, confidence: $confidence, firstObserved: $firstObserved, lastObserved: $lastObserved, frequency: $frequency, triggers: $triggers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BehavioralPatternImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            (identical(other.firstObserved, firstObserved) ||
                other.firstObserved == firstObserved) &&
            (identical(other.lastObserved, lastObserved) ||
                other.lastObserved == lastObserved) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            const DeepCollectionEquality().equals(other._triggers, _triggers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      description,
      confidence,
      firstObserved,
      lastObserved,
      frequency,
      const DeepCollectionEquality().hash(_triggers));

  /// Create a copy of BehavioralPattern
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BehavioralPatternImplCopyWith<_$BehavioralPatternImpl> get copyWith =>
      __$$BehavioralPatternImplCopyWithImpl<_$BehavioralPatternImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BehavioralPatternImplToJson(
      this,
    );
  }
}

abstract class _BehavioralPattern implements BehavioralPattern {
  const factory _BehavioralPattern(
      {required final String type,
      required final String description,
      required final double confidence,
      required final DateTime firstObserved,
      required final DateTime lastObserved,
      required final int frequency,
      required final List<String> triggers}) = _$BehavioralPatternImpl;

  factory _BehavioralPattern.fromJson(Map<String, dynamic> json) =
      _$BehavioralPatternImpl.fromJson;

  @override
  String get type;
  @override
  String get description;
  @override
  double get confidence;
  @override
  DateTime get firstObserved;
  @override
  DateTime get lastObserved;
  @override
  int get frequency;
  @override
  List<String> get triggers;

  /// Create a copy of BehavioralPattern
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BehavioralPatternImplCopyWith<_$BehavioralPatternImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InteractionPattern _$InteractionPatternFromJson(Map<String, dynamic> json) {
  return _InteractionPattern.fromJson(json);
}

/// @nodoc
mixin _$InteractionPattern {
  String get assetType => throw _privateConstructorUsedError;
  String get interactionType => throw _privateConstructorUsedError;
  double get frequency => throw _privateConstructorUsedError;
  double get duration => throw _privateConstructorUsedError;
  List<String> get preferredTimes => throw _privateConstructorUsedError;
  List<String> get preferredDays => throw _privateConstructorUsedError;

  /// Serializes this InteractionPattern to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InteractionPattern
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InteractionPatternCopyWith<InteractionPattern> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InteractionPatternCopyWith<$Res> {
  factory $InteractionPatternCopyWith(
          InteractionPattern value, $Res Function(InteractionPattern) then) =
      _$InteractionPatternCopyWithImpl<$Res, InteractionPattern>;
  @useResult
  $Res call(
      {String assetType,
      String interactionType,
      double frequency,
      double duration,
      List<String> preferredTimes,
      List<String> preferredDays});
}

/// @nodoc
class _$InteractionPatternCopyWithImpl<$Res, $Val extends InteractionPattern>
    implements $InteractionPatternCopyWith<$Res> {
  _$InteractionPatternCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InteractionPattern
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assetType = null,
    Object? interactionType = null,
    Object? frequency = null,
    Object? duration = null,
    Object? preferredTimes = null,
    Object? preferredDays = null,
  }) {
    return _then(_value.copyWith(
      assetType: null == assetType
          ? _value.assetType
          : assetType // ignore: cast_nullable_to_non_nullable
              as String,
      interactionType: null == interactionType
          ? _value.interactionType
          : interactionType // ignore: cast_nullable_to_non_nullable
              as String,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as double,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
      preferredTimes: null == preferredTimes
          ? _value.preferredTimes
          : preferredTimes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      preferredDays: null == preferredDays
          ? _value.preferredDays
          : preferredDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InteractionPatternImplCopyWith<$Res>
    implements $InteractionPatternCopyWith<$Res> {
  factory _$$InteractionPatternImplCopyWith(_$InteractionPatternImpl value,
          $Res Function(_$InteractionPatternImpl) then) =
      __$$InteractionPatternImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String assetType,
      String interactionType,
      double frequency,
      double duration,
      List<String> preferredTimes,
      List<String> preferredDays});
}

/// @nodoc
class __$$InteractionPatternImplCopyWithImpl<$Res>
    extends _$InteractionPatternCopyWithImpl<$Res, _$InteractionPatternImpl>
    implements _$$InteractionPatternImplCopyWith<$Res> {
  __$$InteractionPatternImplCopyWithImpl(_$InteractionPatternImpl _value,
      $Res Function(_$InteractionPatternImpl) _then)
      : super(_value, _then);

  /// Create a copy of InteractionPattern
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assetType = null,
    Object? interactionType = null,
    Object? frequency = null,
    Object? duration = null,
    Object? preferredTimes = null,
    Object? preferredDays = null,
  }) {
    return _then(_$InteractionPatternImpl(
      assetType: null == assetType
          ? _value.assetType
          : assetType // ignore: cast_nullable_to_non_nullable
              as String,
      interactionType: null == interactionType
          ? _value.interactionType
          : interactionType // ignore: cast_nullable_to_non_nullable
              as String,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as double,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
      preferredTimes: null == preferredTimes
          ? _value._preferredTimes
          : preferredTimes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      preferredDays: null == preferredDays
          ? _value._preferredDays
          : preferredDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InteractionPatternImpl implements _InteractionPattern {
  const _$InteractionPatternImpl(
      {required this.assetType,
      required this.interactionType,
      required this.frequency,
      required this.duration,
      required final List<String> preferredTimes,
      required final List<String> preferredDays})
      : _preferredTimes = preferredTimes,
        _preferredDays = preferredDays;

  factory _$InteractionPatternImpl.fromJson(Map<String, dynamic> json) =>
      _$$InteractionPatternImplFromJson(json);

  @override
  final String assetType;
  @override
  final String interactionType;
  @override
  final double frequency;
  @override
  final double duration;
  final List<String> _preferredTimes;
  @override
  List<String> get preferredTimes {
    if (_preferredTimes is EqualUnmodifiableListView) return _preferredTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_preferredTimes);
  }

  final List<String> _preferredDays;
  @override
  List<String> get preferredDays {
    if (_preferredDays is EqualUnmodifiableListView) return _preferredDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_preferredDays);
  }

  @override
  String toString() {
    return 'InteractionPattern(assetType: $assetType, interactionType: $interactionType, frequency: $frequency, duration: $duration, preferredTimes: $preferredTimes, preferredDays: $preferredDays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InteractionPatternImpl &&
            (identical(other.assetType, assetType) ||
                other.assetType == assetType) &&
            (identical(other.interactionType, interactionType) ||
                other.interactionType == interactionType) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            const DeepCollectionEquality()
                .equals(other._preferredTimes, _preferredTimes) &&
            const DeepCollectionEquality()
                .equals(other._preferredDays, _preferredDays));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      assetType,
      interactionType,
      frequency,
      duration,
      const DeepCollectionEquality().hash(_preferredTimes),
      const DeepCollectionEquality().hash(_preferredDays));

  /// Create a copy of InteractionPattern
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InteractionPatternImplCopyWith<_$InteractionPatternImpl> get copyWith =>
      __$$InteractionPatternImplCopyWithImpl<_$InteractionPatternImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InteractionPatternImplToJson(
      this,
    );
  }
}

abstract class _InteractionPattern implements InteractionPattern {
  const factory _InteractionPattern(
      {required final String assetType,
      required final String interactionType,
      required final double frequency,
      required final double duration,
      required final List<String> preferredTimes,
      required final List<String> preferredDays}) = _$InteractionPatternImpl;

  factory _InteractionPattern.fromJson(Map<String, dynamic> json) =
      _$InteractionPatternImpl.fromJson;

  @override
  String get assetType;
  @override
  String get interactionType;
  @override
  double get frequency;
  @override
  double get duration;
  @override
  List<String> get preferredTimes;
  @override
  List<String> get preferredDays;

  /// Create a copy of InteractionPattern
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InteractionPatternImplCopyWith<_$InteractionPatternImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LearningPreference _$LearningPreferenceFromJson(Map<String, dynamic> json) {
  return _LearningPreference.fromJson(json);
}

/// @nodoc
mixin _$LearningPreference {
  String get style => throw _privateConstructorUsedError;
  List<String> get preferredFormats => throw _privateConstructorUsedError;
  double get learningSpeed => throw _privateConstructorUsedError;
  List<String> get topics => throw _privateConstructorUsedError;

  /// Serializes this LearningPreference to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LearningPreference
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LearningPreferenceCopyWith<LearningPreference> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningPreferenceCopyWith<$Res> {
  factory $LearningPreferenceCopyWith(
          LearningPreference value, $Res Function(LearningPreference) then) =
      _$LearningPreferenceCopyWithImpl<$Res, LearningPreference>;
  @useResult
  $Res call(
      {String style,
      List<String> preferredFormats,
      double learningSpeed,
      List<String> topics});
}

/// @nodoc
class _$LearningPreferenceCopyWithImpl<$Res, $Val extends LearningPreference>
    implements $LearningPreferenceCopyWith<$Res> {
  _$LearningPreferenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LearningPreference
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? style = null,
    Object? preferredFormats = null,
    Object? learningSpeed = null,
    Object? topics = null,
  }) {
    return _then(_value.copyWith(
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String,
      preferredFormats: null == preferredFormats
          ? _value.preferredFormats
          : preferredFormats // ignore: cast_nullable_to_non_nullable
              as List<String>,
      learningSpeed: null == learningSpeed
          ? _value.learningSpeed
          : learningSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      topics: null == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LearningPreferenceImplCopyWith<$Res>
    implements $LearningPreferenceCopyWith<$Res> {
  factory _$$LearningPreferenceImplCopyWith(_$LearningPreferenceImpl value,
          $Res Function(_$LearningPreferenceImpl) then) =
      __$$LearningPreferenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String style,
      List<String> preferredFormats,
      double learningSpeed,
      List<String> topics});
}

/// @nodoc
class __$$LearningPreferenceImplCopyWithImpl<$Res>
    extends _$LearningPreferenceCopyWithImpl<$Res, _$LearningPreferenceImpl>
    implements _$$LearningPreferenceImplCopyWith<$Res> {
  __$$LearningPreferenceImplCopyWithImpl(_$LearningPreferenceImpl _value,
      $Res Function(_$LearningPreferenceImpl) _then)
      : super(_value, _then);

  /// Create a copy of LearningPreference
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? style = null,
    Object? preferredFormats = null,
    Object? learningSpeed = null,
    Object? topics = null,
  }) {
    return _then(_$LearningPreferenceImpl(
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String,
      preferredFormats: null == preferredFormats
          ? _value._preferredFormats
          : preferredFormats // ignore: cast_nullable_to_non_nullable
              as List<String>,
      learningSpeed: null == learningSpeed
          ? _value.learningSpeed
          : learningSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      topics: null == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LearningPreferenceImpl implements _LearningPreference {
  const _$LearningPreferenceImpl(
      {required this.style,
      required final List<String> preferredFormats,
      required this.learningSpeed,
      required final List<String> topics})
      : _preferredFormats = preferredFormats,
        _topics = topics;

  factory _$LearningPreferenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$LearningPreferenceImplFromJson(json);

  @override
  final String style;
  final List<String> _preferredFormats;
  @override
  List<String> get preferredFormats {
    if (_preferredFormats is EqualUnmodifiableListView)
      return _preferredFormats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_preferredFormats);
  }

  @override
  final double learningSpeed;
  final List<String> _topics;
  @override
  List<String> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  @override
  String toString() {
    return 'LearningPreference(style: $style, preferredFormats: $preferredFormats, learningSpeed: $learningSpeed, topics: $topics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearningPreferenceImpl &&
            (identical(other.style, style) || other.style == style) &&
            const DeepCollectionEquality()
                .equals(other._preferredFormats, _preferredFormats) &&
            (identical(other.learningSpeed, learningSpeed) ||
                other.learningSpeed == learningSpeed) &&
            const DeepCollectionEquality().equals(other._topics, _topics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      style,
      const DeepCollectionEquality().hash(_preferredFormats),
      learningSpeed,
      const DeepCollectionEquality().hash(_topics));

  /// Create a copy of LearningPreference
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LearningPreferenceImplCopyWith<_$LearningPreferenceImpl> get copyWith =>
      __$$LearningPreferenceImplCopyWithImpl<_$LearningPreferenceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LearningPreferenceImplToJson(
      this,
    );
  }
}

abstract class _LearningPreference implements LearningPreference {
  const factory _LearningPreference(
      {required final String style,
      required final List<String> preferredFormats,
      required final double learningSpeed,
      required final List<String> topics}) = _$LearningPreferenceImpl;

  factory _LearningPreference.fromJson(Map<String, dynamic> json) =
      _$LearningPreferenceImpl.fromJson;

  @override
  String get style;
  @override
  List<String> get preferredFormats;
  @override
  double get learningSpeed;
  @override
  List<String> get topics;

  /// Create a copy of LearningPreference
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LearningPreferenceImplCopyWith<_$LearningPreferenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DecisionPattern _$DecisionPatternFromJson(Map<String, dynamic> json) {
  return _DecisionPattern.fromJson(json);
}

/// @nodoc
mixin _$DecisionPattern {
  String get type => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;
  List<String> get factors => throw _privateConstructorUsedError;
  double get successRate => throw _privateConstructorUsedError;
  DateTime get lastDecision => throw _privateConstructorUsedError;

  /// Serializes this DecisionPattern to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DecisionPattern
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DecisionPatternCopyWith<DecisionPattern> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DecisionPatternCopyWith<$Res> {
  factory $DecisionPatternCopyWith(
          DecisionPattern value, $Res Function(DecisionPattern) then) =
      _$DecisionPatternCopyWithImpl<$Res, DecisionPattern>;
  @useResult
  $Res call(
      {String type,
      double confidence,
      List<String> factors,
      double successRate,
      DateTime lastDecision});
}

/// @nodoc
class _$DecisionPatternCopyWithImpl<$Res, $Val extends DecisionPattern>
    implements $DecisionPatternCopyWith<$Res> {
  _$DecisionPatternCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DecisionPattern
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? confidence = null,
    Object? factors = null,
    Object? successRate = null,
    Object? lastDecision = null,
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
      factors: null == factors
          ? _value.factors
          : factors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      successRate: null == successRate
          ? _value.successRate
          : successRate // ignore: cast_nullable_to_non_nullable
              as double,
      lastDecision: null == lastDecision
          ? _value.lastDecision
          : lastDecision // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DecisionPatternImplCopyWith<$Res>
    implements $DecisionPatternCopyWith<$Res> {
  factory _$$DecisionPatternImplCopyWith(_$DecisionPatternImpl value,
          $Res Function(_$DecisionPatternImpl) then) =
      __$$DecisionPatternImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      double confidence,
      List<String> factors,
      double successRate,
      DateTime lastDecision});
}

/// @nodoc
class __$$DecisionPatternImplCopyWithImpl<$Res>
    extends _$DecisionPatternCopyWithImpl<$Res, _$DecisionPatternImpl>
    implements _$$DecisionPatternImplCopyWith<$Res> {
  __$$DecisionPatternImplCopyWithImpl(
      _$DecisionPatternImpl _value, $Res Function(_$DecisionPatternImpl) _then)
      : super(_value, _then);

  /// Create a copy of DecisionPattern
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? confidence = null,
    Object? factors = null,
    Object? successRate = null,
    Object? lastDecision = null,
  }) {
    return _then(_$DecisionPatternImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      factors: null == factors
          ? _value._factors
          : factors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      successRate: null == successRate
          ? _value.successRate
          : successRate // ignore: cast_nullable_to_non_nullable
              as double,
      lastDecision: null == lastDecision
          ? _value.lastDecision
          : lastDecision // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DecisionPatternImpl implements _DecisionPattern {
  const _$DecisionPatternImpl(
      {required this.type,
      required this.confidence,
      required final List<String> factors,
      required this.successRate,
      required this.lastDecision})
      : _factors = factors;

  factory _$DecisionPatternImpl.fromJson(Map<String, dynamic> json) =>
      _$$DecisionPatternImplFromJson(json);

  @override
  final String type;
  @override
  final double confidence;
  final List<String> _factors;
  @override
  List<String> get factors {
    if (_factors is EqualUnmodifiableListView) return _factors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_factors);
  }

  @override
  final double successRate;
  @override
  final DateTime lastDecision;

  @override
  String toString() {
    return 'DecisionPattern(type: $type, confidence: $confidence, factors: $factors, successRate: $successRate, lastDecision: $lastDecision)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecisionPatternImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            const DeepCollectionEquality().equals(other._factors, _factors) &&
            (identical(other.successRate, successRate) ||
                other.successRate == successRate) &&
            (identical(other.lastDecision, lastDecision) ||
                other.lastDecision == lastDecision));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, confidence,
      const DeepCollectionEquality().hash(_factors), successRate, lastDecision);

  /// Create a copy of DecisionPattern
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DecisionPatternImplCopyWith<_$DecisionPatternImpl> get copyWith =>
      __$$DecisionPatternImplCopyWithImpl<_$DecisionPatternImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DecisionPatternImplToJson(
      this,
    );
  }
}

abstract class _DecisionPattern implements DecisionPattern {
  const factory _DecisionPattern(
      {required final String type,
      required final double confidence,
      required final List<String> factors,
      required final double successRate,
      required final DateTime lastDecision}) = _$DecisionPatternImpl;

  factory _DecisionPattern.fromJson(Map<String, dynamic> json) =
      _$DecisionPatternImpl.fromJson;

  @override
  String get type;
  @override
  double get confidence;
  @override
  List<String> get factors;
  @override
  double get successRate;
  @override
  DateTime get lastDecision;

  /// Create a copy of DecisionPattern
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DecisionPatternImplCopyWith<_$DecisionPatternImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RiskBehavior _$RiskBehaviorFromJson(Map<String, dynamic> json) {
  return _RiskBehavior.fromJson(json);
}

/// @nodoc
mixin _$RiskBehavior {
  String get assetType => throw _privateConstructorUsedError;
  double get riskLevel => throw _privateConstructorUsedError;
  double get consistency => throw _privateConstructorUsedError;
  List<String> get riskFactors => throw _privateConstructorUsedError;
  double get performance => throw _privateConstructorUsedError;

  /// Serializes this RiskBehavior to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RiskBehavior
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RiskBehaviorCopyWith<RiskBehavior> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RiskBehaviorCopyWith<$Res> {
  factory $RiskBehaviorCopyWith(
          RiskBehavior value, $Res Function(RiskBehavior) then) =
      _$RiskBehaviorCopyWithImpl<$Res, RiskBehavior>;
  @useResult
  $Res call(
      {String assetType,
      double riskLevel,
      double consistency,
      List<String> riskFactors,
      double performance});
}

/// @nodoc
class _$RiskBehaviorCopyWithImpl<$Res, $Val extends RiskBehavior>
    implements $RiskBehaviorCopyWith<$Res> {
  _$RiskBehaviorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RiskBehavior
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assetType = null,
    Object? riskLevel = null,
    Object? consistency = null,
    Object? riskFactors = null,
    Object? performance = null,
  }) {
    return _then(_value.copyWith(
      assetType: null == assetType
          ? _value.assetType
          : assetType // ignore: cast_nullable_to_non_nullable
              as String,
      riskLevel: null == riskLevel
          ? _value.riskLevel
          : riskLevel // ignore: cast_nullable_to_non_nullable
              as double,
      consistency: null == consistency
          ? _value.consistency
          : consistency // ignore: cast_nullable_to_non_nullable
              as double,
      riskFactors: null == riskFactors
          ? _value.riskFactors
          : riskFactors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      performance: null == performance
          ? _value.performance
          : performance // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RiskBehaviorImplCopyWith<$Res>
    implements $RiskBehaviorCopyWith<$Res> {
  factory _$$RiskBehaviorImplCopyWith(
          _$RiskBehaviorImpl value, $Res Function(_$RiskBehaviorImpl) then) =
      __$$RiskBehaviorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String assetType,
      double riskLevel,
      double consistency,
      List<String> riskFactors,
      double performance});
}

/// @nodoc
class __$$RiskBehaviorImplCopyWithImpl<$Res>
    extends _$RiskBehaviorCopyWithImpl<$Res, _$RiskBehaviorImpl>
    implements _$$RiskBehaviorImplCopyWith<$Res> {
  __$$RiskBehaviorImplCopyWithImpl(
      _$RiskBehaviorImpl _value, $Res Function(_$RiskBehaviorImpl) _then)
      : super(_value, _then);

  /// Create a copy of RiskBehavior
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assetType = null,
    Object? riskLevel = null,
    Object? consistency = null,
    Object? riskFactors = null,
    Object? performance = null,
  }) {
    return _then(_$RiskBehaviorImpl(
      assetType: null == assetType
          ? _value.assetType
          : assetType // ignore: cast_nullable_to_non_nullable
              as String,
      riskLevel: null == riskLevel
          ? _value.riskLevel
          : riskLevel // ignore: cast_nullable_to_non_nullable
              as double,
      consistency: null == consistency
          ? _value.consistency
          : consistency // ignore: cast_nullable_to_non_nullable
              as double,
      riskFactors: null == riskFactors
          ? _value._riskFactors
          : riskFactors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      performance: null == performance
          ? _value.performance
          : performance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RiskBehaviorImpl implements _RiskBehavior {
  const _$RiskBehaviorImpl(
      {required this.assetType,
      required this.riskLevel,
      required this.consistency,
      required final List<String> riskFactors,
      required this.performance})
      : _riskFactors = riskFactors;

  factory _$RiskBehaviorImpl.fromJson(Map<String, dynamic> json) =>
      _$$RiskBehaviorImplFromJson(json);

  @override
  final String assetType;
  @override
  final double riskLevel;
  @override
  final double consistency;
  final List<String> _riskFactors;
  @override
  List<String> get riskFactors {
    if (_riskFactors is EqualUnmodifiableListView) return _riskFactors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_riskFactors);
  }

  @override
  final double performance;

  @override
  String toString() {
    return 'RiskBehavior(assetType: $assetType, riskLevel: $riskLevel, consistency: $consistency, riskFactors: $riskFactors, performance: $performance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RiskBehaviorImpl &&
            (identical(other.assetType, assetType) ||
                other.assetType == assetType) &&
            (identical(other.riskLevel, riskLevel) ||
                other.riskLevel == riskLevel) &&
            (identical(other.consistency, consistency) ||
                other.consistency == consistency) &&
            const DeepCollectionEquality()
                .equals(other._riskFactors, _riskFactors) &&
            (identical(other.performance, performance) ||
                other.performance == performance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      assetType,
      riskLevel,
      consistency,
      const DeepCollectionEquality().hash(_riskFactors),
      performance);

  /// Create a copy of RiskBehavior
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RiskBehaviorImplCopyWith<_$RiskBehaviorImpl> get copyWith =>
      __$$RiskBehaviorImplCopyWithImpl<_$RiskBehaviorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RiskBehaviorImplToJson(
      this,
    );
  }
}

abstract class _RiskBehavior implements RiskBehavior {
  const factory _RiskBehavior(
      {required final String assetType,
      required final double riskLevel,
      required final double consistency,
      required final List<String> riskFactors,
      required final double performance}) = _$RiskBehaviorImpl;

  factory _RiskBehavior.fromJson(Map<String, dynamic> json) =
      _$RiskBehaviorImpl.fromJson;

  @override
  String get assetType;
  @override
  double get riskLevel;
  @override
  double get consistency;
  @override
  List<String> get riskFactors;
  @override
  double get performance;

  /// Create a copy of RiskBehavior
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RiskBehaviorImplCopyWith<_$RiskBehaviorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TimePattern _$TimePatternFromJson(Map<String, dynamic> json) {
  return _TimePattern.fromJson(json);
}

/// @nodoc
mixin _$TimePattern {
  String get dayOfWeek => throw _privateConstructorUsedError;
  String get timeOfDay => throw _privateConstructorUsedError;
  double get activityLevel => throw _privateConstructorUsedError;
  List<String> get activities => throw _privateConstructorUsedError;

  /// Serializes this TimePattern to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimePattern
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimePatternCopyWith<TimePattern> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimePatternCopyWith<$Res> {
  factory $TimePatternCopyWith(
          TimePattern value, $Res Function(TimePattern) then) =
      _$TimePatternCopyWithImpl<$Res, TimePattern>;
  @useResult
  $Res call(
      {String dayOfWeek,
      String timeOfDay,
      double activityLevel,
      List<String> activities});
}

/// @nodoc
class _$TimePatternCopyWithImpl<$Res, $Val extends TimePattern>
    implements $TimePatternCopyWith<$Res> {
  _$TimePatternCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimePattern
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayOfWeek = null,
    Object? timeOfDay = null,
    Object? activityLevel = null,
    Object? activities = null,
  }) {
    return _then(_value.copyWith(
      dayOfWeek: null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as String,
      timeOfDay: null == timeOfDay
          ? _value.timeOfDay
          : timeOfDay // ignore: cast_nullable_to_non_nullable
              as String,
      activityLevel: null == activityLevel
          ? _value.activityLevel
          : activityLevel // ignore: cast_nullable_to_non_nullable
              as double,
      activities: null == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimePatternImplCopyWith<$Res>
    implements $TimePatternCopyWith<$Res> {
  factory _$$TimePatternImplCopyWith(
          _$TimePatternImpl value, $Res Function(_$TimePatternImpl) then) =
      __$$TimePatternImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String dayOfWeek,
      String timeOfDay,
      double activityLevel,
      List<String> activities});
}

/// @nodoc
class __$$TimePatternImplCopyWithImpl<$Res>
    extends _$TimePatternCopyWithImpl<$Res, _$TimePatternImpl>
    implements _$$TimePatternImplCopyWith<$Res> {
  __$$TimePatternImplCopyWithImpl(
      _$TimePatternImpl _value, $Res Function(_$TimePatternImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimePattern
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayOfWeek = null,
    Object? timeOfDay = null,
    Object? activityLevel = null,
    Object? activities = null,
  }) {
    return _then(_$TimePatternImpl(
      dayOfWeek: null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as String,
      timeOfDay: null == timeOfDay
          ? _value.timeOfDay
          : timeOfDay // ignore: cast_nullable_to_non_nullable
              as String,
      activityLevel: null == activityLevel
          ? _value.activityLevel
          : activityLevel // ignore: cast_nullable_to_non_nullable
              as double,
      activities: null == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimePatternImpl implements _TimePattern {
  const _$TimePatternImpl(
      {required this.dayOfWeek,
      required this.timeOfDay,
      required this.activityLevel,
      required final List<String> activities})
      : _activities = activities;

  factory _$TimePatternImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimePatternImplFromJson(json);

  @override
  final String dayOfWeek;
  @override
  final String timeOfDay;
  @override
  final double activityLevel;
  final List<String> _activities;
  @override
  List<String> get activities {
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activities);
  }

  @override
  String toString() {
    return 'TimePattern(dayOfWeek: $dayOfWeek, timeOfDay: $timeOfDay, activityLevel: $activityLevel, activities: $activities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimePatternImpl &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                other.dayOfWeek == dayOfWeek) &&
            (identical(other.timeOfDay, timeOfDay) ||
                other.timeOfDay == timeOfDay) &&
            (identical(other.activityLevel, activityLevel) ||
                other.activityLevel == activityLevel) &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dayOfWeek, timeOfDay,
      activityLevel, const DeepCollectionEquality().hash(_activities));

  /// Create a copy of TimePattern
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimePatternImplCopyWith<_$TimePatternImpl> get copyWith =>
      __$$TimePatternImplCopyWithImpl<_$TimePatternImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimePatternImplToJson(
      this,
    );
  }
}

abstract class _TimePattern implements TimePattern {
  const factory _TimePattern(
      {required final String dayOfWeek,
      required final String timeOfDay,
      required final double activityLevel,
      required final List<String> activities}) = _$TimePatternImpl;

  factory _TimePattern.fromJson(Map<String, dynamic> json) =
      _$TimePatternImpl.fromJson;

  @override
  String get dayOfWeek;
  @override
  String get timeOfDay;
  @override
  double get activityLevel;
  @override
  List<String> get activities;

  /// Create a copy of TimePattern
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimePatternImplCopyWith<_$TimePatternImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DevicePattern _$DevicePatternFromJson(Map<String, dynamic> json) {
  return _DevicePattern.fromJson(json);
}

/// @nodoc
mixin _$DevicePattern {
  String get deviceType => throw _privateConstructorUsedError;
  String get platform => throw _privateConstructorUsedError;
  double get usageTime => throw _privateConstructorUsedError;
  List<String> get features => throw _privateConstructorUsedError;

  /// Serializes this DevicePattern to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DevicePattern
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DevicePatternCopyWith<DevicePattern> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DevicePatternCopyWith<$Res> {
  factory $DevicePatternCopyWith(
          DevicePattern value, $Res Function(DevicePattern) then) =
      _$DevicePatternCopyWithImpl<$Res, DevicePattern>;
  @useResult
  $Res call(
      {String deviceType,
      String platform,
      double usageTime,
      List<String> features});
}

/// @nodoc
class _$DevicePatternCopyWithImpl<$Res, $Val extends DevicePattern>
    implements $DevicePatternCopyWith<$Res> {
  _$DevicePatternCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DevicePattern
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceType = null,
    Object? platform = null,
    Object? usageTime = null,
    Object? features = null,
  }) {
    return _then(_value.copyWith(
      deviceType: null == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      usageTime: null == usageTime
          ? _value.usageTime
          : usageTime // ignore: cast_nullable_to_non_nullable
              as double,
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DevicePatternImplCopyWith<$Res>
    implements $DevicePatternCopyWith<$Res> {
  factory _$$DevicePatternImplCopyWith(
          _$DevicePatternImpl value, $Res Function(_$DevicePatternImpl) then) =
      __$$DevicePatternImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String deviceType,
      String platform,
      double usageTime,
      List<String> features});
}

/// @nodoc
class __$$DevicePatternImplCopyWithImpl<$Res>
    extends _$DevicePatternCopyWithImpl<$Res, _$DevicePatternImpl>
    implements _$$DevicePatternImplCopyWith<$Res> {
  __$$DevicePatternImplCopyWithImpl(
      _$DevicePatternImpl _value, $Res Function(_$DevicePatternImpl) _then)
      : super(_value, _then);

  /// Create a copy of DevicePattern
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceType = null,
    Object? platform = null,
    Object? usageTime = null,
    Object? features = null,
  }) {
    return _then(_$DevicePatternImpl(
      deviceType: null == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      usageTime: null == usageTime
          ? _value.usageTime
          : usageTime // ignore: cast_nullable_to_non_nullable
              as double,
      features: null == features
          ? _value._features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DevicePatternImpl implements _DevicePattern {
  const _$DevicePatternImpl(
      {required this.deviceType,
      required this.platform,
      required this.usageTime,
      required final List<String> features})
      : _features = features;

  factory _$DevicePatternImpl.fromJson(Map<String, dynamic> json) =>
      _$$DevicePatternImplFromJson(json);

  @override
  final String deviceType;
  @override
  final String platform;
  @override
  final double usageTime;
  final List<String> _features;
  @override
  List<String> get features {
    if (_features is EqualUnmodifiableListView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_features);
  }

  @override
  String toString() {
    return 'DevicePattern(deviceType: $deviceType, platform: $platform, usageTime: $usageTime, features: $features)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DevicePatternImpl &&
            (identical(other.deviceType, deviceType) ||
                other.deviceType == deviceType) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.usageTime, usageTime) ||
                other.usageTime == usageTime) &&
            const DeepCollectionEquality().equals(other._features, _features));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, deviceType, platform, usageTime,
      const DeepCollectionEquality().hash(_features));

  /// Create a copy of DevicePattern
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DevicePatternImplCopyWith<_$DevicePatternImpl> get copyWith =>
      __$$DevicePatternImplCopyWithImpl<_$DevicePatternImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DevicePatternImplToJson(
      this,
    );
  }
}

abstract class _DevicePattern implements DevicePattern {
  const factory _DevicePattern(
      {required final String deviceType,
      required final String platform,
      required final double usageTime,
      required final List<String> features}) = _$DevicePatternImpl;

  factory _DevicePattern.fromJson(Map<String, dynamic> json) =
      _$DevicePatternImpl.fromJson;

  @override
  String get deviceType;
  @override
  String get platform;
  @override
  double get usageTime;
  @override
  List<String> get features;

  /// Create a copy of DevicePattern
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DevicePatternImplCopyWith<_$DevicePatternImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Watchlist _$WatchlistFromJson(Map<String, dynamic> json) {
  return _Watchlist.fromJson(json);
}

/// @nodoc
mixin _$Watchlist {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get symbols => throw _privateConstructorUsedError;
  bool get isDefault => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  List<WatchlistAlert> get alerts => throw _privateConstructorUsedError;

  /// Serializes this Watchlist to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Watchlist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WatchlistCopyWith<Watchlist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchlistCopyWith<$Res> {
  factory $WatchlistCopyWith(Watchlist value, $Res Function(Watchlist) then) =
      _$WatchlistCopyWithImpl<$Res, Watchlist>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      List<String> symbols,
      bool isDefault,
      bool isPublic,
      DateTime createdAt,
      DateTime lastUpdated,
      List<WatchlistAlert> alerts});
}

/// @nodoc
class _$WatchlistCopyWithImpl<$Res, $Val extends Watchlist>
    implements $WatchlistCopyWith<$Res> {
  _$WatchlistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Watchlist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? symbols = null,
    Object? isDefault = null,
    Object? isPublic = null,
    Object? createdAt = null,
    Object? lastUpdated = null,
    Object? alerts = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      symbols: null == symbols
          ? _value.symbols
          : symbols // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      alerts: null == alerts
          ? _value.alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<WatchlistAlert>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WatchlistImplCopyWith<$Res>
    implements $WatchlistCopyWith<$Res> {
  factory _$$WatchlistImplCopyWith(
          _$WatchlistImpl value, $Res Function(_$WatchlistImpl) then) =
      __$$WatchlistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      List<String> symbols,
      bool isDefault,
      bool isPublic,
      DateTime createdAt,
      DateTime lastUpdated,
      List<WatchlistAlert> alerts});
}

/// @nodoc
class __$$WatchlistImplCopyWithImpl<$Res>
    extends _$WatchlistCopyWithImpl<$Res, _$WatchlistImpl>
    implements _$$WatchlistImplCopyWith<$Res> {
  __$$WatchlistImplCopyWithImpl(
      _$WatchlistImpl _value, $Res Function(_$WatchlistImpl) _then)
      : super(_value, _then);

  /// Create a copy of Watchlist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? symbols = null,
    Object? isDefault = null,
    Object? isPublic = null,
    Object? createdAt = null,
    Object? lastUpdated = null,
    Object? alerts = null,
  }) {
    return _then(_$WatchlistImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      symbols: null == symbols
          ? _value._symbols
          : symbols // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      alerts: null == alerts
          ? _value._alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<WatchlistAlert>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WatchlistImpl implements _Watchlist {
  const _$WatchlistImpl(
      {required this.id,
      required this.name,
      required this.description,
      required final List<String> symbols,
      required this.isDefault,
      required this.isPublic,
      required this.createdAt,
      required this.lastUpdated,
      required final List<WatchlistAlert> alerts})
      : _symbols = symbols,
        _alerts = alerts;

  factory _$WatchlistImpl.fromJson(Map<String, dynamic> json) =>
      _$$WatchlistImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  final List<String> _symbols;
  @override
  List<String> get symbols {
    if (_symbols is EqualUnmodifiableListView) return _symbols;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_symbols);
  }

  @override
  final bool isDefault;
  @override
  final bool isPublic;
  @override
  final DateTime createdAt;
  @override
  final DateTime lastUpdated;
  final List<WatchlistAlert> _alerts;
  @override
  List<WatchlistAlert> get alerts {
    if (_alerts is EqualUnmodifiableListView) return _alerts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_alerts);
  }

  @override
  String toString() {
    return 'Watchlist(id: $id, name: $name, description: $description, symbols: $symbols, isDefault: $isDefault, isPublic: $isPublic, createdAt: $createdAt, lastUpdated: $lastUpdated, alerts: $alerts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchlistImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._symbols, _symbols) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            const DeepCollectionEquality().equals(other._alerts, _alerts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      const DeepCollectionEquality().hash(_symbols),
      isDefault,
      isPublic,
      createdAt,
      lastUpdated,
      const DeepCollectionEquality().hash(_alerts));

  /// Create a copy of Watchlist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WatchlistImplCopyWith<_$WatchlistImpl> get copyWith =>
      __$$WatchlistImplCopyWithImpl<_$WatchlistImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WatchlistImplToJson(
      this,
    );
  }
}

abstract class _Watchlist implements Watchlist {
  const factory _Watchlist(
      {required final String id,
      required final String name,
      required final String description,
      required final List<String> symbols,
      required final bool isDefault,
      required final bool isPublic,
      required final DateTime createdAt,
      required final DateTime lastUpdated,
      required final List<WatchlistAlert> alerts}) = _$WatchlistImpl;

  factory _Watchlist.fromJson(Map<String, dynamic> json) =
      _$WatchlistImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  List<String> get symbols;
  @override
  bool get isDefault;
  @override
  bool get isPublic;
  @override
  DateTime get createdAt;
  @override
  DateTime get lastUpdated;
  @override
  List<WatchlistAlert> get alerts;

  /// Create a copy of Watchlist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WatchlistImplCopyWith<_$WatchlistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WatchlistAlert _$WatchlistAlertFromJson(Map<String, dynamic> json) {
  return _WatchlistAlert.fromJson(json);
}

/// @nodoc
mixin _$WatchlistAlert {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  double get threshold => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this WatchlistAlert to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WatchlistAlert
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WatchlistAlertCopyWith<WatchlistAlert> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchlistAlertCopyWith<$Res> {
  factory $WatchlistAlertCopyWith(
          WatchlistAlert value, $Res Function(WatchlistAlert) then) =
      _$WatchlistAlertCopyWithImpl<$Res, WatchlistAlert>;
  @useResult
  $Res call(
      {String id,
      String type,
      double threshold,
      bool isActive,
      DateTime createdAt});
}

/// @nodoc
class _$WatchlistAlertCopyWithImpl<$Res, $Val extends WatchlistAlert>
    implements $WatchlistAlertCopyWith<$Res> {
  _$WatchlistAlertCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WatchlistAlert
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? threshold = null,
    Object? isActive = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      threshold: null == threshold
          ? _value.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as double,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WatchlistAlertImplCopyWith<$Res>
    implements $WatchlistAlertCopyWith<$Res> {
  factory _$$WatchlistAlertImplCopyWith(_$WatchlistAlertImpl value,
          $Res Function(_$WatchlistAlertImpl) then) =
      __$$WatchlistAlertImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      double threshold,
      bool isActive,
      DateTime createdAt});
}

/// @nodoc
class __$$WatchlistAlertImplCopyWithImpl<$Res>
    extends _$WatchlistAlertCopyWithImpl<$Res, _$WatchlistAlertImpl>
    implements _$$WatchlistAlertImplCopyWith<$Res> {
  __$$WatchlistAlertImplCopyWithImpl(
      _$WatchlistAlertImpl _value, $Res Function(_$WatchlistAlertImpl) _then)
      : super(_value, _then);

  /// Create a copy of WatchlistAlert
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? threshold = null,
    Object? isActive = null,
    Object? createdAt = null,
  }) {
    return _then(_$WatchlistAlertImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      threshold: null == threshold
          ? _value.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as double,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WatchlistAlertImpl implements _WatchlistAlert {
  const _$WatchlistAlertImpl(
      {required this.id,
      required this.type,
      required this.threshold,
      required this.isActive,
      required this.createdAt});

  factory _$WatchlistAlertImpl.fromJson(Map<String, dynamic> json) =>
      _$$WatchlistAlertImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final double threshold;
  @override
  final bool isActive;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'WatchlistAlert(id: $id, type: $type, threshold: $threshold, isActive: $isActive, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchlistAlertImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.threshold, threshold) ||
                other.threshold == threshold) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, type, threshold, isActive, createdAt);

  /// Create a copy of WatchlistAlert
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WatchlistAlertImplCopyWith<_$WatchlistAlertImpl> get copyWith =>
      __$$WatchlistAlertImplCopyWithImpl<_$WatchlistAlertImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WatchlistAlertImplToJson(
      this,
    );
  }
}

abstract class _WatchlistAlert implements WatchlistAlert {
  const factory _WatchlistAlert(
      {required final String id,
      required final String type,
      required final double threshold,
      required final bool isActive,
      required final DateTime createdAt}) = _$WatchlistAlertImpl;

  factory _WatchlistAlert.fromJson(Map<String, dynamic> json) =
      _$WatchlistAlertImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  double get threshold;
  @override
  bool get isActive;
  @override
  DateTime get createdAt;

  /// Create a copy of WatchlistAlert
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WatchlistAlertImplCopyWith<_$WatchlistAlertImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Portfolio _$PortfolioFromJson(Map<String, dynamic> json) {
  return _Portfolio.fromJson(json);
}

/// @nodoc
mixin _$Portfolio {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<PortfolioHolding> get holdings => throw _privateConstructorUsedError;
  double get totalValue => throw _privateConstructorUsedError;
  double get totalReturn => throw _privateConstructorUsedError;
  double get totalReturnPercent => throw _privateConstructorUsedError;
  double get dailyReturn => throw _privateConstructorUsedError;
  double get dailyReturnPercent => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  List<PortfolioTransaction> get transactions =>
      throw _privateConstructorUsedError;

  /// Serializes this Portfolio to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Portfolio
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PortfolioCopyWith<Portfolio> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioCopyWith<$Res> {
  factory $PortfolioCopyWith(Portfolio value, $Res Function(Portfolio) then) =
      _$PortfolioCopyWithImpl<$Res, Portfolio>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      List<PortfolioHolding> holdings,
      double totalValue,
      double totalReturn,
      double totalReturnPercent,
      double dailyReturn,
      double dailyReturnPercent,
      DateTime createdAt,
      DateTime lastUpdated,
      List<PortfolioTransaction> transactions});
}

/// @nodoc
class _$PortfolioCopyWithImpl<$Res, $Val extends Portfolio>
    implements $PortfolioCopyWith<$Res> {
  _$PortfolioCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Portfolio
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? holdings = null,
    Object? totalValue = null,
    Object? totalReturn = null,
    Object? totalReturnPercent = null,
    Object? dailyReturn = null,
    Object? dailyReturnPercent = null,
    Object? createdAt = null,
    Object? lastUpdated = null,
    Object? transactions = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      holdings: null == holdings
          ? _value.holdings
          : holdings // ignore: cast_nullable_to_non_nullable
              as List<PortfolioHolding>,
      totalValue: null == totalValue
          ? _value.totalValue
          : totalValue // ignore: cast_nullable_to_non_nullable
              as double,
      totalReturn: null == totalReturn
          ? _value.totalReturn
          : totalReturn // ignore: cast_nullable_to_non_nullable
              as double,
      totalReturnPercent: null == totalReturnPercent
          ? _value.totalReturnPercent
          : totalReturnPercent // ignore: cast_nullable_to_non_nullable
              as double,
      dailyReturn: null == dailyReturn
          ? _value.dailyReturn
          : dailyReturn // ignore: cast_nullable_to_non_nullable
              as double,
      dailyReturnPercent: null == dailyReturnPercent
          ? _value.dailyReturnPercent
          : dailyReturnPercent // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<PortfolioTransaction>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PortfolioImplCopyWith<$Res>
    implements $PortfolioCopyWith<$Res> {
  factory _$$PortfolioImplCopyWith(
          _$PortfolioImpl value, $Res Function(_$PortfolioImpl) then) =
      __$$PortfolioImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      List<PortfolioHolding> holdings,
      double totalValue,
      double totalReturn,
      double totalReturnPercent,
      double dailyReturn,
      double dailyReturnPercent,
      DateTime createdAt,
      DateTime lastUpdated,
      List<PortfolioTransaction> transactions});
}

/// @nodoc
class __$$PortfolioImplCopyWithImpl<$Res>
    extends _$PortfolioCopyWithImpl<$Res, _$PortfolioImpl>
    implements _$$PortfolioImplCopyWith<$Res> {
  __$$PortfolioImplCopyWithImpl(
      _$PortfolioImpl _value, $Res Function(_$PortfolioImpl) _then)
      : super(_value, _then);

  /// Create a copy of Portfolio
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? holdings = null,
    Object? totalValue = null,
    Object? totalReturn = null,
    Object? totalReturnPercent = null,
    Object? dailyReturn = null,
    Object? dailyReturnPercent = null,
    Object? createdAt = null,
    Object? lastUpdated = null,
    Object? transactions = null,
  }) {
    return _then(_$PortfolioImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      holdings: null == holdings
          ? _value._holdings
          : holdings // ignore: cast_nullable_to_non_nullable
              as List<PortfolioHolding>,
      totalValue: null == totalValue
          ? _value.totalValue
          : totalValue // ignore: cast_nullable_to_non_nullable
              as double,
      totalReturn: null == totalReturn
          ? _value.totalReturn
          : totalReturn // ignore: cast_nullable_to_non_nullable
              as double,
      totalReturnPercent: null == totalReturnPercent
          ? _value.totalReturnPercent
          : totalReturnPercent // ignore: cast_nullable_to_non_nullable
              as double,
      dailyReturn: null == dailyReturn
          ? _value.dailyReturn
          : dailyReturn // ignore: cast_nullable_to_non_nullable
              as double,
      dailyReturnPercent: null == dailyReturnPercent
          ? _value.dailyReturnPercent
          : dailyReturnPercent // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<PortfolioTransaction>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PortfolioImpl implements _Portfolio {
  const _$PortfolioImpl(
      {required this.id,
      required this.name,
      required this.description,
      required final List<PortfolioHolding> holdings,
      required this.totalValue,
      required this.totalReturn,
      required this.totalReturnPercent,
      required this.dailyReturn,
      required this.dailyReturnPercent,
      required this.createdAt,
      required this.lastUpdated,
      required final List<PortfolioTransaction> transactions})
      : _holdings = holdings,
        _transactions = transactions;

  factory _$PortfolioImpl.fromJson(Map<String, dynamic> json) =>
      _$$PortfolioImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  final List<PortfolioHolding> _holdings;
  @override
  List<PortfolioHolding> get holdings {
    if (_holdings is EqualUnmodifiableListView) return _holdings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_holdings);
  }

  @override
  final double totalValue;
  @override
  final double totalReturn;
  @override
  final double totalReturnPercent;
  @override
  final double dailyReturn;
  @override
  final double dailyReturnPercent;
  @override
  final DateTime createdAt;
  @override
  final DateTime lastUpdated;
  final List<PortfolioTransaction> _transactions;
  @override
  List<PortfolioTransaction> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  String toString() {
    return 'Portfolio(id: $id, name: $name, description: $description, holdings: $holdings, totalValue: $totalValue, totalReturn: $totalReturn, totalReturnPercent: $totalReturnPercent, dailyReturn: $dailyReturn, dailyReturnPercent: $dailyReturnPercent, createdAt: $createdAt, lastUpdated: $lastUpdated, transactions: $transactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PortfolioImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._holdings, _holdings) &&
            (identical(other.totalValue, totalValue) ||
                other.totalValue == totalValue) &&
            (identical(other.totalReturn, totalReturn) ||
                other.totalReturn == totalReturn) &&
            (identical(other.totalReturnPercent, totalReturnPercent) ||
                other.totalReturnPercent == totalReturnPercent) &&
            (identical(other.dailyReturn, dailyReturn) ||
                other.dailyReturn == dailyReturn) &&
            (identical(other.dailyReturnPercent, dailyReturnPercent) ||
                other.dailyReturnPercent == dailyReturnPercent) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      const DeepCollectionEquality().hash(_holdings),
      totalValue,
      totalReturn,
      totalReturnPercent,
      dailyReturn,
      dailyReturnPercent,
      createdAt,
      lastUpdated,
      const DeepCollectionEquality().hash(_transactions));

  /// Create a copy of Portfolio
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PortfolioImplCopyWith<_$PortfolioImpl> get copyWith =>
      __$$PortfolioImplCopyWithImpl<_$PortfolioImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PortfolioImplToJson(
      this,
    );
  }
}

abstract class _Portfolio implements Portfolio {
  const factory _Portfolio(
          {required final String id,
          required final String name,
          required final String description,
          required final List<PortfolioHolding> holdings,
          required final double totalValue,
          required final double totalReturn,
          required final double totalReturnPercent,
          required final double dailyReturn,
          required final double dailyReturnPercent,
          required final DateTime createdAt,
          required final DateTime lastUpdated,
          required final List<PortfolioTransaction> transactions}) =
      _$PortfolioImpl;

  factory _Portfolio.fromJson(Map<String, dynamic> json) =
      _$PortfolioImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  List<PortfolioHolding> get holdings;
  @override
  double get totalValue;
  @override
  double get totalReturn;
  @override
  double get totalReturnPercent;
  @override
  double get dailyReturn;
  @override
  double get dailyReturnPercent;
  @override
  DateTime get createdAt;
  @override
  DateTime get lastUpdated;
  @override
  List<PortfolioTransaction> get transactions;

  /// Create a copy of Portfolio
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PortfolioImplCopyWith<_$PortfolioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PortfolioHolding _$PortfolioHoldingFromJson(Map<String, dynamic> json) {
  return _PortfolioHolding.fromJson(json);
}

/// @nodoc
mixin _$PortfolioHolding {
  String get symbol => throw _privateConstructorUsedError;
  double get shares => throw _privateConstructorUsedError;
  double get averagePrice => throw _privateConstructorUsedError;
  double get currentPrice => throw _privateConstructorUsedError;
  double get marketValue => throw _privateConstructorUsedError;
  double get totalReturn => throw _privateConstructorUsedError;
  double get totalReturnPercent => throw _privateConstructorUsedError;
  DateTime get firstPurchase => throw _privateConstructorUsedError;
  DateTime get lastPurchase => throw _privateConstructorUsedError;

  /// Serializes this PortfolioHolding to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PortfolioHolding
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PortfolioHoldingCopyWith<PortfolioHolding> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioHoldingCopyWith<$Res> {
  factory $PortfolioHoldingCopyWith(
          PortfolioHolding value, $Res Function(PortfolioHolding) then) =
      _$PortfolioHoldingCopyWithImpl<$Res, PortfolioHolding>;
  @useResult
  $Res call(
      {String symbol,
      double shares,
      double averagePrice,
      double currentPrice,
      double marketValue,
      double totalReturn,
      double totalReturnPercent,
      DateTime firstPurchase,
      DateTime lastPurchase});
}

/// @nodoc
class _$PortfolioHoldingCopyWithImpl<$Res, $Val extends PortfolioHolding>
    implements $PortfolioHoldingCopyWith<$Res> {
  _$PortfolioHoldingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PortfolioHolding
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? shares = null,
    Object? averagePrice = null,
    Object? currentPrice = null,
    Object? marketValue = null,
    Object? totalReturn = null,
    Object? totalReturnPercent = null,
    Object? firstPurchase = null,
    Object? lastPurchase = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      shares: null == shares
          ? _value.shares
          : shares // ignore: cast_nullable_to_non_nullable
              as double,
      averagePrice: null == averagePrice
          ? _value.averagePrice
          : averagePrice // ignore: cast_nullable_to_non_nullable
              as double,
      currentPrice: null == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
      marketValue: null == marketValue
          ? _value.marketValue
          : marketValue // ignore: cast_nullable_to_non_nullable
              as double,
      totalReturn: null == totalReturn
          ? _value.totalReturn
          : totalReturn // ignore: cast_nullable_to_non_nullable
              as double,
      totalReturnPercent: null == totalReturnPercent
          ? _value.totalReturnPercent
          : totalReturnPercent // ignore: cast_nullable_to_non_nullable
              as double,
      firstPurchase: null == firstPurchase
          ? _value.firstPurchase
          : firstPurchase // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastPurchase: null == lastPurchase
          ? _value.lastPurchase
          : lastPurchase // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PortfolioHoldingImplCopyWith<$Res>
    implements $PortfolioHoldingCopyWith<$Res> {
  factory _$$PortfolioHoldingImplCopyWith(_$PortfolioHoldingImpl value,
          $Res Function(_$PortfolioHoldingImpl) then) =
      __$$PortfolioHoldingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      double shares,
      double averagePrice,
      double currentPrice,
      double marketValue,
      double totalReturn,
      double totalReturnPercent,
      DateTime firstPurchase,
      DateTime lastPurchase});
}

/// @nodoc
class __$$PortfolioHoldingImplCopyWithImpl<$Res>
    extends _$PortfolioHoldingCopyWithImpl<$Res, _$PortfolioHoldingImpl>
    implements _$$PortfolioHoldingImplCopyWith<$Res> {
  __$$PortfolioHoldingImplCopyWithImpl(_$PortfolioHoldingImpl _value,
      $Res Function(_$PortfolioHoldingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PortfolioHolding
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? shares = null,
    Object? averagePrice = null,
    Object? currentPrice = null,
    Object? marketValue = null,
    Object? totalReturn = null,
    Object? totalReturnPercent = null,
    Object? firstPurchase = null,
    Object? lastPurchase = null,
  }) {
    return _then(_$PortfolioHoldingImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      shares: null == shares
          ? _value.shares
          : shares // ignore: cast_nullable_to_non_nullable
              as double,
      averagePrice: null == averagePrice
          ? _value.averagePrice
          : averagePrice // ignore: cast_nullable_to_non_nullable
              as double,
      currentPrice: null == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
      marketValue: null == marketValue
          ? _value.marketValue
          : marketValue // ignore: cast_nullable_to_non_nullable
              as double,
      totalReturn: null == totalReturn
          ? _value.totalReturn
          : totalReturn // ignore: cast_nullable_to_non_nullable
              as double,
      totalReturnPercent: null == totalReturnPercent
          ? _value.totalReturnPercent
          : totalReturnPercent // ignore: cast_nullable_to_non_nullable
              as double,
      firstPurchase: null == firstPurchase
          ? _value.firstPurchase
          : firstPurchase // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastPurchase: null == lastPurchase
          ? _value.lastPurchase
          : lastPurchase // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PortfolioHoldingImpl implements _PortfolioHolding {
  const _$PortfolioHoldingImpl(
      {required this.symbol,
      required this.shares,
      required this.averagePrice,
      required this.currentPrice,
      required this.marketValue,
      required this.totalReturn,
      required this.totalReturnPercent,
      required this.firstPurchase,
      required this.lastPurchase});

  factory _$PortfolioHoldingImpl.fromJson(Map<String, dynamic> json) =>
      _$$PortfolioHoldingImplFromJson(json);

  @override
  final String symbol;
  @override
  final double shares;
  @override
  final double averagePrice;
  @override
  final double currentPrice;
  @override
  final double marketValue;
  @override
  final double totalReturn;
  @override
  final double totalReturnPercent;
  @override
  final DateTime firstPurchase;
  @override
  final DateTime lastPurchase;

  @override
  String toString() {
    return 'PortfolioHolding(symbol: $symbol, shares: $shares, averagePrice: $averagePrice, currentPrice: $currentPrice, marketValue: $marketValue, totalReturn: $totalReturn, totalReturnPercent: $totalReturnPercent, firstPurchase: $firstPurchase, lastPurchase: $lastPurchase)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PortfolioHoldingImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.shares, shares) || other.shares == shares) &&
            (identical(other.averagePrice, averagePrice) ||
                other.averagePrice == averagePrice) &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice) &&
            (identical(other.marketValue, marketValue) ||
                other.marketValue == marketValue) &&
            (identical(other.totalReturn, totalReturn) ||
                other.totalReturn == totalReturn) &&
            (identical(other.totalReturnPercent, totalReturnPercent) ||
                other.totalReturnPercent == totalReturnPercent) &&
            (identical(other.firstPurchase, firstPurchase) ||
                other.firstPurchase == firstPurchase) &&
            (identical(other.lastPurchase, lastPurchase) ||
                other.lastPurchase == lastPurchase));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      symbol,
      shares,
      averagePrice,
      currentPrice,
      marketValue,
      totalReturn,
      totalReturnPercent,
      firstPurchase,
      lastPurchase);

  /// Create a copy of PortfolioHolding
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PortfolioHoldingImplCopyWith<_$PortfolioHoldingImpl> get copyWith =>
      __$$PortfolioHoldingImplCopyWithImpl<_$PortfolioHoldingImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PortfolioHoldingImplToJson(
      this,
    );
  }
}

abstract class _PortfolioHolding implements PortfolioHolding {
  const factory _PortfolioHolding(
      {required final String symbol,
      required final double shares,
      required final double averagePrice,
      required final double currentPrice,
      required final double marketValue,
      required final double totalReturn,
      required final double totalReturnPercent,
      required final DateTime firstPurchase,
      required final DateTime lastPurchase}) = _$PortfolioHoldingImpl;

  factory _PortfolioHolding.fromJson(Map<String, dynamic> json) =
      _$PortfolioHoldingImpl.fromJson;

  @override
  String get symbol;
  @override
  double get shares;
  @override
  double get averagePrice;
  @override
  double get currentPrice;
  @override
  double get marketValue;
  @override
  double get totalReturn;
  @override
  double get totalReturnPercent;
  @override
  DateTime get firstPurchase;
  @override
  DateTime get lastPurchase;

  /// Create a copy of PortfolioHolding
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PortfolioHoldingImplCopyWith<_$PortfolioHoldingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PortfolioTransaction _$PortfolioTransactionFromJson(Map<String, dynamic> json) {
  return _PortfolioTransaction.fromJson(json);
}

/// @nodoc
mixin _$PortfolioTransaction {
  String get id => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  double get shares => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  /// Serializes this PortfolioTransaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PortfolioTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PortfolioTransactionCopyWith<PortfolioTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioTransactionCopyWith<$Res> {
  factory $PortfolioTransactionCopyWith(PortfolioTransaction value,
          $Res Function(PortfolioTransaction) then) =
      _$PortfolioTransactionCopyWithImpl<$Res, PortfolioTransaction>;
  @useResult
  $Res call(
      {String id,
      String symbol,
      String type,
      double shares,
      double price,
      double total,
      DateTime timestamp,
      String? notes});
}

/// @nodoc
class _$PortfolioTransactionCopyWithImpl<$Res,
        $Val extends PortfolioTransaction>
    implements $PortfolioTransactionCopyWith<$Res> {
  _$PortfolioTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PortfolioTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? symbol = null,
    Object? type = null,
    Object? shares = null,
    Object? price = null,
    Object? total = null,
    Object? timestamp = null,
    Object? notes = freezed,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      shares: null == shares
          ? _value.shares
          : shares // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PortfolioTransactionImplCopyWith<$Res>
    implements $PortfolioTransactionCopyWith<$Res> {
  factory _$$PortfolioTransactionImplCopyWith(_$PortfolioTransactionImpl value,
          $Res Function(_$PortfolioTransactionImpl) then) =
      __$$PortfolioTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String symbol,
      String type,
      double shares,
      double price,
      double total,
      DateTime timestamp,
      String? notes});
}

/// @nodoc
class __$$PortfolioTransactionImplCopyWithImpl<$Res>
    extends _$PortfolioTransactionCopyWithImpl<$Res, _$PortfolioTransactionImpl>
    implements _$$PortfolioTransactionImplCopyWith<$Res> {
  __$$PortfolioTransactionImplCopyWithImpl(_$PortfolioTransactionImpl _value,
      $Res Function(_$PortfolioTransactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of PortfolioTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? symbol = null,
    Object? type = null,
    Object? shares = null,
    Object? price = null,
    Object? total = null,
    Object? timestamp = null,
    Object? notes = freezed,
  }) {
    return _then(_$PortfolioTransactionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      shares: null == shares
          ? _value.shares
          : shares // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PortfolioTransactionImpl implements _PortfolioTransaction {
  const _$PortfolioTransactionImpl(
      {required this.id,
      required this.symbol,
      required this.type,
      required this.shares,
      required this.price,
      required this.total,
      required this.timestamp,
      required this.notes});

  factory _$PortfolioTransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PortfolioTransactionImplFromJson(json);

  @override
  final String id;
  @override
  final String symbol;
  @override
  final String type;
  @override
  final double shares;
  @override
  final double price;
  @override
  final double total;
  @override
  final DateTime timestamp;
  @override
  final String? notes;

  @override
  String toString() {
    return 'PortfolioTransaction(id: $id, symbol: $symbol, type: $type, shares: $shares, price: $price, total: $total, timestamp: $timestamp, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PortfolioTransactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.shares, shares) || other.shares == shares) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, symbol, type, shares, price, total, timestamp, notes);

  /// Create a copy of PortfolioTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PortfolioTransactionImplCopyWith<_$PortfolioTransactionImpl>
      get copyWith =>
          __$$PortfolioTransactionImplCopyWithImpl<_$PortfolioTransactionImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PortfolioTransactionImplToJson(
      this,
    );
  }
}

abstract class _PortfolioTransaction implements PortfolioTransaction {
  const factory _PortfolioTransaction(
      {required final String id,
      required final String symbol,
      required final String type,
      required final double shares,
      required final double price,
      required final double total,
      required final DateTime timestamp,
      required final String? notes}) = _$PortfolioTransactionImpl;

  factory _PortfolioTransaction.fromJson(Map<String, dynamic> json) =
      _$PortfolioTransactionImpl.fromJson;

  @override
  String get id;
  @override
  String get symbol;
  @override
  String get type;
  @override
  double get shares;
  @override
  double get price;
  @override
  double get total;
  @override
  DateTime get timestamp;
  @override
  String? get notes;

  /// Create a copy of PortfolioTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PortfolioTransactionImplCopyWith<_$PortfolioTransactionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Alert _$AlertFromJson(Map<String, dynamic> json) {
  return _Alert.fromJson(json);
}

/// @nodoc
mixin _$Alert {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  double get threshold => throw _privateConstructorUsedError;
  String get condition => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get triggeredAt => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this Alert to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Alert
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AlertCopyWith<Alert> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlertCopyWith<$Res> {
  factory $AlertCopyWith(Alert value, $Res Function(Alert) then) =
      _$AlertCopyWithImpl<$Res, Alert>;
  @useResult
  $Res call(
      {String id,
      String type,
      String symbol,
      double threshold,
      String condition,
      bool isActive,
      DateTime createdAt,
      DateTime? triggeredAt,
      String? message});
}

/// @nodoc
class _$AlertCopyWithImpl<$Res, $Val extends Alert>
    implements $AlertCopyWith<$Res> {
  _$AlertCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Alert
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? symbol = null,
    Object? threshold = null,
    Object? condition = null,
    Object? isActive = null,
    Object? createdAt = null,
    Object? triggeredAt = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      threshold: null == threshold
          ? _value.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as double,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      triggeredAt: freezed == triggeredAt
          ? _value.triggeredAt
          : triggeredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlertImplCopyWith<$Res> implements $AlertCopyWith<$Res> {
  factory _$$AlertImplCopyWith(
          _$AlertImpl value, $Res Function(_$AlertImpl) then) =
      __$$AlertImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String symbol,
      double threshold,
      String condition,
      bool isActive,
      DateTime createdAt,
      DateTime? triggeredAt,
      String? message});
}

/// @nodoc
class __$$AlertImplCopyWithImpl<$Res>
    extends _$AlertCopyWithImpl<$Res, _$AlertImpl>
    implements _$$AlertImplCopyWith<$Res> {
  __$$AlertImplCopyWithImpl(
      _$AlertImpl _value, $Res Function(_$AlertImpl) _then)
      : super(_value, _then);

  /// Create a copy of Alert
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? symbol = null,
    Object? threshold = null,
    Object? condition = null,
    Object? isActive = null,
    Object? createdAt = null,
    Object? triggeredAt = freezed,
    Object? message = freezed,
  }) {
    return _then(_$AlertImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      threshold: null == threshold
          ? _value.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as double,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      triggeredAt: freezed == triggeredAt
          ? _value.triggeredAt
          : triggeredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlertImpl implements _Alert {
  const _$AlertImpl(
      {required this.id,
      required this.type,
      required this.symbol,
      required this.threshold,
      required this.condition,
      required this.isActive,
      required this.createdAt,
      required this.triggeredAt,
      required this.message});

  factory _$AlertImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlertImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final String symbol;
  @override
  final double threshold;
  @override
  final String condition;
  @override
  final bool isActive;
  @override
  final DateTime createdAt;
  @override
  final DateTime? triggeredAt;
  @override
  final String? message;

  @override
  String toString() {
    return 'Alert(id: $id, type: $type, symbol: $symbol, threshold: $threshold, condition: $condition, isActive: $isActive, createdAt: $createdAt, triggeredAt: $triggeredAt, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlertImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.threshold, threshold) ||
                other.threshold == threshold) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.triggeredAt, triggeredAt) ||
                other.triggeredAt == triggeredAt) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, symbol, threshold,
      condition, isActive, createdAt, triggeredAt, message);

  /// Create a copy of Alert
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AlertImplCopyWith<_$AlertImpl> get copyWith =>
      __$$AlertImplCopyWithImpl<_$AlertImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlertImplToJson(
      this,
    );
  }
}

abstract class _Alert implements Alert {
  const factory _Alert(
      {required final String id,
      required final String type,
      required final String symbol,
      required final double threshold,
      required final String condition,
      required final bool isActive,
      required final DateTime createdAt,
      required final DateTime? triggeredAt,
      required final String? message}) = _$AlertImpl;

  factory _Alert.fromJson(Map<String, dynamic> json) = _$AlertImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  String get symbol;
  @override
  double get threshold;
  @override
  String get condition;
  @override
  bool get isActive;
  @override
  DateTime get createdAt;
  @override
  DateTime? get triggeredAt;
  @override
  String? get message;

  /// Create a copy of Alert
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AlertImplCopyWith<_$AlertImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Note _$NoteFromJson(Map<String, dynamic> json) {
  return _Note.fromJson(json);
}

/// @nodoc
mixin _$Note {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String? get symbol => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  bool get isPrivate => throw _privateConstructorUsedError;

  /// Serializes this Note to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Note
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoteCopyWith<Note> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteCopyWith<$Res> {
  factory $NoteCopyWith(Note value, $Res Function(Note) then) =
      _$NoteCopyWithImpl<$Res, Note>;
  @useResult
  $Res call(
      {String id,
      String title,
      String content,
      String? symbol,
      List<String> tags,
      DateTime createdAt,
      DateTime lastUpdated,
      bool isPrivate});
}

/// @nodoc
class _$NoteCopyWithImpl<$Res, $Val extends Note>
    implements $NoteCopyWith<$Res> {
  _$NoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Note
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? symbol = freezed,
    Object? tags = null,
    Object? createdAt = null,
    Object? lastUpdated = null,
    Object? isPrivate = null,
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
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isPrivate: null == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteImplCopyWith<$Res> implements $NoteCopyWith<$Res> {
  factory _$$NoteImplCopyWith(
          _$NoteImpl value, $Res Function(_$NoteImpl) then) =
      __$$NoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String content,
      String? symbol,
      List<String> tags,
      DateTime createdAt,
      DateTime lastUpdated,
      bool isPrivate});
}

/// @nodoc
class __$$NoteImplCopyWithImpl<$Res>
    extends _$NoteCopyWithImpl<$Res, _$NoteImpl>
    implements _$$NoteImplCopyWith<$Res> {
  __$$NoteImplCopyWithImpl(_$NoteImpl _value, $Res Function(_$NoteImpl) _then)
      : super(_value, _then);

  /// Create a copy of Note
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? symbol = freezed,
    Object? tags = null,
    Object? createdAt = null,
    Object? lastUpdated = null,
    Object? isPrivate = null,
  }) {
    return _then(_$NoteImpl(
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
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isPrivate: null == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoteImpl implements _Note {
  const _$NoteImpl(
      {required this.id,
      required this.title,
      required this.content,
      required this.symbol,
      required final List<String> tags,
      required this.createdAt,
      required this.lastUpdated,
      required this.isPrivate})
      : _tags = tags;

  factory _$NoteImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String content;
  @override
  final String? symbol;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime lastUpdated;
  @override
  final bool isPrivate;

  @override
  String toString() {
    return 'Note(id: $id, title: $title, content: $content, symbol: $symbol, tags: $tags, createdAt: $createdAt, lastUpdated: $lastUpdated, isPrivate: $isPrivate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.isPrivate, isPrivate) ||
                other.isPrivate == isPrivate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      content,
      symbol,
      const DeepCollectionEquality().hash(_tags),
      createdAt,
      lastUpdated,
      isPrivate);

  /// Create a copy of Note
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteImplCopyWith<_$NoteImpl> get copyWith =>
      __$$NoteImplCopyWithImpl<_$NoteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteImplToJson(
      this,
    );
  }
}

abstract class _Note implements Note {
  const factory _Note(
      {required final String id,
      required final String title,
      required final String content,
      required final String? symbol,
      required final List<String> tags,
      required final DateTime createdAt,
      required final DateTime lastUpdated,
      required final bool isPrivate}) = _$NoteImpl;

  factory _Note.fromJson(Map<String, dynamic> json) = _$NoteImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get content;
  @override
  String? get symbol;
  @override
  List<String> get tags;
  @override
  DateTime get createdAt;
  @override
  DateTime get lastUpdated;
  @override
  bool get isPrivate;

  /// Create a copy of Note
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoteImplCopyWith<_$NoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchHistory _$SearchHistoryFromJson(Map<String, dynamic> json) {
  return _SearchHistory.fromJson(json);
}

/// @nodoc
mixin _$SearchHistory {
  String get id => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  int get resultCount => throw _privateConstructorUsedError;
  List<String> get clickedResults => throw _privateConstructorUsedError;

  /// Serializes this SearchHistory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchHistoryCopyWith<SearchHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchHistoryCopyWith<$Res> {
  factory $SearchHistoryCopyWith(
          SearchHistory value, $Res Function(SearchHistory) then) =
      _$SearchHistoryCopyWithImpl<$Res, SearchHistory>;
  @useResult
  $Res call(
      {String id,
      String query,
      String type,
      DateTime timestamp,
      int resultCount,
      List<String> clickedResults});
}

/// @nodoc
class _$SearchHistoryCopyWithImpl<$Res, $Val extends SearchHistory>
    implements $SearchHistoryCopyWith<$Res> {
  _$SearchHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? query = null,
    Object? type = null,
    Object? timestamp = null,
    Object? resultCount = null,
    Object? clickedResults = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      resultCount: null == resultCount
          ? _value.resultCount
          : resultCount // ignore: cast_nullable_to_non_nullable
              as int,
      clickedResults: null == clickedResults
          ? _value.clickedResults
          : clickedResults // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchHistoryImplCopyWith<$Res>
    implements $SearchHistoryCopyWith<$Res> {
  factory _$$SearchHistoryImplCopyWith(
          _$SearchHistoryImpl value, $Res Function(_$SearchHistoryImpl) then) =
      __$$SearchHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String query,
      String type,
      DateTime timestamp,
      int resultCount,
      List<String> clickedResults});
}

/// @nodoc
class __$$SearchHistoryImplCopyWithImpl<$Res>
    extends _$SearchHistoryCopyWithImpl<$Res, _$SearchHistoryImpl>
    implements _$$SearchHistoryImplCopyWith<$Res> {
  __$$SearchHistoryImplCopyWithImpl(
      _$SearchHistoryImpl _value, $Res Function(_$SearchHistoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? query = null,
    Object? type = null,
    Object? timestamp = null,
    Object? resultCount = null,
    Object? clickedResults = null,
  }) {
    return _then(_$SearchHistoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      resultCount: null == resultCount
          ? _value.resultCount
          : resultCount // ignore: cast_nullable_to_non_nullable
              as int,
      clickedResults: null == clickedResults
          ? _value._clickedResults
          : clickedResults // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchHistoryImpl implements _SearchHistory {
  const _$SearchHistoryImpl(
      {required this.id,
      required this.query,
      required this.type,
      required this.timestamp,
      required this.resultCount,
      required final List<String> clickedResults})
      : _clickedResults = clickedResults;

  factory _$SearchHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchHistoryImplFromJson(json);

  @override
  final String id;
  @override
  final String query;
  @override
  final String type;
  @override
  final DateTime timestamp;
  @override
  final int resultCount;
  final List<String> _clickedResults;
  @override
  List<String> get clickedResults {
    if (_clickedResults is EqualUnmodifiableListView) return _clickedResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_clickedResults);
  }

  @override
  String toString() {
    return 'SearchHistory(id: $id, query: $query, type: $type, timestamp: $timestamp, resultCount: $resultCount, clickedResults: $clickedResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchHistoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.resultCount, resultCount) ||
                other.resultCount == resultCount) &&
            const DeepCollectionEquality()
                .equals(other._clickedResults, _clickedResults));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, query, type, timestamp,
      resultCount, const DeepCollectionEquality().hash(_clickedResults));

  /// Create a copy of SearchHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchHistoryImplCopyWith<_$SearchHistoryImpl> get copyWith =>
      __$$SearchHistoryImplCopyWithImpl<_$SearchHistoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchHistoryImplToJson(
      this,
    );
  }
}

abstract class _SearchHistory implements SearchHistory {
  const factory _SearchHistory(
      {required final String id,
      required final String query,
      required final String type,
      required final DateTime timestamp,
      required final int resultCount,
      required final List<String> clickedResults}) = _$SearchHistoryImpl;

  factory _SearchHistory.fromJson(Map<String, dynamic> json) =
      _$SearchHistoryImpl.fromJson;

  @override
  String get id;
  @override
  String get query;
  @override
  String get type;
  @override
  DateTime get timestamp;
  @override
  int get resultCount;
  @override
  List<String> get clickedResults;

  /// Create a copy of SearchHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchHistoryImplCopyWith<_$SearchHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ViewHistory _$ViewHistoryFromJson(Map<String, dynamic> json) {
  return _ViewHistory.fromJson(json);
}

/// @nodoc
mixin _$ViewHistory {
  String get id => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  List<String> get actions => throw _privateConstructorUsedError;

  /// Serializes this ViewHistory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ViewHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ViewHistoryCopyWith<ViewHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewHistoryCopyWith<$Res> {
  factory $ViewHistoryCopyWith(
          ViewHistory value, $Res Function(ViewHistory) then) =
      _$ViewHistoryCopyWithImpl<$Res, ViewHistory>;
  @useResult
  $Res call(
      {String id,
      String symbol,
      String type,
      DateTime timestamp,
      int duration,
      List<String> actions});
}

/// @nodoc
class _$ViewHistoryCopyWithImpl<$Res, $Val extends ViewHistory>
    implements $ViewHistoryCopyWith<$Res> {
  _$ViewHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ViewHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? symbol = null,
    Object? type = null,
    Object? timestamp = null,
    Object? duration = null,
    Object? actions = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      actions: null == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ViewHistoryImplCopyWith<$Res>
    implements $ViewHistoryCopyWith<$Res> {
  factory _$$ViewHistoryImplCopyWith(
          _$ViewHistoryImpl value, $Res Function(_$ViewHistoryImpl) then) =
      __$$ViewHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String symbol,
      String type,
      DateTime timestamp,
      int duration,
      List<String> actions});
}

/// @nodoc
class __$$ViewHistoryImplCopyWithImpl<$Res>
    extends _$ViewHistoryCopyWithImpl<$Res, _$ViewHistoryImpl>
    implements _$$ViewHistoryImplCopyWith<$Res> {
  __$$ViewHistoryImplCopyWithImpl(
      _$ViewHistoryImpl _value, $Res Function(_$ViewHistoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of ViewHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? symbol = null,
    Object? type = null,
    Object? timestamp = null,
    Object? duration = null,
    Object? actions = null,
  }) {
    return _then(_$ViewHistoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      actions: null == actions
          ? _value._actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ViewHistoryImpl implements _ViewHistory {
  const _$ViewHistoryImpl(
      {required this.id,
      required this.symbol,
      required this.type,
      required this.timestamp,
      required this.duration,
      required final List<String> actions})
      : _actions = actions;

  factory _$ViewHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ViewHistoryImplFromJson(json);

  @override
  final String id;
  @override
  final String symbol;
  @override
  final String type;
  @override
  final DateTime timestamp;
  @override
  final int duration;
  final List<String> _actions;
  @override
  List<String> get actions {
    if (_actions is EqualUnmodifiableListView) return _actions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_actions);
  }

  @override
  String toString() {
    return 'ViewHistory(id: $id, symbol: $symbol, type: $type, timestamp: $timestamp, duration: $duration, actions: $actions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewHistoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            const DeepCollectionEquality().equals(other._actions, _actions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, symbol, type, timestamp,
      duration, const DeepCollectionEquality().hash(_actions));

  /// Create a copy of ViewHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewHistoryImplCopyWith<_$ViewHistoryImpl> get copyWith =>
      __$$ViewHistoryImplCopyWithImpl<_$ViewHistoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ViewHistoryImplToJson(
      this,
    );
  }
}

abstract class _ViewHistory implements ViewHistory {
  const factory _ViewHistory(
      {required final String id,
      required final String symbol,
      required final String type,
      required final DateTime timestamp,
      required final int duration,
      required final List<String> actions}) = _$ViewHistoryImpl;

  factory _ViewHistory.fromJson(Map<String, dynamic> json) =
      _$ViewHistoryImpl.fromJson;

  @override
  String get id;
  @override
  String get symbol;
  @override
  String get type;
  @override
  DateTime get timestamp;
  @override
  int get duration;
  @override
  List<String> get actions;

  /// Create a copy of ViewHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ViewHistoryImplCopyWith<_$ViewHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Interaction _$InteractionFromJson(Map<String, dynamic> json) {
  return _Interaction.fromJson(json);
}

/// @nodoc
mixin _$Interaction {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get target => throw _privateConstructorUsedError;
  String get action => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  double get duration => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;

  /// Serializes this Interaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Interaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InteractionCopyWith<Interaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InteractionCopyWith<$Res> {
  factory $InteractionCopyWith(
          Interaction value, $Res Function(Interaction) then) =
      _$InteractionCopyWithImpl<$Res, Interaction>;
  @useResult
  $Res call(
      {String id,
      String type,
      String target,
      String action,
      DateTime timestamp,
      double duration,
      Map<String, dynamic> metadata});
}

/// @nodoc
class _$InteractionCopyWithImpl<$Res, $Val extends Interaction>
    implements $InteractionCopyWith<$Res> {
  _$InteractionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Interaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? target = null,
    Object? action = null,
    Object? timestamp = null,
    Object? duration = null,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InteractionImplCopyWith<$Res>
    implements $InteractionCopyWith<$Res> {
  factory _$$InteractionImplCopyWith(
          _$InteractionImpl value, $Res Function(_$InteractionImpl) then) =
      __$$InteractionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String target,
      String action,
      DateTime timestamp,
      double duration,
      Map<String, dynamic> metadata});
}

/// @nodoc
class __$$InteractionImplCopyWithImpl<$Res>
    extends _$InteractionCopyWithImpl<$Res, _$InteractionImpl>
    implements _$$InteractionImplCopyWith<$Res> {
  __$$InteractionImplCopyWithImpl(
      _$InteractionImpl _value, $Res Function(_$InteractionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Interaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? target = null,
    Object? action = null,
    Object? timestamp = null,
    Object? duration = null,
    Object? metadata = null,
  }) {
    return _then(_$InteractionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InteractionImpl implements _Interaction {
  const _$InteractionImpl(
      {required this.id,
      required this.type,
      required this.target,
      required this.action,
      required this.timestamp,
      required this.duration,
      required final Map<String, dynamic> metadata})
      : _metadata = metadata;

  factory _$InteractionImpl.fromJson(Map<String, dynamic> json) =>
      _$$InteractionImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final String target;
  @override
  final String action;
  @override
  final DateTime timestamp;
  @override
  final double duration;
  final Map<String, dynamic> _metadata;
  @override
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  String toString() {
    return 'Interaction(id: $id, type: $type, target: $target, action: $action, timestamp: $timestamp, duration: $duration, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InteractionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, target, action,
      timestamp, duration, const DeepCollectionEquality().hash(_metadata));

  /// Create a copy of Interaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InteractionImplCopyWith<_$InteractionImpl> get copyWith =>
      __$$InteractionImplCopyWithImpl<_$InteractionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InteractionImplToJson(
      this,
    );
  }
}

abstract class _Interaction implements Interaction {
  const factory _Interaction(
      {required final String id,
      required final String type,
      required final String target,
      required final String action,
      required final DateTime timestamp,
      required final double duration,
      required final Map<String, dynamic> metadata}) = _$InteractionImpl;

  factory _Interaction.fromJson(Map<String, dynamic> json) =
      _$InteractionImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  String get target;
  @override
  String get action;
  @override
  DateTime get timestamp;
  @override
  double get duration;
  @override
  Map<String, dynamic> get metadata;

  /// Create a copy of Interaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InteractionImplCopyWith<_$InteractionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Recommendation _$RecommendationFromJson(Map<String, dynamic> json) {
  return _Recommendation.fromJson(json);
}

/// @nodoc
mixin _$Recommendation {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;
  List<String> get reasons => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get expiresAt => throw _privateConstructorUsedError;
  bool get isRead => throw _privateConstructorUsedError;
  bool get isAccepted => throw _privateConstructorUsedError;
  String? get feedback => throw _privateConstructorUsedError;

  /// Serializes this Recommendation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Recommendation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecommendationCopyWith<Recommendation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendationCopyWith<$Res> {
  factory $RecommendationCopyWith(
          Recommendation value, $Res Function(Recommendation) then) =
      _$RecommendationCopyWithImpl<$Res, Recommendation>;
  @useResult
  $Res call(
      {String id,
      String type,
      String title,
      String description,
      double confidence,
      List<String> reasons,
      DateTime createdAt,
      DateTime expiresAt,
      bool isRead,
      bool isAccepted,
      String? feedback});
}

/// @nodoc
class _$RecommendationCopyWithImpl<$Res, $Val extends Recommendation>
    implements $RecommendationCopyWith<$Res> {
  _$RecommendationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Recommendation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? description = null,
    Object? confidence = null,
    Object? reasons = null,
    Object? createdAt = null,
    Object? expiresAt = null,
    Object? isRead = null,
    Object? isAccepted = null,
    Object? feedback = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      reasons: null == reasons
          ? _value.reasons
          : reasons // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      isAccepted: null == isAccepted
          ? _value.isAccepted
          : isAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
      feedback: freezed == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecommendationImplCopyWith<$Res>
    implements $RecommendationCopyWith<$Res> {
  factory _$$RecommendationImplCopyWith(_$RecommendationImpl value,
          $Res Function(_$RecommendationImpl) then) =
      __$$RecommendationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String title,
      String description,
      double confidence,
      List<String> reasons,
      DateTime createdAt,
      DateTime expiresAt,
      bool isRead,
      bool isAccepted,
      String? feedback});
}

/// @nodoc
class __$$RecommendationImplCopyWithImpl<$Res>
    extends _$RecommendationCopyWithImpl<$Res, _$RecommendationImpl>
    implements _$$RecommendationImplCopyWith<$Res> {
  __$$RecommendationImplCopyWithImpl(
      _$RecommendationImpl _value, $Res Function(_$RecommendationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Recommendation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? description = null,
    Object? confidence = null,
    Object? reasons = null,
    Object? createdAt = null,
    Object? expiresAt = null,
    Object? isRead = null,
    Object? isAccepted = null,
    Object? feedback = freezed,
  }) {
    return _then(_$RecommendationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      reasons: null == reasons
          ? _value._reasons
          : reasons // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      isAccepted: null == isAccepted
          ? _value.isAccepted
          : isAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
      feedback: freezed == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecommendationImpl implements _Recommendation {
  const _$RecommendationImpl(
      {required this.id,
      required this.type,
      required this.title,
      required this.description,
      required this.confidence,
      required final List<String> reasons,
      required this.createdAt,
      required this.expiresAt,
      required this.isRead,
      required this.isAccepted,
      required this.feedback})
      : _reasons = reasons;

  factory _$RecommendationImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecommendationImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final String title;
  @override
  final String description;
  @override
  final double confidence;
  final List<String> _reasons;
  @override
  List<String> get reasons {
    if (_reasons is EqualUnmodifiableListView) return _reasons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reasons);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime expiresAt;
  @override
  final bool isRead;
  @override
  final bool isAccepted;
  @override
  final String? feedback;

  @override
  String toString() {
    return 'Recommendation(id: $id, type: $type, title: $title, description: $description, confidence: $confidence, reasons: $reasons, createdAt: $createdAt, expiresAt: $expiresAt, isRead: $isRead, isAccepted: $isAccepted, feedback: $feedback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            const DeepCollectionEquality().equals(other._reasons, _reasons) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.isAccepted, isAccepted) ||
                other.isAccepted == isAccepted) &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      title,
      description,
      confidence,
      const DeepCollectionEquality().hash(_reasons),
      createdAt,
      expiresAt,
      isRead,
      isAccepted,
      feedback);

  /// Create a copy of Recommendation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendationImplCopyWith<_$RecommendationImpl> get copyWith =>
      __$$RecommendationImplCopyWithImpl<_$RecommendationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecommendationImplToJson(
      this,
    );
  }
}

abstract class _Recommendation implements Recommendation {
  const factory _Recommendation(
      {required final String id,
      required final String type,
      required final String title,
      required final String description,
      required final double confidence,
      required final List<String> reasons,
      required final DateTime createdAt,
      required final DateTime expiresAt,
      required final bool isRead,
      required final bool isAccepted,
      required final String? feedback}) = _$RecommendationImpl;

  factory _Recommendation.fromJson(Map<String, dynamic> json) =
      _$RecommendationImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  String get title;
  @override
  String get description;
  @override
  double get confidence;
  @override
  List<String> get reasons;
  @override
  DateTime get createdAt;
  @override
  DateTime get expiresAt;
  @override
  bool get isRead;
  @override
  bool get isAccepted;
  @override
  String? get feedback;

  /// Create a copy of Recommendation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecommendationImplCopyWith<_$RecommendationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubscriptionData _$SubscriptionDataFromJson(Map<String, dynamic> json) {
  return _SubscriptionData.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionData {
  String get plan => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  List<String> get features => throw _privateConstructorUsedError;

  /// Serializes this SubscriptionData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubscriptionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionDataCopyWith<SubscriptionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionDataCopyWith<$Res> {
  factory $SubscriptionDataCopyWith(
          SubscriptionData value, $Res Function(SubscriptionData) then) =
      _$SubscriptionDataCopyWithImpl<$Res, SubscriptionData>;
  @useResult
  $Res call(
      {String plan,
      DateTime startDate,
      DateTime endDate,
      double price,
      String currency,
      bool isActive,
      List<String> features});
}

/// @nodoc
class _$SubscriptionDataCopyWithImpl<$Res, $Val extends SubscriptionData>
    implements $SubscriptionDataCopyWith<$Res> {
  _$SubscriptionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plan = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? price = null,
    Object? currency = null,
    Object? isActive = null,
    Object? features = null,
  }) {
    return _then(_value.copyWith(
      plan: null == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscriptionDataImplCopyWith<$Res>
    implements $SubscriptionDataCopyWith<$Res> {
  factory _$$SubscriptionDataImplCopyWith(_$SubscriptionDataImpl value,
          $Res Function(_$SubscriptionDataImpl) then) =
      __$$SubscriptionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String plan,
      DateTime startDate,
      DateTime endDate,
      double price,
      String currency,
      bool isActive,
      List<String> features});
}

/// @nodoc
class __$$SubscriptionDataImplCopyWithImpl<$Res>
    extends _$SubscriptionDataCopyWithImpl<$Res, _$SubscriptionDataImpl>
    implements _$$SubscriptionDataImplCopyWith<$Res> {
  __$$SubscriptionDataImplCopyWithImpl(_$SubscriptionDataImpl _value,
      $Res Function(_$SubscriptionDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubscriptionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plan = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? price = null,
    Object? currency = null,
    Object? isActive = null,
    Object? features = null,
  }) {
    return _then(_$SubscriptionDataImpl(
      plan: null == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      features: null == features
          ? _value._features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionDataImpl implements _SubscriptionData {
  const _$SubscriptionDataImpl(
      {required this.plan,
      required this.startDate,
      required this.endDate,
      required this.price,
      required this.currency,
      required this.isActive,
      required final List<String> features})
      : _features = features;

  factory _$SubscriptionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionDataImplFromJson(json);

  @override
  final String plan;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final double price;
  @override
  final String currency;
  @override
  final bool isActive;
  final List<String> _features;
  @override
  List<String> get features {
    if (_features is EqualUnmodifiableListView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_features);
  }

  @override
  String toString() {
    return 'SubscriptionData(plan: $plan, startDate: $startDate, endDate: $endDate, price: $price, currency: $currency, isActive: $isActive, features: $features)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionDataImpl &&
            (identical(other.plan, plan) || other.plan == plan) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality().equals(other._features, _features));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, plan, startDate, endDate, price,
      currency, isActive, const DeepCollectionEquality().hash(_features));

  /// Create a copy of SubscriptionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionDataImplCopyWith<_$SubscriptionDataImpl> get copyWith =>
      __$$SubscriptionDataImplCopyWithImpl<_$SubscriptionDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionDataImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionData implements SubscriptionData {
  const factory _SubscriptionData(
      {required final String plan,
      required final DateTime startDate,
      required final DateTime endDate,
      required final double price,
      required final String currency,
      required final bool isActive,
      required final List<String> features}) = _$SubscriptionDataImpl;

  factory _SubscriptionData.fromJson(Map<String, dynamic> json) =
      _$SubscriptionDataImpl.fromJson;

  @override
  String get plan;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  double get price;
  @override
  String get currency;
  @override
  bool get isActive;
  @override
  List<String> get features;

  /// Create a copy of SubscriptionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionDataImplCopyWith<_$SubscriptionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
