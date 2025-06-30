// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crypto_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Crypto _$CryptoFromJson(Map<String, dynamic> json) {
  return _Crypto.fromJson(json);
}

/// @nodoc
mixin _$Crypto {
  String get id => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get currentPrice => throw _privateConstructorUsedError;
  double get marketCap => throw _privateConstructorUsedError;
  double get marketCapRank => throw _privateConstructorUsedError;
  double get totalVolume => throw _privateConstructorUsedError;
  double get high24h => throw _privateConstructorUsedError;
  double get low24h => throw _privateConstructorUsedError;
  double get priceChange24h => throw _privateConstructorUsedError;
  double get priceChangePercentage24h => throw _privateConstructorUsedError;
  double get marketCapChange24h => throw _privateConstructorUsedError;
  double get marketCapChangePercentage24h => throw _privateConstructorUsedError;
  double get circulatingSupply => throw _privateConstructorUsedError;
  double get totalSupply => throw _privateConstructorUsedError;
  double get maxSupply => throw _privateConstructorUsedError;
  double get ath => throw _privateConstructorUsedError;
  double get athChangePercentage => throw _privateConstructorUsedError;
  DateTime get athDate => throw _privateConstructorUsedError;
  double get atl => throw _privateConstructorUsedError;
  double get atlChangePercentage => throw _privateConstructorUsedError;
  DateTime get atlDate => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  List<PricePoint> get priceHistory => throw _privateConstructorUsedError;
  List<VolumeData> get volumeData => throw _privateConstructorUsedError;
  TechnicalIndicators get technicalIndicators =>
      throw _privateConstructorUsedError;
  SentimentData get sentimentData => throw _privateConstructorUsedError;
  List<NewsArticle> get relatedNews => throw _privateConstructorUsedError;
  DeFiMetrics get defiMetrics => throw _privateConstructorUsedError;
  OnChainData get onChainData => throw _privateConstructorUsedError;
  SocialMetrics get socialMetrics => throw _privateConstructorUsedError;
  DeveloperMetrics get developerMetrics => throw _privateConstructorUsedError;
  List<ExchangeData> get exchangeData => throw _privateConstructorUsedError;
  List<WalletData> get whaleWallets => throw _privateConstructorUsedError;
  NetworkMetrics get networkMetrics => throw _privateConstructorUsedError;
  StakingData get stakingData => throw _privateConstructorUsedError;
  GovernanceData get governanceData => throw _privateConstructorUsedError;
  List<ForkData> get forks => throw _privateConstructorUsedError;
  List<PartnershipData> get partnerships => throw _privateConstructorUsedError;
  List<RegulatoryData> get regulatoryUpdates =>
      throw _privateConstructorUsedError;
  bool get isWatched => throw _privateConstructorUsedError;
  int get userViews => throw _privateConstructorUsedError;
  DateTime get lastViewed => throw _privateConstructorUsedError;
  List<String> get userNotes => throw _privateConstructorUsedError;
  double get userRating => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;

  /// Serializes this Crypto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Crypto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CryptoCopyWith<Crypto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoCopyWith<$Res> {
  factory $CryptoCopyWith(Crypto value, $Res Function(Crypto) then) =
      _$CryptoCopyWithImpl<$Res, Crypto>;
  @useResult
  $Res call(
      {String id,
      String symbol,
      String name,
      double currentPrice,
      double marketCap,
      double marketCapRank,
      double totalVolume,
      double high24h,
      double low24h,
      double priceChange24h,
      double priceChangePercentage24h,
      double marketCapChange24h,
      double marketCapChangePercentage24h,
      double circulatingSupply,
      double totalSupply,
      double maxSupply,
      double ath,
      double athChangePercentage,
      DateTime athDate,
      double atl,
      double atlChangePercentage,
      DateTime atlDate,
      DateTime lastUpdated,
      List<PricePoint> priceHistory,
      List<VolumeData> volumeData,
      TechnicalIndicators technicalIndicators,
      SentimentData sentimentData,
      List<NewsArticle> relatedNews,
      DeFiMetrics defiMetrics,
      OnChainData onChainData,
      SocialMetrics socialMetrics,
      DeveloperMetrics developerMetrics,
      List<ExchangeData> exchangeData,
      List<WalletData> whaleWallets,
      NetworkMetrics networkMetrics,
      StakingData stakingData,
      GovernanceData governanceData,
      List<ForkData> forks,
      List<PartnershipData> partnerships,
      List<RegulatoryData> regulatoryUpdates,
      bool isWatched,
      int userViews,
      DateTime lastViewed,
      List<String> userNotes,
      double userRating,
      List<String> tags});

  $DeFiMetricsCopyWith<$Res> get defiMetrics;
  $OnChainDataCopyWith<$Res> get onChainData;
  $SocialMetricsCopyWith<$Res> get socialMetrics;
  $DeveloperMetricsCopyWith<$Res> get developerMetrics;
  $NetworkMetricsCopyWith<$Res> get networkMetrics;
  $StakingDataCopyWith<$Res> get stakingData;
  $GovernanceDataCopyWith<$Res> get governanceData;
}

/// @nodoc
class _$CryptoCopyWithImpl<$Res, $Val extends Crypto>
    implements $CryptoCopyWith<$Res> {
  _$CryptoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Crypto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? symbol = null,
    Object? name = null,
    Object? currentPrice = null,
    Object? marketCap = null,
    Object? marketCapRank = null,
    Object? totalVolume = null,
    Object? high24h = null,
    Object? low24h = null,
    Object? priceChange24h = null,
    Object? priceChangePercentage24h = null,
    Object? marketCapChange24h = null,
    Object? marketCapChangePercentage24h = null,
    Object? circulatingSupply = null,
    Object? totalSupply = null,
    Object? maxSupply = null,
    Object? ath = null,
    Object? athChangePercentage = null,
    Object? athDate = null,
    Object? atl = null,
    Object? atlChangePercentage = null,
    Object? atlDate = null,
    Object? lastUpdated = null,
    Object? priceHistory = null,
    Object? volumeData = null,
    Object? technicalIndicators = freezed,
    Object? sentimentData = freezed,
    Object? relatedNews = null,
    Object? defiMetrics = null,
    Object? onChainData = null,
    Object? socialMetrics = null,
    Object? developerMetrics = null,
    Object? exchangeData = null,
    Object? whaleWallets = null,
    Object? networkMetrics = null,
    Object? stakingData = null,
    Object? governanceData = null,
    Object? forks = null,
    Object? partnerships = null,
    Object? regulatoryUpdates = null,
    Object? isWatched = null,
    Object? userViews = null,
    Object? lastViewed = null,
    Object? userNotes = null,
    Object? userRating = null,
    Object? tags = null,
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
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      currentPrice: null == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
      marketCap: null == marketCap
          ? _value.marketCap
          : marketCap // ignore: cast_nullable_to_non_nullable
              as double,
      marketCapRank: null == marketCapRank
          ? _value.marketCapRank
          : marketCapRank // ignore: cast_nullable_to_non_nullable
              as double,
      totalVolume: null == totalVolume
          ? _value.totalVolume
          : totalVolume // ignore: cast_nullable_to_non_nullable
              as double,
      high24h: null == high24h
          ? _value.high24h
          : high24h // ignore: cast_nullable_to_non_nullable
              as double,
      low24h: null == low24h
          ? _value.low24h
          : low24h // ignore: cast_nullable_to_non_nullable
              as double,
      priceChange24h: null == priceChange24h
          ? _value.priceChange24h
          : priceChange24h // ignore: cast_nullable_to_non_nullable
              as double,
      priceChangePercentage24h: null == priceChangePercentage24h
          ? _value.priceChangePercentage24h
          : priceChangePercentage24h // ignore: cast_nullable_to_non_nullable
              as double,
      marketCapChange24h: null == marketCapChange24h
          ? _value.marketCapChange24h
          : marketCapChange24h // ignore: cast_nullable_to_non_nullable
              as double,
      marketCapChangePercentage24h: null == marketCapChangePercentage24h
          ? _value.marketCapChangePercentage24h
          : marketCapChangePercentage24h // ignore: cast_nullable_to_non_nullable
              as double,
      circulatingSupply: null == circulatingSupply
          ? _value.circulatingSupply
          : circulatingSupply // ignore: cast_nullable_to_non_nullable
              as double,
      totalSupply: null == totalSupply
          ? _value.totalSupply
          : totalSupply // ignore: cast_nullable_to_non_nullable
              as double,
      maxSupply: null == maxSupply
          ? _value.maxSupply
          : maxSupply // ignore: cast_nullable_to_non_nullable
              as double,
      ath: null == ath
          ? _value.ath
          : ath // ignore: cast_nullable_to_non_nullable
              as double,
      athChangePercentage: null == athChangePercentage
          ? _value.athChangePercentage
          : athChangePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      athDate: null == athDate
          ? _value.athDate
          : athDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      atl: null == atl
          ? _value.atl
          : atl // ignore: cast_nullable_to_non_nullable
              as double,
      atlChangePercentage: null == atlChangePercentage
          ? _value.atlChangePercentage
          : atlChangePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      atlDate: null == atlDate
          ? _value.atlDate
          : atlDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      technicalIndicators: freezed == technicalIndicators
          ? _value.technicalIndicators
          : technicalIndicators // ignore: cast_nullable_to_non_nullable
              as TechnicalIndicators,
      sentimentData: freezed == sentimentData
          ? _value.sentimentData
          : sentimentData // ignore: cast_nullable_to_non_nullable
              as SentimentData,
      relatedNews: null == relatedNews
          ? _value.relatedNews
          : relatedNews // ignore: cast_nullable_to_non_nullable
              as List<NewsArticle>,
      defiMetrics: null == defiMetrics
          ? _value.defiMetrics
          : defiMetrics // ignore: cast_nullable_to_non_nullable
              as DeFiMetrics,
      onChainData: null == onChainData
          ? _value.onChainData
          : onChainData // ignore: cast_nullable_to_non_nullable
              as OnChainData,
      socialMetrics: null == socialMetrics
          ? _value.socialMetrics
          : socialMetrics // ignore: cast_nullable_to_non_nullable
              as SocialMetrics,
      developerMetrics: null == developerMetrics
          ? _value.developerMetrics
          : developerMetrics // ignore: cast_nullable_to_non_nullable
              as DeveloperMetrics,
      exchangeData: null == exchangeData
          ? _value.exchangeData
          : exchangeData // ignore: cast_nullable_to_non_nullable
              as List<ExchangeData>,
      whaleWallets: null == whaleWallets
          ? _value.whaleWallets
          : whaleWallets // ignore: cast_nullable_to_non_nullable
              as List<WalletData>,
      networkMetrics: null == networkMetrics
          ? _value.networkMetrics
          : networkMetrics // ignore: cast_nullable_to_non_nullable
              as NetworkMetrics,
      stakingData: null == stakingData
          ? _value.stakingData
          : stakingData // ignore: cast_nullable_to_non_nullable
              as StakingData,
      governanceData: null == governanceData
          ? _value.governanceData
          : governanceData // ignore: cast_nullable_to_non_nullable
              as GovernanceData,
      forks: null == forks
          ? _value.forks
          : forks // ignore: cast_nullable_to_non_nullable
              as List<ForkData>,
      partnerships: null == partnerships
          ? _value.partnerships
          : partnerships // ignore: cast_nullable_to_non_nullable
              as List<PartnershipData>,
      regulatoryUpdates: null == regulatoryUpdates
          ? _value.regulatoryUpdates
          : regulatoryUpdates // ignore: cast_nullable_to_non_nullable
              as List<RegulatoryData>,
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

  /// Create a copy of Crypto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeFiMetricsCopyWith<$Res> get defiMetrics {
    return $DeFiMetricsCopyWith<$Res>(_value.defiMetrics, (value) {
      return _then(_value.copyWith(defiMetrics: value) as $Val);
    });
  }

  /// Create a copy of Crypto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OnChainDataCopyWith<$Res> get onChainData {
    return $OnChainDataCopyWith<$Res>(_value.onChainData, (value) {
      return _then(_value.copyWith(onChainData: value) as $Val);
    });
  }

  /// Create a copy of Crypto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SocialMetricsCopyWith<$Res> get socialMetrics {
    return $SocialMetricsCopyWith<$Res>(_value.socialMetrics, (value) {
      return _then(_value.copyWith(socialMetrics: value) as $Val);
    });
  }

  /// Create a copy of Crypto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeveloperMetricsCopyWith<$Res> get developerMetrics {
    return $DeveloperMetricsCopyWith<$Res>(_value.developerMetrics, (value) {
      return _then(_value.copyWith(developerMetrics: value) as $Val);
    });
  }

  /// Create a copy of Crypto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworkMetricsCopyWith<$Res> get networkMetrics {
    return $NetworkMetricsCopyWith<$Res>(_value.networkMetrics, (value) {
      return _then(_value.copyWith(networkMetrics: value) as $Val);
    });
  }

  /// Create a copy of Crypto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StakingDataCopyWith<$Res> get stakingData {
    return $StakingDataCopyWith<$Res>(_value.stakingData, (value) {
      return _then(_value.copyWith(stakingData: value) as $Val);
    });
  }

  /// Create a copy of Crypto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GovernanceDataCopyWith<$Res> get governanceData {
    return $GovernanceDataCopyWith<$Res>(_value.governanceData, (value) {
      return _then(_value.copyWith(governanceData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CryptoImplCopyWith<$Res> implements $CryptoCopyWith<$Res> {
  factory _$$CryptoImplCopyWith(
          _$CryptoImpl value, $Res Function(_$CryptoImpl) then) =
      __$$CryptoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String symbol,
      String name,
      double currentPrice,
      double marketCap,
      double marketCapRank,
      double totalVolume,
      double high24h,
      double low24h,
      double priceChange24h,
      double priceChangePercentage24h,
      double marketCapChange24h,
      double marketCapChangePercentage24h,
      double circulatingSupply,
      double totalSupply,
      double maxSupply,
      double ath,
      double athChangePercentage,
      DateTime athDate,
      double atl,
      double atlChangePercentage,
      DateTime atlDate,
      DateTime lastUpdated,
      List<PricePoint> priceHistory,
      List<VolumeData> volumeData,
      TechnicalIndicators technicalIndicators,
      SentimentData sentimentData,
      List<NewsArticle> relatedNews,
      DeFiMetrics defiMetrics,
      OnChainData onChainData,
      SocialMetrics socialMetrics,
      DeveloperMetrics developerMetrics,
      List<ExchangeData> exchangeData,
      List<WalletData> whaleWallets,
      NetworkMetrics networkMetrics,
      StakingData stakingData,
      GovernanceData governanceData,
      List<ForkData> forks,
      List<PartnershipData> partnerships,
      List<RegulatoryData> regulatoryUpdates,
      bool isWatched,
      int userViews,
      DateTime lastViewed,
      List<String> userNotes,
      double userRating,
      List<String> tags});

  @override
  $DeFiMetricsCopyWith<$Res> get defiMetrics;
  @override
  $OnChainDataCopyWith<$Res> get onChainData;
  @override
  $SocialMetricsCopyWith<$Res> get socialMetrics;
  @override
  $DeveloperMetricsCopyWith<$Res> get developerMetrics;
  @override
  $NetworkMetricsCopyWith<$Res> get networkMetrics;
  @override
  $StakingDataCopyWith<$Res> get stakingData;
  @override
  $GovernanceDataCopyWith<$Res> get governanceData;
}

/// @nodoc
class __$$CryptoImplCopyWithImpl<$Res>
    extends _$CryptoCopyWithImpl<$Res, _$CryptoImpl>
    implements _$$CryptoImplCopyWith<$Res> {
  __$$CryptoImplCopyWithImpl(
      _$CryptoImpl _value, $Res Function(_$CryptoImpl) _then)
      : super(_value, _then);

  /// Create a copy of Crypto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? symbol = null,
    Object? name = null,
    Object? currentPrice = null,
    Object? marketCap = null,
    Object? marketCapRank = null,
    Object? totalVolume = null,
    Object? high24h = null,
    Object? low24h = null,
    Object? priceChange24h = null,
    Object? priceChangePercentage24h = null,
    Object? marketCapChange24h = null,
    Object? marketCapChangePercentage24h = null,
    Object? circulatingSupply = null,
    Object? totalSupply = null,
    Object? maxSupply = null,
    Object? ath = null,
    Object? athChangePercentage = null,
    Object? athDate = null,
    Object? atl = null,
    Object? atlChangePercentage = null,
    Object? atlDate = null,
    Object? lastUpdated = null,
    Object? priceHistory = null,
    Object? volumeData = null,
    Object? technicalIndicators = freezed,
    Object? sentimentData = freezed,
    Object? relatedNews = null,
    Object? defiMetrics = null,
    Object? onChainData = null,
    Object? socialMetrics = null,
    Object? developerMetrics = null,
    Object? exchangeData = null,
    Object? whaleWallets = null,
    Object? networkMetrics = null,
    Object? stakingData = null,
    Object? governanceData = null,
    Object? forks = null,
    Object? partnerships = null,
    Object? regulatoryUpdates = null,
    Object? isWatched = null,
    Object? userViews = null,
    Object? lastViewed = null,
    Object? userNotes = null,
    Object? userRating = null,
    Object? tags = null,
  }) {
    return _then(_$CryptoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      currentPrice: null == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
      marketCap: null == marketCap
          ? _value.marketCap
          : marketCap // ignore: cast_nullable_to_non_nullable
              as double,
      marketCapRank: null == marketCapRank
          ? _value.marketCapRank
          : marketCapRank // ignore: cast_nullable_to_non_nullable
              as double,
      totalVolume: null == totalVolume
          ? _value.totalVolume
          : totalVolume // ignore: cast_nullable_to_non_nullable
              as double,
      high24h: null == high24h
          ? _value.high24h
          : high24h // ignore: cast_nullable_to_non_nullable
              as double,
      low24h: null == low24h
          ? _value.low24h
          : low24h // ignore: cast_nullable_to_non_nullable
              as double,
      priceChange24h: null == priceChange24h
          ? _value.priceChange24h
          : priceChange24h // ignore: cast_nullable_to_non_nullable
              as double,
      priceChangePercentage24h: null == priceChangePercentage24h
          ? _value.priceChangePercentage24h
          : priceChangePercentage24h // ignore: cast_nullable_to_non_nullable
              as double,
      marketCapChange24h: null == marketCapChange24h
          ? _value.marketCapChange24h
          : marketCapChange24h // ignore: cast_nullable_to_non_nullable
              as double,
      marketCapChangePercentage24h: null == marketCapChangePercentage24h
          ? _value.marketCapChangePercentage24h
          : marketCapChangePercentage24h // ignore: cast_nullable_to_non_nullable
              as double,
      circulatingSupply: null == circulatingSupply
          ? _value.circulatingSupply
          : circulatingSupply // ignore: cast_nullable_to_non_nullable
              as double,
      totalSupply: null == totalSupply
          ? _value.totalSupply
          : totalSupply // ignore: cast_nullable_to_non_nullable
              as double,
      maxSupply: null == maxSupply
          ? _value.maxSupply
          : maxSupply // ignore: cast_nullable_to_non_nullable
              as double,
      ath: null == ath
          ? _value.ath
          : ath // ignore: cast_nullable_to_non_nullable
              as double,
      athChangePercentage: null == athChangePercentage
          ? _value.athChangePercentage
          : athChangePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      athDate: null == athDate
          ? _value.athDate
          : athDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      atl: null == atl
          ? _value.atl
          : atl // ignore: cast_nullable_to_non_nullable
              as double,
      atlChangePercentage: null == atlChangePercentage
          ? _value.atlChangePercentage
          : atlChangePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      atlDate: null == atlDate
          ? _value.atlDate
          : atlDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      technicalIndicators: freezed == technicalIndicators
          ? _value.technicalIndicators
          : technicalIndicators // ignore: cast_nullable_to_non_nullable
              as TechnicalIndicators,
      sentimentData: freezed == sentimentData
          ? _value.sentimentData
          : sentimentData // ignore: cast_nullable_to_non_nullable
              as SentimentData,
      relatedNews: null == relatedNews
          ? _value._relatedNews
          : relatedNews // ignore: cast_nullable_to_non_nullable
              as List<NewsArticle>,
      defiMetrics: null == defiMetrics
          ? _value.defiMetrics
          : defiMetrics // ignore: cast_nullable_to_non_nullable
              as DeFiMetrics,
      onChainData: null == onChainData
          ? _value.onChainData
          : onChainData // ignore: cast_nullable_to_non_nullable
              as OnChainData,
      socialMetrics: null == socialMetrics
          ? _value.socialMetrics
          : socialMetrics // ignore: cast_nullable_to_non_nullable
              as SocialMetrics,
      developerMetrics: null == developerMetrics
          ? _value.developerMetrics
          : developerMetrics // ignore: cast_nullable_to_non_nullable
              as DeveloperMetrics,
      exchangeData: null == exchangeData
          ? _value._exchangeData
          : exchangeData // ignore: cast_nullable_to_non_nullable
              as List<ExchangeData>,
      whaleWallets: null == whaleWallets
          ? _value._whaleWallets
          : whaleWallets // ignore: cast_nullable_to_non_nullable
              as List<WalletData>,
      networkMetrics: null == networkMetrics
          ? _value.networkMetrics
          : networkMetrics // ignore: cast_nullable_to_non_nullable
              as NetworkMetrics,
      stakingData: null == stakingData
          ? _value.stakingData
          : stakingData // ignore: cast_nullable_to_non_nullable
              as StakingData,
      governanceData: null == governanceData
          ? _value.governanceData
          : governanceData // ignore: cast_nullable_to_non_nullable
              as GovernanceData,
      forks: null == forks
          ? _value._forks
          : forks // ignore: cast_nullable_to_non_nullable
              as List<ForkData>,
      partnerships: null == partnerships
          ? _value._partnerships
          : partnerships // ignore: cast_nullable_to_non_nullable
              as List<PartnershipData>,
      regulatoryUpdates: null == regulatoryUpdates
          ? _value._regulatoryUpdates
          : regulatoryUpdates // ignore: cast_nullable_to_non_nullable
              as List<RegulatoryData>,
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
class _$CryptoImpl implements _Crypto {
  const _$CryptoImpl(
      {required this.id,
      required this.symbol,
      required this.name,
      required this.currentPrice,
      required this.marketCap,
      required this.marketCapRank,
      required this.totalVolume,
      required this.high24h,
      required this.low24h,
      required this.priceChange24h,
      required this.priceChangePercentage24h,
      required this.marketCapChange24h,
      required this.marketCapChangePercentage24h,
      required this.circulatingSupply,
      required this.totalSupply,
      required this.maxSupply,
      required this.ath,
      required this.athChangePercentage,
      required this.athDate,
      required this.atl,
      required this.atlChangePercentage,
      required this.atlDate,
      required this.lastUpdated,
      required final List<PricePoint> priceHistory,
      required final List<VolumeData> volumeData,
      required this.technicalIndicators,
      required this.sentimentData,
      required final List<NewsArticle> relatedNews,
      required this.defiMetrics,
      required this.onChainData,
      required this.socialMetrics,
      required this.developerMetrics,
      required final List<ExchangeData> exchangeData,
      required final List<WalletData> whaleWallets,
      required this.networkMetrics,
      required this.stakingData,
      required this.governanceData,
      required final List<ForkData> forks,
      required final List<PartnershipData> partnerships,
      required final List<RegulatoryData> regulatoryUpdates,
      required this.isWatched,
      required this.userViews,
      required this.lastViewed,
      required final List<String> userNotes,
      required this.userRating,
      required final List<String> tags})
      : _priceHistory = priceHistory,
        _volumeData = volumeData,
        _relatedNews = relatedNews,
        _exchangeData = exchangeData,
        _whaleWallets = whaleWallets,
        _forks = forks,
        _partnerships = partnerships,
        _regulatoryUpdates = regulatoryUpdates,
        _userNotes = userNotes,
        _tags = tags;

  factory _$CryptoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CryptoImplFromJson(json);

  @override
  final String id;
  @override
  final String symbol;
  @override
  final String name;
  @override
  final double currentPrice;
  @override
  final double marketCap;
  @override
  final double marketCapRank;
  @override
  final double totalVolume;
  @override
  final double high24h;
  @override
  final double low24h;
  @override
  final double priceChange24h;
  @override
  final double priceChangePercentage24h;
  @override
  final double marketCapChange24h;
  @override
  final double marketCapChangePercentage24h;
  @override
  final double circulatingSupply;
  @override
  final double totalSupply;
  @override
  final double maxSupply;
  @override
  final double ath;
  @override
  final double athChangePercentage;
  @override
  final DateTime athDate;
  @override
  final double atl;
  @override
  final double atlChangePercentage;
  @override
  final DateTime atlDate;
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

  @override
  final DeFiMetrics defiMetrics;
  @override
  final OnChainData onChainData;
  @override
  final SocialMetrics socialMetrics;
  @override
  final DeveloperMetrics developerMetrics;
  final List<ExchangeData> _exchangeData;
  @override
  List<ExchangeData> get exchangeData {
    if (_exchangeData is EqualUnmodifiableListView) return _exchangeData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exchangeData);
  }

  final List<WalletData> _whaleWallets;
  @override
  List<WalletData> get whaleWallets {
    if (_whaleWallets is EqualUnmodifiableListView) return _whaleWallets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_whaleWallets);
  }

  @override
  final NetworkMetrics networkMetrics;
  @override
  final StakingData stakingData;
  @override
  final GovernanceData governanceData;
  final List<ForkData> _forks;
  @override
  List<ForkData> get forks {
    if (_forks is EqualUnmodifiableListView) return _forks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_forks);
  }

  final List<PartnershipData> _partnerships;
  @override
  List<PartnershipData> get partnerships {
    if (_partnerships is EqualUnmodifiableListView) return _partnerships;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_partnerships);
  }

  final List<RegulatoryData> _regulatoryUpdates;
  @override
  List<RegulatoryData> get regulatoryUpdates {
    if (_regulatoryUpdates is EqualUnmodifiableListView)
      return _regulatoryUpdates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_regulatoryUpdates);
  }

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
    return 'Crypto(id: $id, symbol: $symbol, name: $name, currentPrice: $currentPrice, marketCap: $marketCap, marketCapRank: $marketCapRank, totalVolume: $totalVolume, high24h: $high24h, low24h: $low24h, priceChange24h: $priceChange24h, priceChangePercentage24h: $priceChangePercentage24h, marketCapChange24h: $marketCapChange24h, marketCapChangePercentage24h: $marketCapChangePercentage24h, circulatingSupply: $circulatingSupply, totalSupply: $totalSupply, maxSupply: $maxSupply, ath: $ath, athChangePercentage: $athChangePercentage, athDate: $athDate, atl: $atl, atlChangePercentage: $atlChangePercentage, atlDate: $atlDate, lastUpdated: $lastUpdated, priceHistory: $priceHistory, volumeData: $volumeData, technicalIndicators: $technicalIndicators, sentimentData: $sentimentData, relatedNews: $relatedNews, defiMetrics: $defiMetrics, onChainData: $onChainData, socialMetrics: $socialMetrics, developerMetrics: $developerMetrics, exchangeData: $exchangeData, whaleWallets: $whaleWallets, networkMetrics: $networkMetrics, stakingData: $stakingData, governanceData: $governanceData, forks: $forks, partnerships: $partnerships, regulatoryUpdates: $regulatoryUpdates, isWatched: $isWatched, userViews: $userViews, lastViewed: $lastViewed, userNotes: $userNotes, userRating: $userRating, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CryptoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice) &&
            (identical(other.marketCap, marketCap) ||
                other.marketCap == marketCap) &&
            (identical(other.marketCapRank, marketCapRank) ||
                other.marketCapRank == marketCapRank) &&
            (identical(other.totalVolume, totalVolume) ||
                other.totalVolume == totalVolume) &&
            (identical(other.high24h, high24h) || other.high24h == high24h) &&
            (identical(other.low24h, low24h) || other.low24h == low24h) &&
            (identical(other.priceChange24h, priceChange24h) ||
                other.priceChange24h == priceChange24h) &&
            (identical(other.priceChangePercentage24h, priceChangePercentage24h) ||
                other.priceChangePercentage24h == priceChangePercentage24h) &&
            (identical(other.marketCapChange24h, marketCapChange24h) ||
                other.marketCapChange24h == marketCapChange24h) &&
            (identical(other.marketCapChangePercentage24h, marketCapChangePercentage24h) ||
                other.marketCapChangePercentage24h ==
                    marketCapChangePercentage24h) &&
            (identical(other.circulatingSupply, circulatingSupply) ||
                other.circulatingSupply == circulatingSupply) &&
            (identical(other.totalSupply, totalSupply) ||
                other.totalSupply == totalSupply) &&
            (identical(other.maxSupply, maxSupply) ||
                other.maxSupply == maxSupply) &&
            (identical(other.ath, ath) || other.ath == ath) &&
            (identical(other.athChangePercentage, athChangePercentage) ||
                other.athChangePercentage == athChangePercentage) &&
            (identical(other.athDate, athDate) || other.athDate == athDate) &&
            (identical(other.atl, atl) || other.atl == atl) &&
            (identical(other.atlChangePercentage, atlChangePercentage) ||
                other.atlChangePercentage == atlChangePercentage) &&
            (identical(other.atlDate, atlDate) || other.atlDate == atlDate) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            const DeepCollectionEquality()
                .equals(other._priceHistory, _priceHistory) &&
            const DeepCollectionEquality()
                .equals(other._volumeData, _volumeData) &&
            const DeepCollectionEquality()
                .equals(other.technicalIndicators, technicalIndicators) &&
            const DeepCollectionEquality()
                .equals(other.sentimentData, sentimentData) &&
            const DeepCollectionEquality()
                .equals(other._relatedNews, _relatedNews) &&
            (identical(other.defiMetrics, defiMetrics) ||
                other.defiMetrics == defiMetrics) &&
            (identical(other.onChainData, onChainData) ||
                other.onChainData == onChainData) &&
            (identical(other.socialMetrics, socialMetrics) ||
                other.socialMetrics == socialMetrics) &&
            (identical(other.developerMetrics, developerMetrics) ||
                other.developerMetrics == developerMetrics) &&
            const DeepCollectionEquality()
                .equals(other._exchangeData, _exchangeData) &&
            const DeepCollectionEquality()
                .equals(other._whaleWallets, _whaleWallets) &&
            (identical(other.networkMetrics, networkMetrics) ||
                other.networkMetrics == networkMetrics) &&
            (identical(other.stakingData, stakingData) ||
                other.stakingData == stakingData) &&
            (identical(other.governanceData, governanceData) || other.governanceData == governanceData) &&
            const DeepCollectionEquality().equals(other._forks, _forks) &&
            const DeepCollectionEquality().equals(other._partnerships, _partnerships) &&
            const DeepCollectionEquality().equals(other._regulatoryUpdates, _regulatoryUpdates) &&
            (identical(other.isWatched, isWatched) || other.isWatched == isWatched) &&
            (identical(other.userViews, userViews) || other.userViews == userViews) &&
            (identical(other.lastViewed, lastViewed) || other.lastViewed == lastViewed) &&
            const DeepCollectionEquality().equals(other._userNotes, _userNotes) &&
            (identical(other.userRating, userRating) || other.userRating == userRating) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        symbol,
        name,
        currentPrice,
        marketCap,
        marketCapRank,
        totalVolume,
        high24h,
        low24h,
        priceChange24h,
        priceChangePercentage24h,
        marketCapChange24h,
        marketCapChangePercentage24h,
        circulatingSupply,
        totalSupply,
        maxSupply,
        ath,
        athChangePercentage,
        athDate,
        atl,
        atlChangePercentage,
        atlDate,
        lastUpdated,
        const DeepCollectionEquality().hash(_priceHistory),
        const DeepCollectionEquality().hash(_volumeData),
        const DeepCollectionEquality().hash(technicalIndicators),
        const DeepCollectionEquality().hash(sentimentData),
        const DeepCollectionEquality().hash(_relatedNews),
        defiMetrics,
        onChainData,
        socialMetrics,
        developerMetrics,
        const DeepCollectionEquality().hash(_exchangeData),
        const DeepCollectionEquality().hash(_whaleWallets),
        networkMetrics,
        stakingData,
        governanceData,
        const DeepCollectionEquality().hash(_forks),
        const DeepCollectionEquality().hash(_partnerships),
        const DeepCollectionEquality().hash(_regulatoryUpdates),
        isWatched,
        userViews,
        lastViewed,
        const DeepCollectionEquality().hash(_userNotes),
        userRating,
        const DeepCollectionEquality().hash(_tags)
      ]);

  /// Create a copy of Crypto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CryptoImplCopyWith<_$CryptoImpl> get copyWith =>
      __$$CryptoImplCopyWithImpl<_$CryptoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CryptoImplToJson(
      this,
    );
  }
}

abstract class _Crypto implements Crypto {
  const factory _Crypto(
      {required final String id,
      required final String symbol,
      required final String name,
      required final double currentPrice,
      required final double marketCap,
      required final double marketCapRank,
      required final double totalVolume,
      required final double high24h,
      required final double low24h,
      required final double priceChange24h,
      required final double priceChangePercentage24h,
      required final double marketCapChange24h,
      required final double marketCapChangePercentage24h,
      required final double circulatingSupply,
      required final double totalSupply,
      required final double maxSupply,
      required final double ath,
      required final double athChangePercentage,
      required final DateTime athDate,
      required final double atl,
      required final double atlChangePercentage,
      required final DateTime atlDate,
      required final DateTime lastUpdated,
      required final List<PricePoint> priceHistory,
      required final List<VolumeData> volumeData,
      required final TechnicalIndicators technicalIndicators,
      required final SentimentData sentimentData,
      required final List<NewsArticle> relatedNews,
      required final DeFiMetrics defiMetrics,
      required final OnChainData onChainData,
      required final SocialMetrics socialMetrics,
      required final DeveloperMetrics developerMetrics,
      required final List<ExchangeData> exchangeData,
      required final List<WalletData> whaleWallets,
      required final NetworkMetrics networkMetrics,
      required final StakingData stakingData,
      required final GovernanceData governanceData,
      required final List<ForkData> forks,
      required final List<PartnershipData> partnerships,
      required final List<RegulatoryData> regulatoryUpdates,
      required final bool isWatched,
      required final int userViews,
      required final DateTime lastViewed,
      required final List<String> userNotes,
      required final double userRating,
      required final List<String> tags}) = _$CryptoImpl;

  factory _Crypto.fromJson(Map<String, dynamic> json) = _$CryptoImpl.fromJson;

  @override
  String get id;
  @override
  String get symbol;
  @override
  String get name;
  @override
  double get currentPrice;
  @override
  double get marketCap;
  @override
  double get marketCapRank;
  @override
  double get totalVolume;
  @override
  double get high24h;
  @override
  double get low24h;
  @override
  double get priceChange24h;
  @override
  double get priceChangePercentage24h;
  @override
  double get marketCapChange24h;
  @override
  double get marketCapChangePercentage24h;
  @override
  double get circulatingSupply;
  @override
  double get totalSupply;
  @override
  double get maxSupply;
  @override
  double get ath;
  @override
  double get athChangePercentage;
  @override
  DateTime get athDate;
  @override
  double get atl;
  @override
  double get atlChangePercentage;
  @override
  DateTime get atlDate;
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
  DeFiMetrics get defiMetrics;
  @override
  OnChainData get onChainData;
  @override
  SocialMetrics get socialMetrics;
  @override
  DeveloperMetrics get developerMetrics;
  @override
  List<ExchangeData> get exchangeData;
  @override
  List<WalletData> get whaleWallets;
  @override
  NetworkMetrics get networkMetrics;
  @override
  StakingData get stakingData;
  @override
  GovernanceData get governanceData;
  @override
  List<ForkData> get forks;
  @override
  List<PartnershipData> get partnerships;
  @override
  List<RegulatoryData> get regulatoryUpdates;
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

  /// Create a copy of Crypto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CryptoImplCopyWith<_$CryptoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeFiMetrics _$DeFiMetricsFromJson(Map<String, dynamic> json) {
  return _DeFiMetrics.fromJson(json);
}

/// @nodoc
mixin _$DeFiMetrics {
  double get totalValueLocked => throw _privateConstructorUsedError;
  double get totalValueLockedUSD => throw _privateConstructorUsedError;
  double get totalValueLockedUSDChange24h => throw _privateConstructorUsedError;
  double get totalValueLockedUSDChangePercentage24h =>
      throw _privateConstructorUsedError;
  List<ProtocolData> get topProtocols => throw _privateConstructorUsedError;
  double get defiMarketCap => throw _privateConstructorUsedError;
  double get defiMarketCapChange24h => throw _privateConstructorUsedError;
  double get defiMarketCapChangePercentage24h =>
      throw _privateConstructorUsedError;
  double get defiDominance => throw _privateConstructorUsedError;
  List<YieldData> get yieldOpportunities => throw _privateConstructorUsedError;

  /// Serializes this DeFiMetrics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeFiMetrics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeFiMetricsCopyWith<DeFiMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeFiMetricsCopyWith<$Res> {
  factory $DeFiMetricsCopyWith(
          DeFiMetrics value, $Res Function(DeFiMetrics) then) =
      _$DeFiMetricsCopyWithImpl<$Res, DeFiMetrics>;
  @useResult
  $Res call(
      {double totalValueLocked,
      double totalValueLockedUSD,
      double totalValueLockedUSDChange24h,
      double totalValueLockedUSDChangePercentage24h,
      List<ProtocolData> topProtocols,
      double defiMarketCap,
      double defiMarketCapChange24h,
      double defiMarketCapChangePercentage24h,
      double defiDominance,
      List<YieldData> yieldOpportunities});
}

/// @nodoc
class _$DeFiMetricsCopyWithImpl<$Res, $Val extends DeFiMetrics>
    implements $DeFiMetricsCopyWith<$Res> {
  _$DeFiMetricsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeFiMetrics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalValueLocked = null,
    Object? totalValueLockedUSD = null,
    Object? totalValueLockedUSDChange24h = null,
    Object? totalValueLockedUSDChangePercentage24h = null,
    Object? topProtocols = null,
    Object? defiMarketCap = null,
    Object? defiMarketCapChange24h = null,
    Object? defiMarketCapChangePercentage24h = null,
    Object? defiDominance = null,
    Object? yieldOpportunities = null,
  }) {
    return _then(_value.copyWith(
      totalValueLocked: null == totalValueLocked
          ? _value.totalValueLocked
          : totalValueLocked // ignore: cast_nullable_to_non_nullable
              as double,
      totalValueLockedUSD: null == totalValueLockedUSD
          ? _value.totalValueLockedUSD
          : totalValueLockedUSD // ignore: cast_nullable_to_non_nullable
              as double,
      totalValueLockedUSDChange24h: null == totalValueLockedUSDChange24h
          ? _value.totalValueLockedUSDChange24h
          : totalValueLockedUSDChange24h // ignore: cast_nullable_to_non_nullable
              as double,
      totalValueLockedUSDChangePercentage24h: null ==
              totalValueLockedUSDChangePercentage24h
          ? _value.totalValueLockedUSDChangePercentage24h
          : totalValueLockedUSDChangePercentage24h // ignore: cast_nullable_to_non_nullable
              as double,
      topProtocols: null == topProtocols
          ? _value.topProtocols
          : topProtocols // ignore: cast_nullable_to_non_nullable
              as List<ProtocolData>,
      defiMarketCap: null == defiMarketCap
          ? _value.defiMarketCap
          : defiMarketCap // ignore: cast_nullable_to_non_nullable
              as double,
      defiMarketCapChange24h: null == defiMarketCapChange24h
          ? _value.defiMarketCapChange24h
          : defiMarketCapChange24h // ignore: cast_nullable_to_non_nullable
              as double,
      defiMarketCapChangePercentage24h: null == defiMarketCapChangePercentage24h
          ? _value.defiMarketCapChangePercentage24h
          : defiMarketCapChangePercentage24h // ignore: cast_nullable_to_non_nullable
              as double,
      defiDominance: null == defiDominance
          ? _value.defiDominance
          : defiDominance // ignore: cast_nullable_to_non_nullable
              as double,
      yieldOpportunities: null == yieldOpportunities
          ? _value.yieldOpportunities
          : yieldOpportunities // ignore: cast_nullable_to_non_nullable
              as List<YieldData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeFiMetricsImplCopyWith<$Res>
    implements $DeFiMetricsCopyWith<$Res> {
  factory _$$DeFiMetricsImplCopyWith(
          _$DeFiMetricsImpl value, $Res Function(_$DeFiMetricsImpl) then) =
      __$$DeFiMetricsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double totalValueLocked,
      double totalValueLockedUSD,
      double totalValueLockedUSDChange24h,
      double totalValueLockedUSDChangePercentage24h,
      List<ProtocolData> topProtocols,
      double defiMarketCap,
      double defiMarketCapChange24h,
      double defiMarketCapChangePercentage24h,
      double defiDominance,
      List<YieldData> yieldOpportunities});
}

/// @nodoc
class __$$DeFiMetricsImplCopyWithImpl<$Res>
    extends _$DeFiMetricsCopyWithImpl<$Res, _$DeFiMetricsImpl>
    implements _$$DeFiMetricsImplCopyWith<$Res> {
  __$$DeFiMetricsImplCopyWithImpl(
      _$DeFiMetricsImpl _value, $Res Function(_$DeFiMetricsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeFiMetrics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalValueLocked = null,
    Object? totalValueLockedUSD = null,
    Object? totalValueLockedUSDChange24h = null,
    Object? totalValueLockedUSDChangePercentage24h = null,
    Object? topProtocols = null,
    Object? defiMarketCap = null,
    Object? defiMarketCapChange24h = null,
    Object? defiMarketCapChangePercentage24h = null,
    Object? defiDominance = null,
    Object? yieldOpportunities = null,
  }) {
    return _then(_$DeFiMetricsImpl(
      totalValueLocked: null == totalValueLocked
          ? _value.totalValueLocked
          : totalValueLocked // ignore: cast_nullable_to_non_nullable
              as double,
      totalValueLockedUSD: null == totalValueLockedUSD
          ? _value.totalValueLockedUSD
          : totalValueLockedUSD // ignore: cast_nullable_to_non_nullable
              as double,
      totalValueLockedUSDChange24h: null == totalValueLockedUSDChange24h
          ? _value.totalValueLockedUSDChange24h
          : totalValueLockedUSDChange24h // ignore: cast_nullable_to_non_nullable
              as double,
      totalValueLockedUSDChangePercentage24h: null ==
              totalValueLockedUSDChangePercentage24h
          ? _value.totalValueLockedUSDChangePercentage24h
          : totalValueLockedUSDChangePercentage24h // ignore: cast_nullable_to_non_nullable
              as double,
      topProtocols: null == topProtocols
          ? _value._topProtocols
          : topProtocols // ignore: cast_nullable_to_non_nullable
              as List<ProtocolData>,
      defiMarketCap: null == defiMarketCap
          ? _value.defiMarketCap
          : defiMarketCap // ignore: cast_nullable_to_non_nullable
              as double,
      defiMarketCapChange24h: null == defiMarketCapChange24h
          ? _value.defiMarketCapChange24h
          : defiMarketCapChange24h // ignore: cast_nullable_to_non_nullable
              as double,
      defiMarketCapChangePercentage24h: null == defiMarketCapChangePercentage24h
          ? _value.defiMarketCapChangePercentage24h
          : defiMarketCapChangePercentage24h // ignore: cast_nullable_to_non_nullable
              as double,
      defiDominance: null == defiDominance
          ? _value.defiDominance
          : defiDominance // ignore: cast_nullable_to_non_nullable
              as double,
      yieldOpportunities: null == yieldOpportunities
          ? _value._yieldOpportunities
          : yieldOpportunities // ignore: cast_nullable_to_non_nullable
              as List<YieldData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeFiMetricsImpl implements _DeFiMetrics {
  const _$DeFiMetricsImpl(
      {required this.totalValueLocked,
      required this.totalValueLockedUSD,
      required this.totalValueLockedUSDChange24h,
      required this.totalValueLockedUSDChangePercentage24h,
      required final List<ProtocolData> topProtocols,
      required this.defiMarketCap,
      required this.defiMarketCapChange24h,
      required this.defiMarketCapChangePercentage24h,
      required this.defiDominance,
      required final List<YieldData> yieldOpportunities})
      : _topProtocols = topProtocols,
        _yieldOpportunities = yieldOpportunities;

  factory _$DeFiMetricsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeFiMetricsImplFromJson(json);

  @override
  final double totalValueLocked;
  @override
  final double totalValueLockedUSD;
  @override
  final double totalValueLockedUSDChange24h;
  @override
  final double totalValueLockedUSDChangePercentage24h;
  final List<ProtocolData> _topProtocols;
  @override
  List<ProtocolData> get topProtocols {
    if (_topProtocols is EqualUnmodifiableListView) return _topProtocols;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topProtocols);
  }

  @override
  final double defiMarketCap;
  @override
  final double defiMarketCapChange24h;
  @override
  final double defiMarketCapChangePercentage24h;
  @override
  final double defiDominance;
  final List<YieldData> _yieldOpportunities;
  @override
  List<YieldData> get yieldOpportunities {
    if (_yieldOpportunities is EqualUnmodifiableListView)
      return _yieldOpportunities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_yieldOpportunities);
  }

  @override
  String toString() {
    return 'DeFiMetrics(totalValueLocked: $totalValueLocked, totalValueLockedUSD: $totalValueLockedUSD, totalValueLockedUSDChange24h: $totalValueLockedUSDChange24h, totalValueLockedUSDChangePercentage24h: $totalValueLockedUSDChangePercentage24h, topProtocols: $topProtocols, defiMarketCap: $defiMarketCap, defiMarketCapChange24h: $defiMarketCapChange24h, defiMarketCapChangePercentage24h: $defiMarketCapChangePercentage24h, defiDominance: $defiDominance, yieldOpportunities: $yieldOpportunities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeFiMetricsImpl &&
            (identical(other.totalValueLocked, totalValueLocked) ||
                other.totalValueLocked == totalValueLocked) &&
            (identical(other.totalValueLockedUSD, totalValueLockedUSD) ||
                other.totalValueLockedUSD == totalValueLockedUSD) &&
            (identical(other.totalValueLockedUSDChange24h,
                    totalValueLockedUSDChange24h) ||
                other.totalValueLockedUSDChange24h ==
                    totalValueLockedUSDChange24h) &&
            (identical(other.totalValueLockedUSDChangePercentage24h,
                    totalValueLockedUSDChangePercentage24h) ||
                other.totalValueLockedUSDChangePercentage24h ==
                    totalValueLockedUSDChangePercentage24h) &&
            const DeepCollectionEquality()
                .equals(other._topProtocols, _topProtocols) &&
            (identical(other.defiMarketCap, defiMarketCap) ||
                other.defiMarketCap == defiMarketCap) &&
            (identical(other.defiMarketCapChange24h, defiMarketCapChange24h) ||
                other.defiMarketCapChange24h == defiMarketCapChange24h) &&
            (identical(other.defiMarketCapChangePercentage24h,
                    defiMarketCapChangePercentage24h) ||
                other.defiMarketCapChangePercentage24h ==
                    defiMarketCapChangePercentage24h) &&
            (identical(other.defiDominance, defiDominance) ||
                other.defiDominance == defiDominance) &&
            const DeepCollectionEquality()
                .equals(other._yieldOpportunities, _yieldOpportunities));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalValueLocked,
      totalValueLockedUSD,
      totalValueLockedUSDChange24h,
      totalValueLockedUSDChangePercentage24h,
      const DeepCollectionEquality().hash(_topProtocols),
      defiMarketCap,
      defiMarketCapChange24h,
      defiMarketCapChangePercentage24h,
      defiDominance,
      const DeepCollectionEquality().hash(_yieldOpportunities));

  /// Create a copy of DeFiMetrics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeFiMetricsImplCopyWith<_$DeFiMetricsImpl> get copyWith =>
      __$$DeFiMetricsImplCopyWithImpl<_$DeFiMetricsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeFiMetricsImplToJson(
      this,
    );
  }
}

abstract class _DeFiMetrics implements DeFiMetrics {
  const factory _DeFiMetrics(
      {required final double totalValueLocked,
      required final double totalValueLockedUSD,
      required final double totalValueLockedUSDChange24h,
      required final double totalValueLockedUSDChangePercentage24h,
      required final List<ProtocolData> topProtocols,
      required final double defiMarketCap,
      required final double defiMarketCapChange24h,
      required final double defiMarketCapChangePercentage24h,
      required final double defiDominance,
      required final List<YieldData> yieldOpportunities}) = _$DeFiMetricsImpl;

  factory _DeFiMetrics.fromJson(Map<String, dynamic> json) =
      _$DeFiMetricsImpl.fromJson;

  @override
  double get totalValueLocked;
  @override
  double get totalValueLockedUSD;
  @override
  double get totalValueLockedUSDChange24h;
  @override
  double get totalValueLockedUSDChangePercentage24h;
  @override
  List<ProtocolData> get topProtocols;
  @override
  double get defiMarketCap;
  @override
  double get defiMarketCapChange24h;
  @override
  double get defiMarketCapChangePercentage24h;
  @override
  double get defiDominance;
  @override
  List<YieldData> get yieldOpportunities;

  /// Create a copy of DeFiMetrics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeFiMetricsImplCopyWith<_$DeFiMetricsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProtocolData _$ProtocolDataFromJson(Map<String, dynamic> json) {
  return _ProtocolData.fromJson(json);
}

/// @nodoc
mixin _$ProtocolData {
  String get name => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  double get tvl => throw _privateConstructorUsedError;
  double get tvlChange24h => throw _privateConstructorUsedError;
  double get tvlChangePercentage24h => throw _privateConstructorUsedError;
  double get volume24h => throw _privateConstructorUsedError;
  double get fees24h => throw _privateConstructorUsedError;
  double get apy => throw _privateConstructorUsedError;
  List<String> get chains => throw _privateConstructorUsedError;

  /// Serializes this ProtocolData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProtocolData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProtocolDataCopyWith<ProtocolData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProtocolDataCopyWith<$Res> {
  factory $ProtocolDataCopyWith(
          ProtocolData value, $Res Function(ProtocolData) then) =
      _$ProtocolDataCopyWithImpl<$Res, ProtocolData>;
  @useResult
  $Res call(
      {String name,
      String category,
      double tvl,
      double tvlChange24h,
      double tvlChangePercentage24h,
      double volume24h,
      double fees24h,
      double apy,
      List<String> chains});
}

/// @nodoc
class _$ProtocolDataCopyWithImpl<$Res, $Val extends ProtocolData>
    implements $ProtocolDataCopyWith<$Res> {
  _$ProtocolDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProtocolData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? category = null,
    Object? tvl = null,
    Object? tvlChange24h = null,
    Object? tvlChangePercentage24h = null,
    Object? volume24h = null,
    Object? fees24h = null,
    Object? apy = null,
    Object? chains = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      tvl: null == tvl
          ? _value.tvl
          : tvl // ignore: cast_nullable_to_non_nullable
              as double,
      tvlChange24h: null == tvlChange24h
          ? _value.tvlChange24h
          : tvlChange24h // ignore: cast_nullable_to_non_nullable
              as double,
      tvlChangePercentage24h: null == tvlChangePercentage24h
          ? _value.tvlChangePercentage24h
          : tvlChangePercentage24h // ignore: cast_nullable_to_non_nullable
              as double,
      volume24h: null == volume24h
          ? _value.volume24h
          : volume24h // ignore: cast_nullable_to_non_nullable
              as double,
      fees24h: null == fees24h
          ? _value.fees24h
          : fees24h // ignore: cast_nullable_to_non_nullable
              as double,
      apy: null == apy
          ? _value.apy
          : apy // ignore: cast_nullable_to_non_nullable
              as double,
      chains: null == chains
          ? _value.chains
          : chains // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProtocolDataImplCopyWith<$Res>
    implements $ProtocolDataCopyWith<$Res> {
  factory _$$ProtocolDataImplCopyWith(
          _$ProtocolDataImpl value, $Res Function(_$ProtocolDataImpl) then) =
      __$$ProtocolDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String category,
      double tvl,
      double tvlChange24h,
      double tvlChangePercentage24h,
      double volume24h,
      double fees24h,
      double apy,
      List<String> chains});
}

/// @nodoc
class __$$ProtocolDataImplCopyWithImpl<$Res>
    extends _$ProtocolDataCopyWithImpl<$Res, _$ProtocolDataImpl>
    implements _$$ProtocolDataImplCopyWith<$Res> {
  __$$ProtocolDataImplCopyWithImpl(
      _$ProtocolDataImpl _value, $Res Function(_$ProtocolDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProtocolData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? category = null,
    Object? tvl = null,
    Object? tvlChange24h = null,
    Object? tvlChangePercentage24h = null,
    Object? volume24h = null,
    Object? fees24h = null,
    Object? apy = null,
    Object? chains = null,
  }) {
    return _then(_$ProtocolDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      tvl: null == tvl
          ? _value.tvl
          : tvl // ignore: cast_nullable_to_non_nullable
              as double,
      tvlChange24h: null == tvlChange24h
          ? _value.tvlChange24h
          : tvlChange24h // ignore: cast_nullable_to_non_nullable
              as double,
      tvlChangePercentage24h: null == tvlChangePercentage24h
          ? _value.tvlChangePercentage24h
          : tvlChangePercentage24h // ignore: cast_nullable_to_non_nullable
              as double,
      volume24h: null == volume24h
          ? _value.volume24h
          : volume24h // ignore: cast_nullable_to_non_nullable
              as double,
      fees24h: null == fees24h
          ? _value.fees24h
          : fees24h // ignore: cast_nullable_to_non_nullable
              as double,
      apy: null == apy
          ? _value.apy
          : apy // ignore: cast_nullable_to_non_nullable
              as double,
      chains: null == chains
          ? _value._chains
          : chains // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProtocolDataImpl implements _ProtocolData {
  const _$ProtocolDataImpl(
      {required this.name,
      required this.category,
      required this.tvl,
      required this.tvlChange24h,
      required this.tvlChangePercentage24h,
      required this.volume24h,
      required this.fees24h,
      required this.apy,
      required final List<String> chains})
      : _chains = chains;

  factory _$ProtocolDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProtocolDataImplFromJson(json);

  @override
  final String name;
  @override
  final String category;
  @override
  final double tvl;
  @override
  final double tvlChange24h;
  @override
  final double tvlChangePercentage24h;
  @override
  final double volume24h;
  @override
  final double fees24h;
  @override
  final double apy;
  final List<String> _chains;
  @override
  List<String> get chains {
    if (_chains is EqualUnmodifiableListView) return _chains;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chains);
  }

  @override
  String toString() {
    return 'ProtocolData(name: $name, category: $category, tvl: $tvl, tvlChange24h: $tvlChange24h, tvlChangePercentage24h: $tvlChangePercentage24h, volume24h: $volume24h, fees24h: $fees24h, apy: $apy, chains: $chains)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.tvl, tvl) || other.tvl == tvl) &&
            (identical(other.tvlChange24h, tvlChange24h) ||
                other.tvlChange24h == tvlChange24h) &&
            (identical(other.tvlChangePercentage24h, tvlChangePercentage24h) ||
                other.tvlChangePercentage24h == tvlChangePercentage24h) &&
            (identical(other.volume24h, volume24h) ||
                other.volume24h == volume24h) &&
            (identical(other.fees24h, fees24h) || other.fees24h == fees24h) &&
            (identical(other.apy, apy) || other.apy == apy) &&
            const DeepCollectionEquality().equals(other._chains, _chains));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      category,
      tvl,
      tvlChange24h,
      tvlChangePercentage24h,
      volume24h,
      fees24h,
      apy,
      const DeepCollectionEquality().hash(_chains));

  /// Create a copy of ProtocolData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProtocolDataImplCopyWith<_$ProtocolDataImpl> get copyWith =>
      __$$ProtocolDataImplCopyWithImpl<_$ProtocolDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProtocolDataImplToJson(
      this,
    );
  }
}

abstract class _ProtocolData implements ProtocolData {
  const factory _ProtocolData(
      {required final String name,
      required final String category,
      required final double tvl,
      required final double tvlChange24h,
      required final double tvlChangePercentage24h,
      required final double volume24h,
      required final double fees24h,
      required final double apy,
      required final List<String> chains}) = _$ProtocolDataImpl;

  factory _ProtocolData.fromJson(Map<String, dynamic> json) =
      _$ProtocolDataImpl.fromJson;

  @override
  String get name;
  @override
  String get category;
  @override
  double get tvl;
  @override
  double get tvlChange24h;
  @override
  double get tvlChangePercentage24h;
  @override
  double get volume24h;
  @override
  double get fees24h;
  @override
  double get apy;
  @override
  List<String> get chains;

  /// Create a copy of ProtocolData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProtocolDataImplCopyWith<_$ProtocolDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

YieldData _$YieldDataFromJson(Map<String, dynamic> json) {
  return _YieldData.fromJson(json);
}

/// @nodoc
mixin _$YieldData {
  String get protocol => throw _privateConstructorUsedError;
  String get asset => throw _privateConstructorUsedError;
  double get apy => throw _privateConstructorUsedError;
  double get apyChange24h => throw _privateConstructorUsedError;
  double get tvl => throw _privateConstructorUsedError;
  String get risk => throw _privateConstructorUsedError;
  List<String> get strategies => throw _privateConstructorUsedError;

  /// Serializes this YieldData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of YieldData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $YieldDataCopyWith<YieldData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YieldDataCopyWith<$Res> {
  factory $YieldDataCopyWith(YieldData value, $Res Function(YieldData) then) =
      _$YieldDataCopyWithImpl<$Res, YieldData>;
  @useResult
  $Res call(
      {String protocol,
      String asset,
      double apy,
      double apyChange24h,
      double tvl,
      String risk,
      List<String> strategies});
}

/// @nodoc
class _$YieldDataCopyWithImpl<$Res, $Val extends YieldData>
    implements $YieldDataCopyWith<$Res> {
  _$YieldDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of YieldData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? protocol = null,
    Object? asset = null,
    Object? apy = null,
    Object? apyChange24h = null,
    Object? tvl = null,
    Object? risk = null,
    Object? strategies = null,
  }) {
    return _then(_value.copyWith(
      protocol: null == protocol
          ? _value.protocol
          : protocol // ignore: cast_nullable_to_non_nullable
              as String,
      asset: null == asset
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String,
      apy: null == apy
          ? _value.apy
          : apy // ignore: cast_nullable_to_non_nullable
              as double,
      apyChange24h: null == apyChange24h
          ? _value.apyChange24h
          : apyChange24h // ignore: cast_nullable_to_non_nullable
              as double,
      tvl: null == tvl
          ? _value.tvl
          : tvl // ignore: cast_nullable_to_non_nullable
              as double,
      risk: null == risk
          ? _value.risk
          : risk // ignore: cast_nullable_to_non_nullable
              as String,
      strategies: null == strategies
          ? _value.strategies
          : strategies // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$YieldDataImplCopyWith<$Res>
    implements $YieldDataCopyWith<$Res> {
  factory _$$YieldDataImplCopyWith(
          _$YieldDataImpl value, $Res Function(_$YieldDataImpl) then) =
      __$$YieldDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String protocol,
      String asset,
      double apy,
      double apyChange24h,
      double tvl,
      String risk,
      List<String> strategies});
}

/// @nodoc
class __$$YieldDataImplCopyWithImpl<$Res>
    extends _$YieldDataCopyWithImpl<$Res, _$YieldDataImpl>
    implements _$$YieldDataImplCopyWith<$Res> {
  __$$YieldDataImplCopyWithImpl(
      _$YieldDataImpl _value, $Res Function(_$YieldDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of YieldData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? protocol = null,
    Object? asset = null,
    Object? apy = null,
    Object? apyChange24h = null,
    Object? tvl = null,
    Object? risk = null,
    Object? strategies = null,
  }) {
    return _then(_$YieldDataImpl(
      protocol: null == protocol
          ? _value.protocol
          : protocol // ignore: cast_nullable_to_non_nullable
              as String,
      asset: null == asset
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String,
      apy: null == apy
          ? _value.apy
          : apy // ignore: cast_nullable_to_non_nullable
              as double,
      apyChange24h: null == apyChange24h
          ? _value.apyChange24h
          : apyChange24h // ignore: cast_nullable_to_non_nullable
              as double,
      tvl: null == tvl
          ? _value.tvl
          : tvl // ignore: cast_nullable_to_non_nullable
              as double,
      risk: null == risk
          ? _value.risk
          : risk // ignore: cast_nullable_to_non_nullable
              as String,
      strategies: null == strategies
          ? _value._strategies
          : strategies // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$YieldDataImpl implements _YieldData {
  const _$YieldDataImpl(
      {required this.protocol,
      required this.asset,
      required this.apy,
      required this.apyChange24h,
      required this.tvl,
      required this.risk,
      required final List<String> strategies})
      : _strategies = strategies;

  factory _$YieldDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$YieldDataImplFromJson(json);

  @override
  final String protocol;
  @override
  final String asset;
  @override
  final double apy;
  @override
  final double apyChange24h;
  @override
  final double tvl;
  @override
  final String risk;
  final List<String> _strategies;
  @override
  List<String> get strategies {
    if (_strategies is EqualUnmodifiableListView) return _strategies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_strategies);
  }

  @override
  String toString() {
    return 'YieldData(protocol: $protocol, asset: $asset, apy: $apy, apyChange24h: $apyChange24h, tvl: $tvl, risk: $risk, strategies: $strategies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YieldDataImpl &&
            (identical(other.protocol, protocol) ||
                other.protocol == protocol) &&
            (identical(other.asset, asset) || other.asset == asset) &&
            (identical(other.apy, apy) || other.apy == apy) &&
            (identical(other.apyChange24h, apyChange24h) ||
                other.apyChange24h == apyChange24h) &&
            (identical(other.tvl, tvl) || other.tvl == tvl) &&
            (identical(other.risk, risk) || other.risk == risk) &&
            const DeepCollectionEquality()
                .equals(other._strategies, _strategies));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      protocol,
      asset,
      apy,
      apyChange24h,
      tvl,
      risk,
      const DeepCollectionEquality().hash(_strategies));

  /// Create a copy of YieldData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$YieldDataImplCopyWith<_$YieldDataImpl> get copyWith =>
      __$$YieldDataImplCopyWithImpl<_$YieldDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$YieldDataImplToJson(
      this,
    );
  }
}

abstract class _YieldData implements YieldData {
  const factory _YieldData(
      {required final String protocol,
      required final String asset,
      required final double apy,
      required final double apyChange24h,
      required final double tvl,
      required final String risk,
      required final List<String> strategies}) = _$YieldDataImpl;

  factory _YieldData.fromJson(Map<String, dynamic> json) =
      _$YieldDataImpl.fromJson;

  @override
  String get protocol;
  @override
  String get asset;
  @override
  double get apy;
  @override
  double get apyChange24h;
  @override
  double get tvl;
  @override
  String get risk;
  @override
  List<String> get strategies;

  /// Create a copy of YieldData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$YieldDataImplCopyWith<_$YieldDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OnChainData _$OnChainDataFromJson(Map<String, dynamic> json) {
  return _OnChainData.fromJson(json);
}

/// @nodoc
mixin _$OnChainData {
  double get activeAddresses => throw _privateConstructorUsedError;
  double get activeAddressesChange24h => throw _privateConstructorUsedError;
  double get transactions24h => throw _privateConstructorUsedError;
  double get transactions24hChange => throw _privateConstructorUsedError;
  double get averageTransactionValue => throw _privateConstructorUsedError;
  double get averageTransactionValueChange24h =>
      throw _privateConstructorUsedError;
  List<BlockData> get recentBlocks => throw _privateConstructorUsedError;
  List<TransactionData> get largeTransactions =>
      throw _privateConstructorUsedError;
  NetworkFees get networkFees => throw _privateConstructorUsedError;
  List<SmartContractData> get smartContracts =>
      throw _privateConstructorUsedError;

  /// Serializes this OnChainData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OnChainData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OnChainDataCopyWith<OnChainData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnChainDataCopyWith<$Res> {
  factory $OnChainDataCopyWith(
          OnChainData value, $Res Function(OnChainData) then) =
      _$OnChainDataCopyWithImpl<$Res, OnChainData>;
  @useResult
  $Res call(
      {double activeAddresses,
      double activeAddressesChange24h,
      double transactions24h,
      double transactions24hChange,
      double averageTransactionValue,
      double averageTransactionValueChange24h,
      List<BlockData> recentBlocks,
      List<TransactionData> largeTransactions,
      NetworkFees networkFees,
      List<SmartContractData> smartContracts});

  $NetworkFeesCopyWith<$Res> get networkFees;
}

/// @nodoc
class _$OnChainDataCopyWithImpl<$Res, $Val extends OnChainData>
    implements $OnChainDataCopyWith<$Res> {
  _$OnChainDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnChainData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeAddresses = null,
    Object? activeAddressesChange24h = null,
    Object? transactions24h = null,
    Object? transactions24hChange = null,
    Object? averageTransactionValue = null,
    Object? averageTransactionValueChange24h = null,
    Object? recentBlocks = null,
    Object? largeTransactions = null,
    Object? networkFees = null,
    Object? smartContracts = null,
  }) {
    return _then(_value.copyWith(
      activeAddresses: null == activeAddresses
          ? _value.activeAddresses
          : activeAddresses // ignore: cast_nullable_to_non_nullable
              as double,
      activeAddressesChange24h: null == activeAddressesChange24h
          ? _value.activeAddressesChange24h
          : activeAddressesChange24h // ignore: cast_nullable_to_non_nullable
              as double,
      transactions24h: null == transactions24h
          ? _value.transactions24h
          : transactions24h // ignore: cast_nullable_to_non_nullable
              as double,
      transactions24hChange: null == transactions24hChange
          ? _value.transactions24hChange
          : transactions24hChange // ignore: cast_nullable_to_non_nullable
              as double,
      averageTransactionValue: null == averageTransactionValue
          ? _value.averageTransactionValue
          : averageTransactionValue // ignore: cast_nullable_to_non_nullable
              as double,
      averageTransactionValueChange24h: null == averageTransactionValueChange24h
          ? _value.averageTransactionValueChange24h
          : averageTransactionValueChange24h // ignore: cast_nullable_to_non_nullable
              as double,
      recentBlocks: null == recentBlocks
          ? _value.recentBlocks
          : recentBlocks // ignore: cast_nullable_to_non_nullable
              as List<BlockData>,
      largeTransactions: null == largeTransactions
          ? _value.largeTransactions
          : largeTransactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionData>,
      networkFees: null == networkFees
          ? _value.networkFees
          : networkFees // ignore: cast_nullable_to_non_nullable
              as NetworkFees,
      smartContracts: null == smartContracts
          ? _value.smartContracts
          : smartContracts // ignore: cast_nullable_to_non_nullable
              as List<SmartContractData>,
    ) as $Val);
  }

  /// Create a copy of OnChainData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworkFeesCopyWith<$Res> get networkFees {
    return $NetworkFeesCopyWith<$Res>(_value.networkFees, (value) {
      return _then(_value.copyWith(networkFees: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OnChainDataImplCopyWith<$Res>
    implements $OnChainDataCopyWith<$Res> {
  factory _$$OnChainDataImplCopyWith(
          _$OnChainDataImpl value, $Res Function(_$OnChainDataImpl) then) =
      __$$OnChainDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double activeAddresses,
      double activeAddressesChange24h,
      double transactions24h,
      double transactions24hChange,
      double averageTransactionValue,
      double averageTransactionValueChange24h,
      List<BlockData> recentBlocks,
      List<TransactionData> largeTransactions,
      NetworkFees networkFees,
      List<SmartContractData> smartContracts});

  @override
  $NetworkFeesCopyWith<$Res> get networkFees;
}

/// @nodoc
class __$$OnChainDataImplCopyWithImpl<$Res>
    extends _$OnChainDataCopyWithImpl<$Res, _$OnChainDataImpl>
    implements _$$OnChainDataImplCopyWith<$Res> {
  __$$OnChainDataImplCopyWithImpl(
      _$OnChainDataImpl _value, $Res Function(_$OnChainDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnChainData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeAddresses = null,
    Object? activeAddressesChange24h = null,
    Object? transactions24h = null,
    Object? transactions24hChange = null,
    Object? averageTransactionValue = null,
    Object? averageTransactionValueChange24h = null,
    Object? recentBlocks = null,
    Object? largeTransactions = null,
    Object? networkFees = null,
    Object? smartContracts = null,
  }) {
    return _then(_$OnChainDataImpl(
      activeAddresses: null == activeAddresses
          ? _value.activeAddresses
          : activeAddresses // ignore: cast_nullable_to_non_nullable
              as double,
      activeAddressesChange24h: null == activeAddressesChange24h
          ? _value.activeAddressesChange24h
          : activeAddressesChange24h // ignore: cast_nullable_to_non_nullable
              as double,
      transactions24h: null == transactions24h
          ? _value.transactions24h
          : transactions24h // ignore: cast_nullable_to_non_nullable
              as double,
      transactions24hChange: null == transactions24hChange
          ? _value.transactions24hChange
          : transactions24hChange // ignore: cast_nullable_to_non_nullable
              as double,
      averageTransactionValue: null == averageTransactionValue
          ? _value.averageTransactionValue
          : averageTransactionValue // ignore: cast_nullable_to_non_nullable
              as double,
      averageTransactionValueChange24h: null == averageTransactionValueChange24h
          ? _value.averageTransactionValueChange24h
          : averageTransactionValueChange24h // ignore: cast_nullable_to_non_nullable
              as double,
      recentBlocks: null == recentBlocks
          ? _value._recentBlocks
          : recentBlocks // ignore: cast_nullable_to_non_nullable
              as List<BlockData>,
      largeTransactions: null == largeTransactions
          ? _value._largeTransactions
          : largeTransactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionData>,
      networkFees: null == networkFees
          ? _value.networkFees
          : networkFees // ignore: cast_nullable_to_non_nullable
              as NetworkFees,
      smartContracts: null == smartContracts
          ? _value._smartContracts
          : smartContracts // ignore: cast_nullable_to_non_nullable
              as List<SmartContractData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OnChainDataImpl implements _OnChainData {
  const _$OnChainDataImpl(
      {required this.activeAddresses,
      required this.activeAddressesChange24h,
      required this.transactions24h,
      required this.transactions24hChange,
      required this.averageTransactionValue,
      required this.averageTransactionValueChange24h,
      required final List<BlockData> recentBlocks,
      required final List<TransactionData> largeTransactions,
      required this.networkFees,
      required final List<SmartContractData> smartContracts})
      : _recentBlocks = recentBlocks,
        _largeTransactions = largeTransactions,
        _smartContracts = smartContracts;

  factory _$OnChainDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnChainDataImplFromJson(json);

  @override
  final double activeAddresses;
  @override
  final double activeAddressesChange24h;
  @override
  final double transactions24h;
  @override
  final double transactions24hChange;
  @override
  final double averageTransactionValue;
  @override
  final double averageTransactionValueChange24h;
  final List<BlockData> _recentBlocks;
  @override
  List<BlockData> get recentBlocks {
    if (_recentBlocks is EqualUnmodifiableListView) return _recentBlocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentBlocks);
  }

  final List<TransactionData> _largeTransactions;
  @override
  List<TransactionData> get largeTransactions {
    if (_largeTransactions is EqualUnmodifiableListView)
      return _largeTransactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_largeTransactions);
  }

  @override
  final NetworkFees networkFees;
  final List<SmartContractData> _smartContracts;
  @override
  List<SmartContractData> get smartContracts {
    if (_smartContracts is EqualUnmodifiableListView) return _smartContracts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_smartContracts);
  }

  @override
  String toString() {
    return 'OnChainData(activeAddresses: $activeAddresses, activeAddressesChange24h: $activeAddressesChange24h, transactions24h: $transactions24h, transactions24hChange: $transactions24hChange, averageTransactionValue: $averageTransactionValue, averageTransactionValueChange24h: $averageTransactionValueChange24h, recentBlocks: $recentBlocks, largeTransactions: $largeTransactions, networkFees: $networkFees, smartContracts: $smartContracts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnChainDataImpl &&
            (identical(other.activeAddresses, activeAddresses) ||
                other.activeAddresses == activeAddresses) &&
            (identical(
                    other.activeAddressesChange24h, activeAddressesChange24h) ||
                other.activeAddressesChange24h == activeAddressesChange24h) &&
            (identical(other.transactions24h, transactions24h) ||
                other.transactions24h == transactions24h) &&
            (identical(other.transactions24hChange, transactions24hChange) ||
                other.transactions24hChange == transactions24hChange) &&
            (identical(
                    other.averageTransactionValue, averageTransactionValue) ||
                other.averageTransactionValue == averageTransactionValue) &&
            (identical(other.averageTransactionValueChange24h,
                    averageTransactionValueChange24h) ||
                other.averageTransactionValueChange24h ==
                    averageTransactionValueChange24h) &&
            const DeepCollectionEquality()
                .equals(other._recentBlocks, _recentBlocks) &&
            const DeepCollectionEquality()
                .equals(other._largeTransactions, _largeTransactions) &&
            (identical(other.networkFees, networkFees) ||
                other.networkFees == networkFees) &&
            const DeepCollectionEquality()
                .equals(other._smartContracts, _smartContracts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      activeAddresses,
      activeAddressesChange24h,
      transactions24h,
      transactions24hChange,
      averageTransactionValue,
      averageTransactionValueChange24h,
      const DeepCollectionEquality().hash(_recentBlocks),
      const DeepCollectionEquality().hash(_largeTransactions),
      networkFees,
      const DeepCollectionEquality().hash(_smartContracts));

  /// Create a copy of OnChainData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnChainDataImplCopyWith<_$OnChainDataImpl> get copyWith =>
      __$$OnChainDataImplCopyWithImpl<_$OnChainDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OnChainDataImplToJson(
      this,
    );
  }
}

abstract class _OnChainData implements OnChainData {
  const factory _OnChainData(
          {required final double activeAddresses,
          required final double activeAddressesChange24h,
          required final double transactions24h,
          required final double transactions24hChange,
          required final double averageTransactionValue,
          required final double averageTransactionValueChange24h,
          required final List<BlockData> recentBlocks,
          required final List<TransactionData> largeTransactions,
          required final NetworkFees networkFees,
          required final List<SmartContractData> smartContracts}) =
      _$OnChainDataImpl;

  factory _OnChainData.fromJson(Map<String, dynamic> json) =
      _$OnChainDataImpl.fromJson;

  @override
  double get activeAddresses;
  @override
  double get activeAddressesChange24h;
  @override
  double get transactions24h;
  @override
  double get transactions24hChange;
  @override
  double get averageTransactionValue;
  @override
  double get averageTransactionValueChange24h;
  @override
  List<BlockData> get recentBlocks;
  @override
  List<TransactionData> get largeTransactions;
  @override
  NetworkFees get networkFees;
  @override
  List<SmartContractData> get smartContracts;

  /// Create a copy of OnChainData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnChainDataImplCopyWith<_$OnChainDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BlockData _$BlockDataFromJson(Map<String, dynamic> json) {
  return _BlockData.fromJson(json);
}

/// @nodoc
mixin _$BlockData {
  String get hash => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  int get transactions => throw _privateConstructorUsedError;
  double get size => throw _privateConstructorUsedError;
  double get fees => throw _privateConstructorUsedError;

  /// Serializes this BlockData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlockData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlockDataCopyWith<BlockData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockDataCopyWith<$Res> {
  factory $BlockDataCopyWith(BlockData value, $Res Function(BlockData) then) =
      _$BlockDataCopyWithImpl<$Res, BlockData>;
  @useResult
  $Res call(
      {String hash,
      int height,
      DateTime timestamp,
      int transactions,
      double size,
      double fees});
}

/// @nodoc
class _$BlockDataCopyWithImpl<$Res, $Val extends BlockData>
    implements $BlockDataCopyWith<$Res> {
  _$BlockDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlockData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hash = null,
    Object? height = null,
    Object? timestamp = null,
    Object? transactions = null,
    Object? size = null,
    Object? fees = null,
  }) {
    return _then(_value.copyWith(
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      fees: null == fees
          ? _value.fees
          : fees // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlockDataImplCopyWith<$Res>
    implements $BlockDataCopyWith<$Res> {
  factory _$$BlockDataImplCopyWith(
          _$BlockDataImpl value, $Res Function(_$BlockDataImpl) then) =
      __$$BlockDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String hash,
      int height,
      DateTime timestamp,
      int transactions,
      double size,
      double fees});
}

/// @nodoc
class __$$BlockDataImplCopyWithImpl<$Res>
    extends _$BlockDataCopyWithImpl<$Res, _$BlockDataImpl>
    implements _$$BlockDataImplCopyWith<$Res> {
  __$$BlockDataImplCopyWithImpl(
      _$BlockDataImpl _value, $Res Function(_$BlockDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlockData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hash = null,
    Object? height = null,
    Object? timestamp = null,
    Object? transactions = null,
    Object? size = null,
    Object? fees = null,
  }) {
    return _then(_$BlockDataImpl(
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      fees: null == fees
          ? _value.fees
          : fees // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlockDataImpl implements _BlockData {
  const _$BlockDataImpl(
      {required this.hash,
      required this.height,
      required this.timestamp,
      required this.transactions,
      required this.size,
      required this.fees});

  factory _$BlockDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlockDataImplFromJson(json);

  @override
  final String hash;
  @override
  final int height;
  @override
  final DateTime timestamp;
  @override
  final int transactions;
  @override
  final double size;
  @override
  final double fees;

  @override
  String toString() {
    return 'BlockData(hash: $hash, height: $height, timestamp: $timestamp, transactions: $transactions, size: $size, fees: $fees)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlockDataImpl &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.transactions, transactions) ||
                other.transactions == transactions) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.fees, fees) || other.fees == fees));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, hash, height, timestamp, transactions, size, fees);

  /// Create a copy of BlockData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlockDataImplCopyWith<_$BlockDataImpl> get copyWith =>
      __$$BlockDataImplCopyWithImpl<_$BlockDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlockDataImplToJson(
      this,
    );
  }
}

abstract class _BlockData implements BlockData {
  const factory _BlockData(
      {required final String hash,
      required final int height,
      required final DateTime timestamp,
      required final int transactions,
      required final double size,
      required final double fees}) = _$BlockDataImpl;

  factory _BlockData.fromJson(Map<String, dynamic> json) =
      _$BlockDataImpl.fromJson;

  @override
  String get hash;
  @override
  int get height;
  @override
  DateTime get timestamp;
  @override
  int get transactions;
  @override
  double get size;
  @override
  double get fees;

  /// Create a copy of BlockData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlockDataImplCopyWith<_$BlockDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TransactionData _$TransactionDataFromJson(Map<String, dynamic> json) {
  return _TransactionData.fromJson(json);
}

/// @nodoc
mixin _$TransactionData {
  String get hash => throw _privateConstructorUsedError;
  String get from => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  double get gasPrice => throw _privateConstructorUsedError;
  double get gasUsed => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  /// Serializes this TransactionData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransactionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionDataCopyWith<TransactionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDataCopyWith<$Res> {
  factory $TransactionDataCopyWith(
          TransactionData value, $Res Function(TransactionData) then) =
      _$TransactionDataCopyWithImpl<$Res, TransactionData>;
  @useResult
  $Res call(
      {String hash,
      String from,
      String to,
      double value,
      double gasPrice,
      double gasUsed,
      DateTime timestamp,
      String type});
}

/// @nodoc
class _$TransactionDataCopyWithImpl<$Res, $Val extends TransactionData>
    implements $TransactionDataCopyWith<$Res> {
  _$TransactionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hash = null,
    Object? from = null,
    Object? to = null,
    Object? value = null,
    Object? gasPrice = null,
    Object? gasUsed = null,
    Object? timestamp = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      gasPrice: null == gasPrice
          ? _value.gasPrice
          : gasPrice // ignore: cast_nullable_to_non_nullable
              as double,
      gasUsed: null == gasUsed
          ? _value.gasUsed
          : gasUsed // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionDataImplCopyWith<$Res>
    implements $TransactionDataCopyWith<$Res> {
  factory _$$TransactionDataImplCopyWith(_$TransactionDataImpl value,
          $Res Function(_$TransactionDataImpl) then) =
      __$$TransactionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String hash,
      String from,
      String to,
      double value,
      double gasPrice,
      double gasUsed,
      DateTime timestamp,
      String type});
}

/// @nodoc
class __$$TransactionDataImplCopyWithImpl<$Res>
    extends _$TransactionDataCopyWithImpl<$Res, _$TransactionDataImpl>
    implements _$$TransactionDataImplCopyWith<$Res> {
  __$$TransactionDataImplCopyWithImpl(
      _$TransactionDataImpl _value, $Res Function(_$TransactionDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hash = null,
    Object? from = null,
    Object? to = null,
    Object? value = null,
    Object? gasPrice = null,
    Object? gasUsed = null,
    Object? timestamp = null,
    Object? type = null,
  }) {
    return _then(_$TransactionDataImpl(
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      gasPrice: null == gasPrice
          ? _value.gasPrice
          : gasPrice // ignore: cast_nullable_to_non_nullable
              as double,
      gasUsed: null == gasUsed
          ? _value.gasUsed
          : gasUsed // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionDataImpl implements _TransactionData {
  const _$TransactionDataImpl(
      {required this.hash,
      required this.from,
      required this.to,
      required this.value,
      required this.gasPrice,
      required this.gasUsed,
      required this.timestamp,
      required this.type});

  factory _$TransactionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionDataImplFromJson(json);

  @override
  final String hash;
  @override
  final String from;
  @override
  final String to;
  @override
  final double value;
  @override
  final double gasPrice;
  @override
  final double gasUsed;
  @override
  final DateTime timestamp;
  @override
  final String type;

  @override
  String toString() {
    return 'TransactionData(hash: $hash, from: $from, to: $to, value: $value, gasPrice: $gasPrice, gasUsed: $gasUsed, timestamp: $timestamp, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionDataImpl &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.gasPrice, gasPrice) ||
                other.gasPrice == gasPrice) &&
            (identical(other.gasUsed, gasUsed) || other.gasUsed == gasUsed) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, hash, from, to, value, gasPrice, gasUsed, timestamp, type);

  /// Create a copy of TransactionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionDataImplCopyWith<_$TransactionDataImpl> get copyWith =>
      __$$TransactionDataImplCopyWithImpl<_$TransactionDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionDataImplToJson(
      this,
    );
  }
}

abstract class _TransactionData implements TransactionData {
  const factory _TransactionData(
      {required final String hash,
      required final String from,
      required final String to,
      required final double value,
      required final double gasPrice,
      required final double gasUsed,
      required final DateTime timestamp,
      required final String type}) = _$TransactionDataImpl;

  factory _TransactionData.fromJson(Map<String, dynamic> json) =
      _$TransactionDataImpl.fromJson;

  @override
  String get hash;
  @override
  String get from;
  @override
  String get to;
  @override
  double get value;
  @override
  double get gasPrice;
  @override
  double get gasUsed;
  @override
  DateTime get timestamp;
  @override
  String get type;

  /// Create a copy of TransactionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionDataImplCopyWith<_$TransactionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NetworkFees _$NetworkFeesFromJson(Map<String, dynamic> json) {
  return _NetworkFees.fromJson(json);
}

/// @nodoc
mixin _$NetworkFees {
  double get averageGasPrice => throw _privateConstructorUsedError;
  double get averageGasPriceChange24h => throw _privateConstructorUsedError;
  double get medianGasPrice => throw _privateConstructorUsedError;
  double get fastGasPrice => throw _privateConstructorUsedError;
  double get slowGasPrice => throw _privateConstructorUsedError;
  List<FeeHistory> get feeHistory => throw _privateConstructorUsedError;

  /// Serializes this NetworkFees to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NetworkFees
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NetworkFeesCopyWith<NetworkFees> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkFeesCopyWith<$Res> {
  factory $NetworkFeesCopyWith(
          NetworkFees value, $Res Function(NetworkFees) then) =
      _$NetworkFeesCopyWithImpl<$Res, NetworkFees>;
  @useResult
  $Res call(
      {double averageGasPrice,
      double averageGasPriceChange24h,
      double medianGasPrice,
      double fastGasPrice,
      double slowGasPrice,
      List<FeeHistory> feeHistory});
}

/// @nodoc
class _$NetworkFeesCopyWithImpl<$Res, $Val extends NetworkFees>
    implements $NetworkFeesCopyWith<$Res> {
  _$NetworkFeesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NetworkFees
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? averageGasPrice = null,
    Object? averageGasPriceChange24h = null,
    Object? medianGasPrice = null,
    Object? fastGasPrice = null,
    Object? slowGasPrice = null,
    Object? feeHistory = null,
  }) {
    return _then(_value.copyWith(
      averageGasPrice: null == averageGasPrice
          ? _value.averageGasPrice
          : averageGasPrice // ignore: cast_nullable_to_non_nullable
              as double,
      averageGasPriceChange24h: null == averageGasPriceChange24h
          ? _value.averageGasPriceChange24h
          : averageGasPriceChange24h // ignore: cast_nullable_to_non_nullable
              as double,
      medianGasPrice: null == medianGasPrice
          ? _value.medianGasPrice
          : medianGasPrice // ignore: cast_nullable_to_non_nullable
              as double,
      fastGasPrice: null == fastGasPrice
          ? _value.fastGasPrice
          : fastGasPrice // ignore: cast_nullable_to_non_nullable
              as double,
      slowGasPrice: null == slowGasPrice
          ? _value.slowGasPrice
          : slowGasPrice // ignore: cast_nullable_to_non_nullable
              as double,
      feeHistory: null == feeHistory
          ? _value.feeHistory
          : feeHistory // ignore: cast_nullable_to_non_nullable
              as List<FeeHistory>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NetworkFeesImplCopyWith<$Res>
    implements $NetworkFeesCopyWith<$Res> {
  factory _$$NetworkFeesImplCopyWith(
          _$NetworkFeesImpl value, $Res Function(_$NetworkFeesImpl) then) =
      __$$NetworkFeesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double averageGasPrice,
      double averageGasPriceChange24h,
      double medianGasPrice,
      double fastGasPrice,
      double slowGasPrice,
      List<FeeHistory> feeHistory});
}

/// @nodoc
class __$$NetworkFeesImplCopyWithImpl<$Res>
    extends _$NetworkFeesCopyWithImpl<$Res, _$NetworkFeesImpl>
    implements _$$NetworkFeesImplCopyWith<$Res> {
  __$$NetworkFeesImplCopyWithImpl(
      _$NetworkFeesImpl _value, $Res Function(_$NetworkFeesImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkFees
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? averageGasPrice = null,
    Object? averageGasPriceChange24h = null,
    Object? medianGasPrice = null,
    Object? fastGasPrice = null,
    Object? slowGasPrice = null,
    Object? feeHistory = null,
  }) {
    return _then(_$NetworkFeesImpl(
      averageGasPrice: null == averageGasPrice
          ? _value.averageGasPrice
          : averageGasPrice // ignore: cast_nullable_to_non_nullable
              as double,
      averageGasPriceChange24h: null == averageGasPriceChange24h
          ? _value.averageGasPriceChange24h
          : averageGasPriceChange24h // ignore: cast_nullable_to_non_nullable
              as double,
      medianGasPrice: null == medianGasPrice
          ? _value.medianGasPrice
          : medianGasPrice // ignore: cast_nullable_to_non_nullable
              as double,
      fastGasPrice: null == fastGasPrice
          ? _value.fastGasPrice
          : fastGasPrice // ignore: cast_nullable_to_non_nullable
              as double,
      slowGasPrice: null == slowGasPrice
          ? _value.slowGasPrice
          : slowGasPrice // ignore: cast_nullable_to_non_nullable
              as double,
      feeHistory: null == feeHistory
          ? _value._feeHistory
          : feeHistory // ignore: cast_nullable_to_non_nullable
              as List<FeeHistory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NetworkFeesImpl implements _NetworkFees {
  const _$NetworkFeesImpl(
      {required this.averageGasPrice,
      required this.averageGasPriceChange24h,
      required this.medianGasPrice,
      required this.fastGasPrice,
      required this.slowGasPrice,
      required final List<FeeHistory> feeHistory})
      : _feeHistory = feeHistory;

  factory _$NetworkFeesImpl.fromJson(Map<String, dynamic> json) =>
      _$$NetworkFeesImplFromJson(json);

  @override
  final double averageGasPrice;
  @override
  final double averageGasPriceChange24h;
  @override
  final double medianGasPrice;
  @override
  final double fastGasPrice;
  @override
  final double slowGasPrice;
  final List<FeeHistory> _feeHistory;
  @override
  List<FeeHistory> get feeHistory {
    if (_feeHistory is EqualUnmodifiableListView) return _feeHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_feeHistory);
  }

  @override
  String toString() {
    return 'NetworkFees(averageGasPrice: $averageGasPrice, averageGasPriceChange24h: $averageGasPriceChange24h, medianGasPrice: $medianGasPrice, fastGasPrice: $fastGasPrice, slowGasPrice: $slowGasPrice, feeHistory: $feeHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkFeesImpl &&
            (identical(other.averageGasPrice, averageGasPrice) ||
                other.averageGasPrice == averageGasPrice) &&
            (identical(
                    other.averageGasPriceChange24h, averageGasPriceChange24h) ||
                other.averageGasPriceChange24h == averageGasPriceChange24h) &&
            (identical(other.medianGasPrice, medianGasPrice) ||
                other.medianGasPrice == medianGasPrice) &&
            (identical(other.fastGasPrice, fastGasPrice) ||
                other.fastGasPrice == fastGasPrice) &&
            (identical(other.slowGasPrice, slowGasPrice) ||
                other.slowGasPrice == slowGasPrice) &&
            const DeepCollectionEquality()
                .equals(other._feeHistory, _feeHistory));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      averageGasPrice,
      averageGasPriceChange24h,
      medianGasPrice,
      fastGasPrice,
      slowGasPrice,
      const DeepCollectionEquality().hash(_feeHistory));

  /// Create a copy of NetworkFees
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkFeesImplCopyWith<_$NetworkFeesImpl> get copyWith =>
      __$$NetworkFeesImplCopyWithImpl<_$NetworkFeesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NetworkFeesImplToJson(
      this,
    );
  }
}

abstract class _NetworkFees implements NetworkFees {
  const factory _NetworkFees(
      {required final double averageGasPrice,
      required final double averageGasPriceChange24h,
      required final double medianGasPrice,
      required final double fastGasPrice,
      required final double slowGasPrice,
      required final List<FeeHistory> feeHistory}) = _$NetworkFeesImpl;

  factory _NetworkFees.fromJson(Map<String, dynamic> json) =
      _$NetworkFeesImpl.fromJson;

  @override
  double get averageGasPrice;
  @override
  double get averageGasPriceChange24h;
  @override
  double get medianGasPrice;
  @override
  double get fastGasPrice;
  @override
  double get slowGasPrice;
  @override
  List<FeeHistory> get feeHistory;

  /// Create a copy of NetworkFees
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkFeesImplCopyWith<_$NetworkFeesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FeeHistory _$FeeHistoryFromJson(Map<String, dynamic> json) {
  return _FeeHistory.fromJson(json);
}

/// @nodoc
mixin _$FeeHistory {
  DateTime get timestamp => throw _privateConstructorUsedError;
  double get gasPrice => throw _privateConstructorUsedError;
  double get gasUsed => throw _privateConstructorUsedError;

  /// Serializes this FeeHistory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeeHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeeHistoryCopyWith<FeeHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeeHistoryCopyWith<$Res> {
  factory $FeeHistoryCopyWith(
          FeeHistory value, $Res Function(FeeHistory) then) =
      _$FeeHistoryCopyWithImpl<$Res, FeeHistory>;
  @useResult
  $Res call({DateTime timestamp, double gasPrice, double gasUsed});
}

/// @nodoc
class _$FeeHistoryCopyWithImpl<$Res, $Val extends FeeHistory>
    implements $FeeHistoryCopyWith<$Res> {
  _$FeeHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeeHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? gasPrice = null,
    Object? gasUsed = null,
  }) {
    return _then(_value.copyWith(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      gasPrice: null == gasPrice
          ? _value.gasPrice
          : gasPrice // ignore: cast_nullable_to_non_nullable
              as double,
      gasUsed: null == gasUsed
          ? _value.gasUsed
          : gasUsed // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeeHistoryImplCopyWith<$Res>
    implements $FeeHistoryCopyWith<$Res> {
  factory _$$FeeHistoryImplCopyWith(
          _$FeeHistoryImpl value, $Res Function(_$FeeHistoryImpl) then) =
      __$$FeeHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime timestamp, double gasPrice, double gasUsed});
}

/// @nodoc
class __$$FeeHistoryImplCopyWithImpl<$Res>
    extends _$FeeHistoryCopyWithImpl<$Res, _$FeeHistoryImpl>
    implements _$$FeeHistoryImplCopyWith<$Res> {
  __$$FeeHistoryImplCopyWithImpl(
      _$FeeHistoryImpl _value, $Res Function(_$FeeHistoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeeHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? gasPrice = null,
    Object? gasUsed = null,
  }) {
    return _then(_$FeeHistoryImpl(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      gasPrice: null == gasPrice
          ? _value.gasPrice
          : gasPrice // ignore: cast_nullable_to_non_nullable
              as double,
      gasUsed: null == gasUsed
          ? _value.gasUsed
          : gasUsed // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeeHistoryImpl implements _FeeHistory {
  const _$FeeHistoryImpl(
      {required this.timestamp, required this.gasPrice, required this.gasUsed});

  factory _$FeeHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeeHistoryImplFromJson(json);

  @override
  final DateTime timestamp;
  @override
  final double gasPrice;
  @override
  final double gasUsed;

  @override
  String toString() {
    return 'FeeHistory(timestamp: $timestamp, gasPrice: $gasPrice, gasUsed: $gasUsed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeeHistoryImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.gasPrice, gasPrice) ||
                other.gasPrice == gasPrice) &&
            (identical(other.gasUsed, gasUsed) || other.gasUsed == gasUsed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, timestamp, gasPrice, gasUsed);

  /// Create a copy of FeeHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeeHistoryImplCopyWith<_$FeeHistoryImpl> get copyWith =>
      __$$FeeHistoryImplCopyWithImpl<_$FeeHistoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeeHistoryImplToJson(
      this,
    );
  }
}

abstract class _FeeHistory implements FeeHistory {
  const factory _FeeHistory(
      {required final DateTime timestamp,
      required final double gasPrice,
      required final double gasUsed}) = _$FeeHistoryImpl;

  factory _FeeHistory.fromJson(Map<String, dynamic> json) =
      _$FeeHistoryImpl.fromJson;

  @override
  DateTime get timestamp;
  @override
  double get gasPrice;
  @override
  double get gasUsed;

  /// Create a copy of FeeHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeeHistoryImplCopyWith<_$FeeHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SmartContractData _$SmartContractDataFromJson(Map<String, dynamic> json) {
  return _SmartContractData.fromJson(json);
}

/// @nodoc
mixin _$SmartContractData {
  String get address => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  int get transactions => throw _privateConstructorUsedError;
  DateTime get lastActivity => throw _privateConstructorUsedError;

  /// Serializes this SmartContractData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SmartContractData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SmartContractDataCopyWith<SmartContractData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmartContractDataCopyWith<$Res> {
  factory $SmartContractDataCopyWith(
          SmartContractData value, $Res Function(SmartContractData) then) =
      _$SmartContractDataCopyWithImpl<$Res, SmartContractData>;
  @useResult
  $Res call(
      {String address,
      String name,
      String type,
      double value,
      int transactions,
      DateTime lastActivity});
}

/// @nodoc
class _$SmartContractDataCopyWithImpl<$Res, $Val extends SmartContractData>
    implements $SmartContractDataCopyWith<$Res> {
  _$SmartContractDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SmartContractData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? name = null,
    Object? type = null,
    Object? value = null,
    Object? transactions = null,
    Object? lastActivity = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as int,
      lastActivity: null == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SmartContractDataImplCopyWith<$Res>
    implements $SmartContractDataCopyWith<$Res> {
  factory _$$SmartContractDataImplCopyWith(_$SmartContractDataImpl value,
          $Res Function(_$SmartContractDataImpl) then) =
      __$$SmartContractDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String address,
      String name,
      String type,
      double value,
      int transactions,
      DateTime lastActivity});
}

/// @nodoc
class __$$SmartContractDataImplCopyWithImpl<$Res>
    extends _$SmartContractDataCopyWithImpl<$Res, _$SmartContractDataImpl>
    implements _$$SmartContractDataImplCopyWith<$Res> {
  __$$SmartContractDataImplCopyWithImpl(_$SmartContractDataImpl _value,
      $Res Function(_$SmartContractDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SmartContractData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? name = null,
    Object? type = null,
    Object? value = null,
    Object? transactions = null,
    Object? lastActivity = null,
  }) {
    return _then(_$SmartContractDataImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as int,
      lastActivity: null == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SmartContractDataImpl implements _SmartContractData {
  const _$SmartContractDataImpl(
      {required this.address,
      required this.name,
      required this.type,
      required this.value,
      required this.transactions,
      required this.lastActivity});

  factory _$SmartContractDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SmartContractDataImplFromJson(json);

  @override
  final String address;
  @override
  final String name;
  @override
  final String type;
  @override
  final double value;
  @override
  final int transactions;
  @override
  final DateTime lastActivity;

  @override
  String toString() {
    return 'SmartContractData(address: $address, name: $name, type: $type, value: $value, transactions: $transactions, lastActivity: $lastActivity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SmartContractDataImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.transactions, transactions) ||
                other.transactions == transactions) &&
            (identical(other.lastActivity, lastActivity) ||
                other.lastActivity == lastActivity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, address, name, type, value, transactions, lastActivity);

  /// Create a copy of SmartContractData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SmartContractDataImplCopyWith<_$SmartContractDataImpl> get copyWith =>
      __$$SmartContractDataImplCopyWithImpl<_$SmartContractDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SmartContractDataImplToJson(
      this,
    );
  }
}

abstract class _SmartContractData implements SmartContractData {
  const factory _SmartContractData(
      {required final String address,
      required final String name,
      required final String type,
      required final double value,
      required final int transactions,
      required final DateTime lastActivity}) = _$SmartContractDataImpl;

  factory _SmartContractData.fromJson(Map<String, dynamic> json) =
      _$SmartContractDataImpl.fromJson;

  @override
  String get address;
  @override
  String get name;
  @override
  String get type;
  @override
  double get value;
  @override
  int get transactions;
  @override
  DateTime get lastActivity;

  /// Create a copy of SmartContractData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SmartContractDataImplCopyWith<_$SmartContractDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SocialMetrics _$SocialMetricsFromJson(Map<String, dynamic> json) {
  return _SocialMetrics.fromJson(json);
}

/// @nodoc
mixin _$SocialMetrics {
  int get twitterFollowers => throw _privateConstructorUsedError;
  int get twitterFollowersChange24h => throw _privateConstructorUsedError;
  int get redditSubscribers => throw _privateConstructorUsedError;
  int get redditSubscribersChange24h => throw _privateConstructorUsedError;
  double get redditScore => throw _privateConstructorUsedError;
  double get redditScoreChange24h => throw _privateConstructorUsedError;
  int get telegramMembers => throw _privateConstructorUsedError;
  int get telegramMembersChange24h => throw _privateConstructorUsedError;
  double get socialSentiment => throw _privateConstructorUsedError;
  double get socialSentimentChange24h => throw _privateConstructorUsedError;
  List<SocialPost> get trendingPosts => throw _privateConstructorUsedError;
  List<InfluencerData> get topInfluencers => throw _privateConstructorUsedError;

  /// Serializes this SocialMetrics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocialMetrics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocialMetricsCopyWith<SocialMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialMetricsCopyWith<$Res> {
  factory $SocialMetricsCopyWith(
          SocialMetrics value, $Res Function(SocialMetrics) then) =
      _$SocialMetricsCopyWithImpl<$Res, SocialMetrics>;
  @useResult
  $Res call(
      {int twitterFollowers,
      int twitterFollowersChange24h,
      int redditSubscribers,
      int redditSubscribersChange24h,
      double redditScore,
      double redditScoreChange24h,
      int telegramMembers,
      int telegramMembersChange24h,
      double socialSentiment,
      double socialSentimentChange24h,
      List<SocialPost> trendingPosts,
      List<InfluencerData> topInfluencers});
}

/// @nodoc
class _$SocialMetricsCopyWithImpl<$Res, $Val extends SocialMetrics>
    implements $SocialMetricsCopyWith<$Res> {
  _$SocialMetricsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocialMetrics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? twitterFollowers = null,
    Object? twitterFollowersChange24h = null,
    Object? redditSubscribers = null,
    Object? redditSubscribersChange24h = null,
    Object? redditScore = null,
    Object? redditScoreChange24h = null,
    Object? telegramMembers = null,
    Object? telegramMembersChange24h = null,
    Object? socialSentiment = null,
    Object? socialSentimentChange24h = null,
    Object? trendingPosts = null,
    Object? topInfluencers = null,
  }) {
    return _then(_value.copyWith(
      twitterFollowers: null == twitterFollowers
          ? _value.twitterFollowers
          : twitterFollowers // ignore: cast_nullable_to_non_nullable
              as int,
      twitterFollowersChange24h: null == twitterFollowersChange24h
          ? _value.twitterFollowersChange24h
          : twitterFollowersChange24h // ignore: cast_nullable_to_non_nullable
              as int,
      redditSubscribers: null == redditSubscribers
          ? _value.redditSubscribers
          : redditSubscribers // ignore: cast_nullable_to_non_nullable
              as int,
      redditSubscribersChange24h: null == redditSubscribersChange24h
          ? _value.redditSubscribersChange24h
          : redditSubscribersChange24h // ignore: cast_nullable_to_non_nullable
              as int,
      redditScore: null == redditScore
          ? _value.redditScore
          : redditScore // ignore: cast_nullable_to_non_nullable
              as double,
      redditScoreChange24h: null == redditScoreChange24h
          ? _value.redditScoreChange24h
          : redditScoreChange24h // ignore: cast_nullable_to_non_nullable
              as double,
      telegramMembers: null == telegramMembers
          ? _value.telegramMembers
          : telegramMembers // ignore: cast_nullable_to_non_nullable
              as int,
      telegramMembersChange24h: null == telegramMembersChange24h
          ? _value.telegramMembersChange24h
          : telegramMembersChange24h // ignore: cast_nullable_to_non_nullable
              as int,
      socialSentiment: null == socialSentiment
          ? _value.socialSentiment
          : socialSentiment // ignore: cast_nullable_to_non_nullable
              as double,
      socialSentimentChange24h: null == socialSentimentChange24h
          ? _value.socialSentimentChange24h
          : socialSentimentChange24h // ignore: cast_nullable_to_non_nullable
              as double,
      trendingPosts: null == trendingPosts
          ? _value.trendingPosts
          : trendingPosts // ignore: cast_nullable_to_non_nullable
              as List<SocialPost>,
      topInfluencers: null == topInfluencers
          ? _value.topInfluencers
          : topInfluencers // ignore: cast_nullable_to_non_nullable
              as List<InfluencerData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialMetricsImplCopyWith<$Res>
    implements $SocialMetricsCopyWith<$Res> {
  factory _$$SocialMetricsImplCopyWith(
          _$SocialMetricsImpl value, $Res Function(_$SocialMetricsImpl) then) =
      __$$SocialMetricsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int twitterFollowers,
      int twitterFollowersChange24h,
      int redditSubscribers,
      int redditSubscribersChange24h,
      double redditScore,
      double redditScoreChange24h,
      int telegramMembers,
      int telegramMembersChange24h,
      double socialSentiment,
      double socialSentimentChange24h,
      List<SocialPost> trendingPosts,
      List<InfluencerData> topInfluencers});
}

/// @nodoc
class __$$SocialMetricsImplCopyWithImpl<$Res>
    extends _$SocialMetricsCopyWithImpl<$Res, _$SocialMetricsImpl>
    implements _$$SocialMetricsImplCopyWith<$Res> {
  __$$SocialMetricsImplCopyWithImpl(
      _$SocialMetricsImpl _value, $Res Function(_$SocialMetricsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocialMetrics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? twitterFollowers = null,
    Object? twitterFollowersChange24h = null,
    Object? redditSubscribers = null,
    Object? redditSubscribersChange24h = null,
    Object? redditScore = null,
    Object? redditScoreChange24h = null,
    Object? telegramMembers = null,
    Object? telegramMembersChange24h = null,
    Object? socialSentiment = null,
    Object? socialSentimentChange24h = null,
    Object? trendingPosts = null,
    Object? topInfluencers = null,
  }) {
    return _then(_$SocialMetricsImpl(
      twitterFollowers: null == twitterFollowers
          ? _value.twitterFollowers
          : twitterFollowers // ignore: cast_nullable_to_non_nullable
              as int,
      twitterFollowersChange24h: null == twitterFollowersChange24h
          ? _value.twitterFollowersChange24h
          : twitterFollowersChange24h // ignore: cast_nullable_to_non_nullable
              as int,
      redditSubscribers: null == redditSubscribers
          ? _value.redditSubscribers
          : redditSubscribers // ignore: cast_nullable_to_non_nullable
              as int,
      redditSubscribersChange24h: null == redditSubscribersChange24h
          ? _value.redditSubscribersChange24h
          : redditSubscribersChange24h // ignore: cast_nullable_to_non_nullable
              as int,
      redditScore: null == redditScore
          ? _value.redditScore
          : redditScore // ignore: cast_nullable_to_non_nullable
              as double,
      redditScoreChange24h: null == redditScoreChange24h
          ? _value.redditScoreChange24h
          : redditScoreChange24h // ignore: cast_nullable_to_non_nullable
              as double,
      telegramMembers: null == telegramMembers
          ? _value.telegramMembers
          : telegramMembers // ignore: cast_nullable_to_non_nullable
              as int,
      telegramMembersChange24h: null == telegramMembersChange24h
          ? _value.telegramMembersChange24h
          : telegramMembersChange24h // ignore: cast_nullable_to_non_nullable
              as int,
      socialSentiment: null == socialSentiment
          ? _value.socialSentiment
          : socialSentiment // ignore: cast_nullable_to_non_nullable
              as double,
      socialSentimentChange24h: null == socialSentimentChange24h
          ? _value.socialSentimentChange24h
          : socialSentimentChange24h // ignore: cast_nullable_to_non_nullable
              as double,
      trendingPosts: null == trendingPosts
          ? _value._trendingPosts
          : trendingPosts // ignore: cast_nullable_to_non_nullable
              as List<SocialPost>,
      topInfluencers: null == topInfluencers
          ? _value._topInfluencers
          : topInfluencers // ignore: cast_nullable_to_non_nullable
              as List<InfluencerData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialMetricsImpl implements _SocialMetrics {
  const _$SocialMetricsImpl(
      {required this.twitterFollowers,
      required this.twitterFollowersChange24h,
      required this.redditSubscribers,
      required this.redditSubscribersChange24h,
      required this.redditScore,
      required this.redditScoreChange24h,
      required this.telegramMembers,
      required this.telegramMembersChange24h,
      required this.socialSentiment,
      required this.socialSentimentChange24h,
      required final List<SocialPost> trendingPosts,
      required final List<InfluencerData> topInfluencers})
      : _trendingPosts = trendingPosts,
        _topInfluencers = topInfluencers;

  factory _$SocialMetricsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialMetricsImplFromJson(json);

  @override
  final int twitterFollowers;
  @override
  final int twitterFollowersChange24h;
  @override
  final int redditSubscribers;
  @override
  final int redditSubscribersChange24h;
  @override
  final double redditScore;
  @override
  final double redditScoreChange24h;
  @override
  final int telegramMembers;
  @override
  final int telegramMembersChange24h;
  @override
  final double socialSentiment;
  @override
  final double socialSentimentChange24h;
  final List<SocialPost> _trendingPosts;
  @override
  List<SocialPost> get trendingPosts {
    if (_trendingPosts is EqualUnmodifiableListView) return _trendingPosts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendingPosts);
  }

  final List<InfluencerData> _topInfluencers;
  @override
  List<InfluencerData> get topInfluencers {
    if (_topInfluencers is EqualUnmodifiableListView) return _topInfluencers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topInfluencers);
  }

  @override
  String toString() {
    return 'SocialMetrics(twitterFollowers: $twitterFollowers, twitterFollowersChange24h: $twitterFollowersChange24h, redditSubscribers: $redditSubscribers, redditSubscribersChange24h: $redditSubscribersChange24h, redditScore: $redditScore, redditScoreChange24h: $redditScoreChange24h, telegramMembers: $telegramMembers, telegramMembersChange24h: $telegramMembersChange24h, socialSentiment: $socialSentiment, socialSentimentChange24h: $socialSentimentChange24h, trendingPosts: $trendingPosts, topInfluencers: $topInfluencers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialMetricsImpl &&
            (identical(other.twitterFollowers, twitterFollowers) ||
                other.twitterFollowers == twitterFollowers) &&
            (identical(other.twitterFollowersChange24h,
                    twitterFollowersChange24h) ||
                other.twitterFollowersChange24h == twitterFollowersChange24h) &&
            (identical(other.redditSubscribers, redditSubscribers) ||
                other.redditSubscribers == redditSubscribers) &&
            (identical(other.redditSubscribersChange24h,
                    redditSubscribersChange24h) ||
                other.redditSubscribersChange24h ==
                    redditSubscribersChange24h) &&
            (identical(other.redditScore, redditScore) ||
                other.redditScore == redditScore) &&
            (identical(other.redditScoreChange24h, redditScoreChange24h) ||
                other.redditScoreChange24h == redditScoreChange24h) &&
            (identical(other.telegramMembers, telegramMembers) ||
                other.telegramMembers == telegramMembers) &&
            (identical(
                    other.telegramMembersChange24h, telegramMembersChange24h) ||
                other.telegramMembersChange24h == telegramMembersChange24h) &&
            (identical(other.socialSentiment, socialSentiment) ||
                other.socialSentiment == socialSentiment) &&
            (identical(
                    other.socialSentimentChange24h, socialSentimentChange24h) ||
                other.socialSentimentChange24h == socialSentimentChange24h) &&
            const DeepCollectionEquality()
                .equals(other._trendingPosts, _trendingPosts) &&
            const DeepCollectionEquality()
                .equals(other._topInfluencers, _topInfluencers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      twitterFollowers,
      twitterFollowersChange24h,
      redditSubscribers,
      redditSubscribersChange24h,
      redditScore,
      redditScoreChange24h,
      telegramMembers,
      telegramMembersChange24h,
      socialSentiment,
      socialSentimentChange24h,
      const DeepCollectionEquality().hash(_trendingPosts),
      const DeepCollectionEquality().hash(_topInfluencers));

  /// Create a copy of SocialMetrics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialMetricsImplCopyWith<_$SocialMetricsImpl> get copyWith =>
      __$$SocialMetricsImplCopyWithImpl<_$SocialMetricsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialMetricsImplToJson(
      this,
    );
  }
}

abstract class _SocialMetrics implements SocialMetrics {
  const factory _SocialMetrics(
          {required final int twitterFollowers,
          required final int twitterFollowersChange24h,
          required final int redditSubscribers,
          required final int redditSubscribersChange24h,
          required final double redditScore,
          required final double redditScoreChange24h,
          required final int telegramMembers,
          required final int telegramMembersChange24h,
          required final double socialSentiment,
          required final double socialSentimentChange24h,
          required final List<SocialPost> trendingPosts,
          required final List<InfluencerData> topInfluencers}) =
      _$SocialMetricsImpl;

  factory _SocialMetrics.fromJson(Map<String, dynamic> json) =
      _$SocialMetricsImpl.fromJson;

  @override
  int get twitterFollowers;
  @override
  int get twitterFollowersChange24h;
  @override
  int get redditSubscribers;
  @override
  int get redditSubscribersChange24h;
  @override
  double get redditScore;
  @override
  double get redditScoreChange24h;
  @override
  int get telegramMembers;
  @override
  int get telegramMembersChange24h;
  @override
  double get socialSentiment;
  @override
  double get socialSentimentChange24h;
  @override
  List<SocialPost> get trendingPosts;
  @override
  List<InfluencerData> get topInfluencers;

  /// Create a copy of SocialMetrics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocialMetricsImplCopyWith<_$SocialMetricsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SocialPost _$SocialPostFromJson(Map<String, dynamic> json) {
  return _SocialPost.fromJson(json);
}

/// @nodoc
mixin _$SocialPost {
  String get id => throw _privateConstructorUsedError;
  String get platform => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;
  int get shares => throw _privateConstructorUsedError;
  int get comments => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  double get sentiment => throw _privateConstructorUsedError;

  /// Serializes this SocialPost to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocialPost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocialPostCopyWith<SocialPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialPostCopyWith<$Res> {
  factory $SocialPostCopyWith(
          SocialPost value, $Res Function(SocialPost) then) =
      _$SocialPostCopyWithImpl<$Res, SocialPost>;
  @useResult
  $Res call(
      {String id,
      String platform,
      String author,
      String content,
      int likes,
      int shares,
      int comments,
      DateTime timestamp,
      double sentiment});
}

/// @nodoc
class _$SocialPostCopyWithImpl<$Res, $Val extends SocialPost>
    implements $SocialPostCopyWith<$Res> {
  _$SocialPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocialPost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? platform = null,
    Object? author = null,
    Object? content = null,
    Object? likes = null,
    Object? shares = null,
    Object? comments = null,
    Object? timestamp = null,
    Object? sentiment = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      shares: null == shares
          ? _value.shares
          : shares // ignore: cast_nullable_to_non_nullable
              as int,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sentiment: null == sentiment
          ? _value.sentiment
          : sentiment // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialPostImplCopyWith<$Res>
    implements $SocialPostCopyWith<$Res> {
  factory _$$SocialPostImplCopyWith(
          _$SocialPostImpl value, $Res Function(_$SocialPostImpl) then) =
      __$$SocialPostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String platform,
      String author,
      String content,
      int likes,
      int shares,
      int comments,
      DateTime timestamp,
      double sentiment});
}

/// @nodoc
class __$$SocialPostImplCopyWithImpl<$Res>
    extends _$SocialPostCopyWithImpl<$Res, _$SocialPostImpl>
    implements _$$SocialPostImplCopyWith<$Res> {
  __$$SocialPostImplCopyWithImpl(
      _$SocialPostImpl _value, $Res Function(_$SocialPostImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocialPost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? platform = null,
    Object? author = null,
    Object? content = null,
    Object? likes = null,
    Object? shares = null,
    Object? comments = null,
    Object? timestamp = null,
    Object? sentiment = null,
  }) {
    return _then(_$SocialPostImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      shares: null == shares
          ? _value.shares
          : shares // ignore: cast_nullable_to_non_nullable
              as int,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sentiment: null == sentiment
          ? _value.sentiment
          : sentiment // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialPostImpl implements _SocialPost {
  const _$SocialPostImpl(
      {required this.id,
      required this.platform,
      required this.author,
      required this.content,
      required this.likes,
      required this.shares,
      required this.comments,
      required this.timestamp,
      required this.sentiment});

  factory _$SocialPostImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialPostImplFromJson(json);

  @override
  final String id;
  @override
  final String platform;
  @override
  final String author;
  @override
  final String content;
  @override
  final int likes;
  @override
  final int shares;
  @override
  final int comments;
  @override
  final DateTime timestamp;
  @override
  final double sentiment;

  @override
  String toString() {
    return 'SocialPost(id: $id, platform: $platform, author: $author, content: $content, likes: $likes, shares: $shares, comments: $comments, timestamp: $timestamp, sentiment: $sentiment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialPostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.shares, shares) || other.shares == shares) &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.sentiment, sentiment) ||
                other.sentiment == sentiment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, platform, author, content,
      likes, shares, comments, timestamp, sentiment);

  /// Create a copy of SocialPost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialPostImplCopyWith<_$SocialPostImpl> get copyWith =>
      __$$SocialPostImplCopyWithImpl<_$SocialPostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialPostImplToJson(
      this,
    );
  }
}

abstract class _SocialPost implements SocialPost {
  const factory _SocialPost(
      {required final String id,
      required final String platform,
      required final String author,
      required final String content,
      required final int likes,
      required final int shares,
      required final int comments,
      required final DateTime timestamp,
      required final double sentiment}) = _$SocialPostImpl;

  factory _SocialPost.fromJson(Map<String, dynamic> json) =
      _$SocialPostImpl.fromJson;

  @override
  String get id;
  @override
  String get platform;
  @override
  String get author;
  @override
  String get content;
  @override
  int get likes;
  @override
  int get shares;
  @override
  int get comments;
  @override
  DateTime get timestamp;
  @override
  double get sentiment;

  /// Create a copy of SocialPost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocialPostImplCopyWith<_$SocialPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InfluencerData _$InfluencerDataFromJson(Map<String, dynamic> json) {
  return _InfluencerData.fromJson(json);
}

/// @nodoc
mixin _$InfluencerData {
  String get name => throw _privateConstructorUsedError;
  String get platform => throw _privateConstructorUsedError;
  int get followers => throw _privateConstructorUsedError;
  double get influence => throw _privateConstructorUsedError;
  List<String> get recentMentions => throw _privateConstructorUsedError;

  /// Serializes this InfluencerData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InfluencerData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InfluencerDataCopyWith<InfluencerData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfluencerDataCopyWith<$Res> {
  factory $InfluencerDataCopyWith(
          InfluencerData value, $Res Function(InfluencerData) then) =
      _$InfluencerDataCopyWithImpl<$Res, InfluencerData>;
  @useResult
  $Res call(
      {String name,
      String platform,
      int followers,
      double influence,
      List<String> recentMentions});
}

/// @nodoc
class _$InfluencerDataCopyWithImpl<$Res, $Val extends InfluencerData>
    implements $InfluencerDataCopyWith<$Res> {
  _$InfluencerDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InfluencerData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? platform = null,
    Object? followers = null,
    Object? influence = null,
    Object? recentMentions = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int,
      influence: null == influence
          ? _value.influence
          : influence // ignore: cast_nullable_to_non_nullable
              as double,
      recentMentions: null == recentMentions
          ? _value.recentMentions
          : recentMentions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InfluencerDataImplCopyWith<$Res>
    implements $InfluencerDataCopyWith<$Res> {
  factory _$$InfluencerDataImplCopyWith(_$InfluencerDataImpl value,
          $Res Function(_$InfluencerDataImpl) then) =
      __$$InfluencerDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String platform,
      int followers,
      double influence,
      List<String> recentMentions});
}

/// @nodoc
class __$$InfluencerDataImplCopyWithImpl<$Res>
    extends _$InfluencerDataCopyWithImpl<$Res, _$InfluencerDataImpl>
    implements _$$InfluencerDataImplCopyWith<$Res> {
  __$$InfluencerDataImplCopyWithImpl(
      _$InfluencerDataImpl _value, $Res Function(_$InfluencerDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of InfluencerData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? platform = null,
    Object? followers = null,
    Object? influence = null,
    Object? recentMentions = null,
  }) {
    return _then(_$InfluencerDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int,
      influence: null == influence
          ? _value.influence
          : influence // ignore: cast_nullable_to_non_nullable
              as double,
      recentMentions: null == recentMentions
          ? _value._recentMentions
          : recentMentions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InfluencerDataImpl implements _InfluencerData {
  const _$InfluencerDataImpl(
      {required this.name,
      required this.platform,
      required this.followers,
      required this.influence,
      required final List<String> recentMentions})
      : _recentMentions = recentMentions;

  factory _$InfluencerDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$InfluencerDataImplFromJson(json);

  @override
  final String name;
  @override
  final String platform;
  @override
  final int followers;
  @override
  final double influence;
  final List<String> _recentMentions;
  @override
  List<String> get recentMentions {
    if (_recentMentions is EqualUnmodifiableListView) return _recentMentions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentMentions);
  }

  @override
  String toString() {
    return 'InfluencerData(name: $name, platform: $platform, followers: $followers, influence: $influence, recentMentions: $recentMentions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfluencerDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.followers, followers) ||
                other.followers == followers) &&
            (identical(other.influence, influence) ||
                other.influence == influence) &&
            const DeepCollectionEquality()
                .equals(other._recentMentions, _recentMentions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, platform, followers,
      influence, const DeepCollectionEquality().hash(_recentMentions));

  /// Create a copy of InfluencerData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InfluencerDataImplCopyWith<_$InfluencerDataImpl> get copyWith =>
      __$$InfluencerDataImplCopyWithImpl<_$InfluencerDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InfluencerDataImplToJson(
      this,
    );
  }
}

abstract class _InfluencerData implements InfluencerData {
  const factory _InfluencerData(
      {required final String name,
      required final String platform,
      required final int followers,
      required final double influence,
      required final List<String> recentMentions}) = _$InfluencerDataImpl;

  factory _InfluencerData.fromJson(Map<String, dynamic> json) =
      _$InfluencerDataImpl.fromJson;

  @override
  String get name;
  @override
  String get platform;
  @override
  int get followers;
  @override
  double get influence;
  @override
  List<String> get recentMentions;

  /// Create a copy of InfluencerData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InfluencerDataImplCopyWith<_$InfluencerDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeveloperMetrics _$DeveloperMetricsFromJson(Map<String, dynamic> json) {
  return _DeveloperMetrics.fromJson(json);
}

/// @nodoc
mixin _$DeveloperMetrics {
  int get githubCommits => throw _privateConstructorUsedError;
  int get githubCommitsChange24h => throw _privateConstructorUsedError;
  int get githubContributors => throw _privateConstructorUsedError;
  int get githubContributorsChange24h => throw _privateConstructorUsedError;
  int get githubStars => throw _privateConstructorUsedError;
  int get githubForks => throw _privateConstructorUsedError;
  int get githubIssues => throw _privateConstructorUsedError;
  int get githubPullRequests => throw _privateConstructorUsedError;
  List<RepositoryData> get topRepositories =>
      throw _privateConstructorUsedError;
  List<DeveloperData> get topDevelopers => throw _privateConstructorUsedError;

  /// Serializes this DeveloperMetrics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeveloperMetrics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeveloperMetricsCopyWith<DeveloperMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeveloperMetricsCopyWith<$Res> {
  factory $DeveloperMetricsCopyWith(
          DeveloperMetrics value, $Res Function(DeveloperMetrics) then) =
      _$DeveloperMetricsCopyWithImpl<$Res, DeveloperMetrics>;
  @useResult
  $Res call(
      {int githubCommits,
      int githubCommitsChange24h,
      int githubContributors,
      int githubContributorsChange24h,
      int githubStars,
      int githubForks,
      int githubIssues,
      int githubPullRequests,
      List<RepositoryData> topRepositories,
      List<DeveloperData> topDevelopers});
}

/// @nodoc
class _$DeveloperMetricsCopyWithImpl<$Res, $Val extends DeveloperMetrics>
    implements $DeveloperMetricsCopyWith<$Res> {
  _$DeveloperMetricsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeveloperMetrics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? githubCommits = null,
    Object? githubCommitsChange24h = null,
    Object? githubContributors = null,
    Object? githubContributorsChange24h = null,
    Object? githubStars = null,
    Object? githubForks = null,
    Object? githubIssues = null,
    Object? githubPullRequests = null,
    Object? topRepositories = null,
    Object? topDevelopers = null,
  }) {
    return _then(_value.copyWith(
      githubCommits: null == githubCommits
          ? _value.githubCommits
          : githubCommits // ignore: cast_nullable_to_non_nullable
              as int,
      githubCommitsChange24h: null == githubCommitsChange24h
          ? _value.githubCommitsChange24h
          : githubCommitsChange24h // ignore: cast_nullable_to_non_nullable
              as int,
      githubContributors: null == githubContributors
          ? _value.githubContributors
          : githubContributors // ignore: cast_nullable_to_non_nullable
              as int,
      githubContributorsChange24h: null == githubContributorsChange24h
          ? _value.githubContributorsChange24h
          : githubContributorsChange24h // ignore: cast_nullable_to_non_nullable
              as int,
      githubStars: null == githubStars
          ? _value.githubStars
          : githubStars // ignore: cast_nullable_to_non_nullable
              as int,
      githubForks: null == githubForks
          ? _value.githubForks
          : githubForks // ignore: cast_nullable_to_non_nullable
              as int,
      githubIssues: null == githubIssues
          ? _value.githubIssues
          : githubIssues // ignore: cast_nullable_to_non_nullable
              as int,
      githubPullRequests: null == githubPullRequests
          ? _value.githubPullRequests
          : githubPullRequests // ignore: cast_nullable_to_non_nullable
              as int,
      topRepositories: null == topRepositories
          ? _value.topRepositories
          : topRepositories // ignore: cast_nullable_to_non_nullable
              as List<RepositoryData>,
      topDevelopers: null == topDevelopers
          ? _value.topDevelopers
          : topDevelopers // ignore: cast_nullable_to_non_nullable
              as List<DeveloperData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeveloperMetricsImplCopyWith<$Res>
    implements $DeveloperMetricsCopyWith<$Res> {
  factory _$$DeveloperMetricsImplCopyWith(_$DeveloperMetricsImpl value,
          $Res Function(_$DeveloperMetricsImpl) then) =
      __$$DeveloperMetricsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int githubCommits,
      int githubCommitsChange24h,
      int githubContributors,
      int githubContributorsChange24h,
      int githubStars,
      int githubForks,
      int githubIssues,
      int githubPullRequests,
      List<RepositoryData> topRepositories,
      List<DeveloperData> topDevelopers});
}

/// @nodoc
class __$$DeveloperMetricsImplCopyWithImpl<$Res>
    extends _$DeveloperMetricsCopyWithImpl<$Res, _$DeveloperMetricsImpl>
    implements _$$DeveloperMetricsImplCopyWith<$Res> {
  __$$DeveloperMetricsImplCopyWithImpl(_$DeveloperMetricsImpl _value,
      $Res Function(_$DeveloperMetricsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeveloperMetrics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? githubCommits = null,
    Object? githubCommitsChange24h = null,
    Object? githubContributors = null,
    Object? githubContributorsChange24h = null,
    Object? githubStars = null,
    Object? githubForks = null,
    Object? githubIssues = null,
    Object? githubPullRequests = null,
    Object? topRepositories = null,
    Object? topDevelopers = null,
  }) {
    return _then(_$DeveloperMetricsImpl(
      githubCommits: null == githubCommits
          ? _value.githubCommits
          : githubCommits // ignore: cast_nullable_to_non_nullable
              as int,
      githubCommitsChange24h: null == githubCommitsChange24h
          ? _value.githubCommitsChange24h
          : githubCommitsChange24h // ignore: cast_nullable_to_non_nullable
              as int,
      githubContributors: null == githubContributors
          ? _value.githubContributors
          : githubContributors // ignore: cast_nullable_to_non_nullable
              as int,
      githubContributorsChange24h: null == githubContributorsChange24h
          ? _value.githubContributorsChange24h
          : githubContributorsChange24h // ignore: cast_nullable_to_non_nullable
              as int,
      githubStars: null == githubStars
          ? _value.githubStars
          : githubStars // ignore: cast_nullable_to_non_nullable
              as int,
      githubForks: null == githubForks
          ? _value.githubForks
          : githubForks // ignore: cast_nullable_to_non_nullable
              as int,
      githubIssues: null == githubIssues
          ? _value.githubIssues
          : githubIssues // ignore: cast_nullable_to_non_nullable
              as int,
      githubPullRequests: null == githubPullRequests
          ? _value.githubPullRequests
          : githubPullRequests // ignore: cast_nullable_to_non_nullable
              as int,
      topRepositories: null == topRepositories
          ? _value._topRepositories
          : topRepositories // ignore: cast_nullable_to_non_nullable
              as List<RepositoryData>,
      topDevelopers: null == topDevelopers
          ? _value._topDevelopers
          : topDevelopers // ignore: cast_nullable_to_non_nullable
              as List<DeveloperData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeveloperMetricsImpl implements _DeveloperMetrics {
  const _$DeveloperMetricsImpl(
      {required this.githubCommits,
      required this.githubCommitsChange24h,
      required this.githubContributors,
      required this.githubContributorsChange24h,
      required this.githubStars,
      required this.githubForks,
      required this.githubIssues,
      required this.githubPullRequests,
      required final List<RepositoryData> topRepositories,
      required final List<DeveloperData> topDevelopers})
      : _topRepositories = topRepositories,
        _topDevelopers = topDevelopers;

  factory _$DeveloperMetricsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeveloperMetricsImplFromJson(json);

  @override
  final int githubCommits;
  @override
  final int githubCommitsChange24h;
  @override
  final int githubContributors;
  @override
  final int githubContributorsChange24h;
  @override
  final int githubStars;
  @override
  final int githubForks;
  @override
  final int githubIssues;
  @override
  final int githubPullRequests;
  final List<RepositoryData> _topRepositories;
  @override
  List<RepositoryData> get topRepositories {
    if (_topRepositories is EqualUnmodifiableListView) return _topRepositories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topRepositories);
  }

  final List<DeveloperData> _topDevelopers;
  @override
  List<DeveloperData> get topDevelopers {
    if (_topDevelopers is EqualUnmodifiableListView) return _topDevelopers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topDevelopers);
  }

  @override
  String toString() {
    return 'DeveloperMetrics(githubCommits: $githubCommits, githubCommitsChange24h: $githubCommitsChange24h, githubContributors: $githubContributors, githubContributorsChange24h: $githubContributorsChange24h, githubStars: $githubStars, githubForks: $githubForks, githubIssues: $githubIssues, githubPullRequests: $githubPullRequests, topRepositories: $topRepositories, topDevelopers: $topDevelopers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeveloperMetricsImpl &&
            (identical(other.githubCommits, githubCommits) ||
                other.githubCommits == githubCommits) &&
            (identical(other.githubCommitsChange24h, githubCommitsChange24h) ||
                other.githubCommitsChange24h == githubCommitsChange24h) &&
            (identical(other.githubContributors, githubContributors) ||
                other.githubContributors == githubContributors) &&
            (identical(other.githubContributorsChange24h,
                    githubContributorsChange24h) ||
                other.githubContributorsChange24h ==
                    githubContributorsChange24h) &&
            (identical(other.githubStars, githubStars) ||
                other.githubStars == githubStars) &&
            (identical(other.githubForks, githubForks) ||
                other.githubForks == githubForks) &&
            (identical(other.githubIssues, githubIssues) ||
                other.githubIssues == githubIssues) &&
            (identical(other.githubPullRequests, githubPullRequests) ||
                other.githubPullRequests == githubPullRequests) &&
            const DeepCollectionEquality()
                .equals(other._topRepositories, _topRepositories) &&
            const DeepCollectionEquality()
                .equals(other._topDevelopers, _topDevelopers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      githubCommits,
      githubCommitsChange24h,
      githubContributors,
      githubContributorsChange24h,
      githubStars,
      githubForks,
      githubIssues,
      githubPullRequests,
      const DeepCollectionEquality().hash(_topRepositories),
      const DeepCollectionEquality().hash(_topDevelopers));

  /// Create a copy of DeveloperMetrics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeveloperMetricsImplCopyWith<_$DeveloperMetricsImpl> get copyWith =>
      __$$DeveloperMetricsImplCopyWithImpl<_$DeveloperMetricsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeveloperMetricsImplToJson(
      this,
    );
  }
}

abstract class _DeveloperMetrics implements DeveloperMetrics {
  const factory _DeveloperMetrics(
          {required final int githubCommits,
          required final int githubCommitsChange24h,
          required final int githubContributors,
          required final int githubContributorsChange24h,
          required final int githubStars,
          required final int githubForks,
          required final int githubIssues,
          required final int githubPullRequests,
          required final List<RepositoryData> topRepositories,
          required final List<DeveloperData> topDevelopers}) =
      _$DeveloperMetricsImpl;

  factory _DeveloperMetrics.fromJson(Map<String, dynamic> json) =
      _$DeveloperMetricsImpl.fromJson;

  @override
  int get githubCommits;
  @override
  int get githubCommitsChange24h;
  @override
  int get githubContributors;
  @override
  int get githubContributorsChange24h;
  @override
  int get githubStars;
  @override
  int get githubForks;
  @override
  int get githubIssues;
  @override
  int get githubPullRequests;
  @override
  List<RepositoryData> get topRepositories;
  @override
  List<DeveloperData> get topDevelopers;

  /// Create a copy of DeveloperMetrics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeveloperMetricsImplCopyWith<_$DeveloperMetricsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RepositoryData _$RepositoryDataFromJson(Map<String, dynamic> json) {
  return _RepositoryData.fromJson(json);
}

/// @nodoc
mixin _$RepositoryData {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  int get stars => throw _privateConstructorUsedError;
  int get forks => throw _privateConstructorUsedError;
  int get issues => throw _privateConstructorUsedError;
  int get pullRequests => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;

  /// Serializes this RepositoryData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RepositoryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RepositoryDataCopyWith<RepositoryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryDataCopyWith<$Res> {
  factory $RepositoryDataCopyWith(
          RepositoryData value, $Res Function(RepositoryData) then) =
      _$RepositoryDataCopyWithImpl<$Res, RepositoryData>;
  @useResult
  $Res call(
      {String name,
      String url,
      int stars,
      int forks,
      int issues,
      int pullRequests,
      DateTime lastUpdated,
      String language});
}

/// @nodoc
class _$RepositoryDataCopyWithImpl<$Res, $Val extends RepositoryData>
    implements $RepositoryDataCopyWith<$Res> {
  _$RepositoryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RepositoryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
    Object? stars = null,
    Object? forks = null,
    Object? issues = null,
    Object? pullRequests = null,
    Object? lastUpdated = null,
    Object? language = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      stars: null == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as int,
      forks: null == forks
          ? _value.forks
          : forks // ignore: cast_nullable_to_non_nullable
              as int,
      issues: null == issues
          ? _value.issues
          : issues // ignore: cast_nullable_to_non_nullable
              as int,
      pullRequests: null == pullRequests
          ? _value.pullRequests
          : pullRequests // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepositoryDataImplCopyWith<$Res>
    implements $RepositoryDataCopyWith<$Res> {
  factory _$$RepositoryDataImplCopyWith(_$RepositoryDataImpl value,
          $Res Function(_$RepositoryDataImpl) then) =
      __$$RepositoryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String url,
      int stars,
      int forks,
      int issues,
      int pullRequests,
      DateTime lastUpdated,
      String language});
}

/// @nodoc
class __$$RepositoryDataImplCopyWithImpl<$Res>
    extends _$RepositoryDataCopyWithImpl<$Res, _$RepositoryDataImpl>
    implements _$$RepositoryDataImplCopyWith<$Res> {
  __$$RepositoryDataImplCopyWithImpl(
      _$RepositoryDataImpl _value, $Res Function(_$RepositoryDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of RepositoryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
    Object? stars = null,
    Object? forks = null,
    Object? issues = null,
    Object? pullRequests = null,
    Object? lastUpdated = null,
    Object? language = null,
  }) {
    return _then(_$RepositoryDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      stars: null == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as int,
      forks: null == forks
          ? _value.forks
          : forks // ignore: cast_nullable_to_non_nullable
              as int,
      issues: null == issues
          ? _value.issues
          : issues // ignore: cast_nullable_to_non_nullable
              as int,
      pullRequests: null == pullRequests
          ? _value.pullRequests
          : pullRequests // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepositoryDataImpl implements _RepositoryData {
  const _$RepositoryDataImpl(
      {required this.name,
      required this.url,
      required this.stars,
      required this.forks,
      required this.issues,
      required this.pullRequests,
      required this.lastUpdated,
      required this.language});

  factory _$RepositoryDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepositoryDataImplFromJson(json);

  @override
  final String name;
  @override
  final String url;
  @override
  final int stars;
  @override
  final int forks;
  @override
  final int issues;
  @override
  final int pullRequests;
  @override
  final DateTime lastUpdated;
  @override
  final String language;

  @override
  String toString() {
    return 'RepositoryData(name: $name, url: $url, stars: $stars, forks: $forks, issues: $issues, pullRequests: $pullRequests, lastUpdated: $lastUpdated, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositoryDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.stars, stars) || other.stars == stars) &&
            (identical(other.forks, forks) || other.forks == forks) &&
            (identical(other.issues, issues) || other.issues == issues) &&
            (identical(other.pullRequests, pullRequests) ||
                other.pullRequests == pullRequests) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url, stars, forks, issues,
      pullRequests, lastUpdated, language);

  /// Create a copy of RepositoryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RepositoryDataImplCopyWith<_$RepositoryDataImpl> get copyWith =>
      __$$RepositoryDataImplCopyWithImpl<_$RepositoryDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepositoryDataImplToJson(
      this,
    );
  }
}

abstract class _RepositoryData implements RepositoryData {
  const factory _RepositoryData(
      {required final String name,
      required final String url,
      required final int stars,
      required final int forks,
      required final int issues,
      required final int pullRequests,
      required final DateTime lastUpdated,
      required final String language}) = _$RepositoryDataImpl;

  factory _RepositoryData.fromJson(Map<String, dynamic> json) =
      _$RepositoryDataImpl.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  int get stars;
  @override
  int get forks;
  @override
  int get issues;
  @override
  int get pullRequests;
  @override
  DateTime get lastUpdated;
  @override
  String get language;

  /// Create a copy of RepositoryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RepositoryDataImplCopyWith<_$RepositoryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeveloperData _$DeveloperDataFromJson(Map<String, dynamic> json) {
  return _DeveloperData.fromJson(json);
}

/// @nodoc
mixin _$DeveloperData {
  String get name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  int get contributions => throw _privateConstructorUsedError;
  List<String> get repositories => throw _privateConstructorUsedError;
  DateTime get lastActivity => throw _privateConstructorUsedError;

  /// Serializes this DeveloperData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeveloperData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeveloperDataCopyWith<DeveloperData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeveloperDataCopyWith<$Res> {
  factory $DeveloperDataCopyWith(
          DeveloperData value, $Res Function(DeveloperData) then) =
      _$DeveloperDataCopyWithImpl<$Res, DeveloperData>;
  @useResult
  $Res call(
      {String name,
      String username,
      int contributions,
      List<String> repositories,
      DateTime lastActivity});
}

/// @nodoc
class _$DeveloperDataCopyWithImpl<$Res, $Val extends DeveloperData>
    implements $DeveloperDataCopyWith<$Res> {
  _$DeveloperDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeveloperData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? username = null,
    Object? contributions = null,
    Object? repositories = null,
    Object? lastActivity = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      contributions: null == contributions
          ? _value.contributions
          : contributions // ignore: cast_nullable_to_non_nullable
              as int,
      repositories: null == repositories
          ? _value.repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lastActivity: null == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeveloperDataImplCopyWith<$Res>
    implements $DeveloperDataCopyWith<$Res> {
  factory _$$DeveloperDataImplCopyWith(
          _$DeveloperDataImpl value, $Res Function(_$DeveloperDataImpl) then) =
      __$$DeveloperDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String username,
      int contributions,
      List<String> repositories,
      DateTime lastActivity});
}

/// @nodoc
class __$$DeveloperDataImplCopyWithImpl<$Res>
    extends _$DeveloperDataCopyWithImpl<$Res, _$DeveloperDataImpl>
    implements _$$DeveloperDataImplCopyWith<$Res> {
  __$$DeveloperDataImplCopyWithImpl(
      _$DeveloperDataImpl _value, $Res Function(_$DeveloperDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeveloperData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? username = null,
    Object? contributions = null,
    Object? repositories = null,
    Object? lastActivity = null,
  }) {
    return _then(_$DeveloperDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      contributions: null == contributions
          ? _value.contributions
          : contributions // ignore: cast_nullable_to_non_nullable
              as int,
      repositories: null == repositories
          ? _value._repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lastActivity: null == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeveloperDataImpl implements _DeveloperData {
  const _$DeveloperDataImpl(
      {required this.name,
      required this.username,
      required this.contributions,
      required final List<String> repositories,
      required this.lastActivity})
      : _repositories = repositories;

  factory _$DeveloperDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeveloperDataImplFromJson(json);

  @override
  final String name;
  @override
  final String username;
  @override
  final int contributions;
  final List<String> _repositories;
  @override
  List<String> get repositories {
    if (_repositories is EqualUnmodifiableListView) return _repositories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_repositories);
  }

  @override
  final DateTime lastActivity;

  @override
  String toString() {
    return 'DeveloperData(name: $name, username: $username, contributions: $contributions, repositories: $repositories, lastActivity: $lastActivity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeveloperDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.contributions, contributions) ||
                other.contributions == contributions) &&
            const DeepCollectionEquality()
                .equals(other._repositories, _repositories) &&
            (identical(other.lastActivity, lastActivity) ||
                other.lastActivity == lastActivity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, username, contributions,
      const DeepCollectionEquality().hash(_repositories), lastActivity);

  /// Create a copy of DeveloperData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeveloperDataImplCopyWith<_$DeveloperDataImpl> get copyWith =>
      __$$DeveloperDataImplCopyWithImpl<_$DeveloperDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeveloperDataImplToJson(
      this,
    );
  }
}

abstract class _DeveloperData implements DeveloperData {
  const factory _DeveloperData(
      {required final String name,
      required final String username,
      required final int contributions,
      required final List<String> repositories,
      required final DateTime lastActivity}) = _$DeveloperDataImpl;

  factory _DeveloperData.fromJson(Map<String, dynamic> json) =
      _$DeveloperDataImpl.fromJson;

  @override
  String get name;
  @override
  String get username;
  @override
  int get contributions;
  @override
  List<String> get repositories;
  @override
  DateTime get lastActivity;

  /// Create a copy of DeveloperData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeveloperDataImplCopyWith<_$DeveloperDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExchangeData _$ExchangeDataFromJson(Map<String, dynamic> json) {
  return _ExchangeData.fromJson(json);
}

/// @nodoc
mixin _$ExchangeData {
  String get exchange => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get volume24h => throw _privateConstructorUsedError;
  double get volume24hChange => throw _privateConstructorUsedError;
  double get bid => throw _privateConstructorUsedError;
  double get ask => throw _privateConstructorUsedError;
  double get spread => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;

  /// Serializes this ExchangeData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExchangeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExchangeDataCopyWith<ExchangeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeDataCopyWith<$Res> {
  factory $ExchangeDataCopyWith(
          ExchangeData value, $Res Function(ExchangeData) then) =
      _$ExchangeDataCopyWithImpl<$Res, ExchangeData>;
  @useResult
  $Res call(
      {String exchange,
      double price,
      double volume24h,
      double volume24hChange,
      double bid,
      double ask,
      double spread,
      DateTime lastUpdated});
}

/// @nodoc
class _$ExchangeDataCopyWithImpl<$Res, $Val extends ExchangeData>
    implements $ExchangeDataCopyWith<$Res> {
  _$ExchangeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExchangeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exchange = null,
    Object? price = null,
    Object? volume24h = null,
    Object? volume24hChange = null,
    Object? bid = null,
    Object? ask = null,
    Object? spread = null,
    Object? lastUpdated = null,
  }) {
    return _then(_value.copyWith(
      exchange: null == exchange
          ? _value.exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      volume24h: null == volume24h
          ? _value.volume24h
          : volume24h // ignore: cast_nullable_to_non_nullable
              as double,
      volume24hChange: null == volume24hChange
          ? _value.volume24hChange
          : volume24hChange // ignore: cast_nullable_to_non_nullable
              as double,
      bid: null == bid
          ? _value.bid
          : bid // ignore: cast_nullable_to_non_nullable
              as double,
      ask: null == ask
          ? _value.ask
          : ask // ignore: cast_nullable_to_non_nullable
              as double,
      spread: null == spread
          ? _value.spread
          : spread // ignore: cast_nullable_to_non_nullable
              as double,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExchangeDataImplCopyWith<$Res>
    implements $ExchangeDataCopyWith<$Res> {
  factory _$$ExchangeDataImplCopyWith(
          _$ExchangeDataImpl value, $Res Function(_$ExchangeDataImpl) then) =
      __$$ExchangeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String exchange,
      double price,
      double volume24h,
      double volume24hChange,
      double bid,
      double ask,
      double spread,
      DateTime lastUpdated});
}

/// @nodoc
class __$$ExchangeDataImplCopyWithImpl<$Res>
    extends _$ExchangeDataCopyWithImpl<$Res, _$ExchangeDataImpl>
    implements _$$ExchangeDataImplCopyWith<$Res> {
  __$$ExchangeDataImplCopyWithImpl(
      _$ExchangeDataImpl _value, $Res Function(_$ExchangeDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExchangeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exchange = null,
    Object? price = null,
    Object? volume24h = null,
    Object? volume24hChange = null,
    Object? bid = null,
    Object? ask = null,
    Object? spread = null,
    Object? lastUpdated = null,
  }) {
    return _then(_$ExchangeDataImpl(
      exchange: null == exchange
          ? _value.exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      volume24h: null == volume24h
          ? _value.volume24h
          : volume24h // ignore: cast_nullable_to_non_nullable
              as double,
      volume24hChange: null == volume24hChange
          ? _value.volume24hChange
          : volume24hChange // ignore: cast_nullable_to_non_nullable
              as double,
      bid: null == bid
          ? _value.bid
          : bid // ignore: cast_nullable_to_non_nullable
              as double,
      ask: null == ask
          ? _value.ask
          : ask // ignore: cast_nullable_to_non_nullable
              as double,
      spread: null == spread
          ? _value.spread
          : spread // ignore: cast_nullable_to_non_nullable
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
class _$ExchangeDataImpl implements _ExchangeData {
  const _$ExchangeDataImpl(
      {required this.exchange,
      required this.price,
      required this.volume24h,
      required this.volume24hChange,
      required this.bid,
      required this.ask,
      required this.spread,
      required this.lastUpdated});

  factory _$ExchangeDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExchangeDataImplFromJson(json);

  @override
  final String exchange;
  @override
  final double price;
  @override
  final double volume24h;
  @override
  final double volume24hChange;
  @override
  final double bid;
  @override
  final double ask;
  @override
  final double spread;
  @override
  final DateTime lastUpdated;

  @override
  String toString() {
    return 'ExchangeData(exchange: $exchange, price: $price, volume24h: $volume24h, volume24hChange: $volume24hChange, bid: $bid, ask: $ask, spread: $spread, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExchangeDataImpl &&
            (identical(other.exchange, exchange) ||
                other.exchange == exchange) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.volume24h, volume24h) ||
                other.volume24h == volume24h) &&
            (identical(other.volume24hChange, volume24hChange) ||
                other.volume24hChange == volume24hChange) &&
            (identical(other.bid, bid) || other.bid == bid) &&
            (identical(other.ask, ask) || other.ask == ask) &&
            (identical(other.spread, spread) || other.spread == spread) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, exchange, price, volume24h,
      volume24hChange, bid, ask, spread, lastUpdated);

  /// Create a copy of ExchangeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExchangeDataImplCopyWith<_$ExchangeDataImpl> get copyWith =>
      __$$ExchangeDataImplCopyWithImpl<_$ExchangeDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExchangeDataImplToJson(
      this,
    );
  }
}

abstract class _ExchangeData implements ExchangeData {
  const factory _ExchangeData(
      {required final String exchange,
      required final double price,
      required final double volume24h,
      required final double volume24hChange,
      required final double bid,
      required final double ask,
      required final double spread,
      required final DateTime lastUpdated}) = _$ExchangeDataImpl;

  factory _ExchangeData.fromJson(Map<String, dynamic> json) =
      _$ExchangeDataImpl.fromJson;

  @override
  String get exchange;
  @override
  double get price;
  @override
  double get volume24h;
  @override
  double get volume24hChange;
  @override
  double get bid;
  @override
  double get ask;
  @override
  double get spread;
  @override
  DateTime get lastUpdated;

  /// Create a copy of ExchangeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExchangeDataImplCopyWith<_$ExchangeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WalletData _$WalletDataFromJson(Map<String, dynamic> json) {
  return _WalletData.fromJson(json);
}

/// @nodoc
mixin _$WalletData {
  String get address => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;
  double get balanceChange24h => throw _privateConstructorUsedError;
  List<TransactionData> get recentTransactions =>
      throw _privateConstructorUsedError;
  DateTime get lastActivity => throw _privateConstructorUsedError;

  /// Serializes this WalletData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WalletData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletDataCopyWith<WalletData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletDataCopyWith<$Res> {
  factory $WalletDataCopyWith(
          WalletData value, $Res Function(WalletData) then) =
      _$WalletDataCopyWithImpl<$Res, WalletData>;
  @useResult
  $Res call(
      {String address,
      String label,
      double balance,
      double balanceChange24h,
      List<TransactionData> recentTransactions,
      DateTime lastActivity});
}

/// @nodoc
class _$WalletDataCopyWithImpl<$Res, $Val extends WalletData>
    implements $WalletDataCopyWith<$Res> {
  _$WalletDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? label = null,
    Object? balance = null,
    Object? balanceChange24h = null,
    Object? recentTransactions = null,
    Object? lastActivity = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      balanceChange24h: null == balanceChange24h
          ? _value.balanceChange24h
          : balanceChange24h // ignore: cast_nullable_to_non_nullable
              as double,
      recentTransactions: null == recentTransactions
          ? _value.recentTransactions
          : recentTransactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionData>,
      lastActivity: null == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletDataImplCopyWith<$Res>
    implements $WalletDataCopyWith<$Res> {
  factory _$$WalletDataImplCopyWith(
          _$WalletDataImpl value, $Res Function(_$WalletDataImpl) then) =
      __$$WalletDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String address,
      String label,
      double balance,
      double balanceChange24h,
      List<TransactionData> recentTransactions,
      DateTime lastActivity});
}

/// @nodoc
class __$$WalletDataImplCopyWithImpl<$Res>
    extends _$WalletDataCopyWithImpl<$Res, _$WalletDataImpl>
    implements _$$WalletDataImplCopyWith<$Res> {
  __$$WalletDataImplCopyWithImpl(
      _$WalletDataImpl _value, $Res Function(_$WalletDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? label = null,
    Object? balance = null,
    Object? balanceChange24h = null,
    Object? recentTransactions = null,
    Object? lastActivity = null,
  }) {
    return _then(_$WalletDataImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      balanceChange24h: null == balanceChange24h
          ? _value.balanceChange24h
          : balanceChange24h // ignore: cast_nullable_to_non_nullable
              as double,
      recentTransactions: null == recentTransactions
          ? _value._recentTransactions
          : recentTransactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionData>,
      lastActivity: null == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletDataImpl implements _WalletData {
  const _$WalletDataImpl(
      {required this.address,
      required this.label,
      required this.balance,
      required this.balanceChange24h,
      required final List<TransactionData> recentTransactions,
      required this.lastActivity})
      : _recentTransactions = recentTransactions;

  factory _$WalletDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletDataImplFromJson(json);

  @override
  final String address;
  @override
  final String label;
  @override
  final double balance;
  @override
  final double balanceChange24h;
  final List<TransactionData> _recentTransactions;
  @override
  List<TransactionData> get recentTransactions {
    if (_recentTransactions is EqualUnmodifiableListView)
      return _recentTransactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentTransactions);
  }

  @override
  final DateTime lastActivity;

  @override
  String toString() {
    return 'WalletData(address: $address, label: $label, balance: $balance, balanceChange24h: $balanceChange24h, recentTransactions: $recentTransactions, lastActivity: $lastActivity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletDataImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.balanceChange24h, balanceChange24h) ||
                other.balanceChange24h == balanceChange24h) &&
            const DeepCollectionEquality()
                .equals(other._recentTransactions, _recentTransactions) &&
            (identical(other.lastActivity, lastActivity) ||
                other.lastActivity == lastActivity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      address,
      label,
      balance,
      balanceChange24h,
      const DeepCollectionEquality().hash(_recentTransactions),
      lastActivity);

  /// Create a copy of WalletData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletDataImplCopyWith<_$WalletDataImpl> get copyWith =>
      __$$WalletDataImplCopyWithImpl<_$WalletDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletDataImplToJson(
      this,
    );
  }
}

abstract class _WalletData implements WalletData {
  const factory _WalletData(
      {required final String address,
      required final String label,
      required final double balance,
      required final double balanceChange24h,
      required final List<TransactionData> recentTransactions,
      required final DateTime lastActivity}) = _$WalletDataImpl;

  factory _WalletData.fromJson(Map<String, dynamic> json) =
      _$WalletDataImpl.fromJson;

  @override
  String get address;
  @override
  String get label;
  @override
  double get balance;
  @override
  double get balanceChange24h;
  @override
  List<TransactionData> get recentTransactions;
  @override
  DateTime get lastActivity;

  /// Create a copy of WalletData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletDataImplCopyWith<_$WalletDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NetworkMetrics _$NetworkMetricsFromJson(Map<String, dynamic> json) {
  return _NetworkMetrics.fromJson(json);
}

/// @nodoc
mixin _$NetworkMetrics {
  double get hashRate => throw _privateConstructorUsedError;
  double get hashRateChange24h => throw _privateConstructorUsedError;
  double get difficulty => throw _privateConstructorUsedError;
  double get difficultyChange24h => throw _privateConstructorUsedError;
  int get blockHeight => throw _privateConstructorUsedError;
  double get blockTime => throw _privateConstructorUsedError;
  double get blockSize => throw _privateConstructorUsedError;
  List<NodeData> get nodes => throw _privateConstructorUsedError;

  /// Serializes this NetworkMetrics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NetworkMetrics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NetworkMetricsCopyWith<NetworkMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkMetricsCopyWith<$Res> {
  factory $NetworkMetricsCopyWith(
          NetworkMetrics value, $Res Function(NetworkMetrics) then) =
      _$NetworkMetricsCopyWithImpl<$Res, NetworkMetrics>;
  @useResult
  $Res call(
      {double hashRate,
      double hashRateChange24h,
      double difficulty,
      double difficultyChange24h,
      int blockHeight,
      double blockTime,
      double blockSize,
      List<NodeData> nodes});
}

/// @nodoc
class _$NetworkMetricsCopyWithImpl<$Res, $Val extends NetworkMetrics>
    implements $NetworkMetricsCopyWith<$Res> {
  _$NetworkMetricsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NetworkMetrics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hashRate = null,
    Object? hashRateChange24h = null,
    Object? difficulty = null,
    Object? difficultyChange24h = null,
    Object? blockHeight = null,
    Object? blockTime = null,
    Object? blockSize = null,
    Object? nodes = null,
  }) {
    return _then(_value.copyWith(
      hashRate: null == hashRate
          ? _value.hashRate
          : hashRate // ignore: cast_nullable_to_non_nullable
              as double,
      hashRateChange24h: null == hashRateChange24h
          ? _value.hashRateChange24h
          : hashRateChange24h // ignore: cast_nullable_to_non_nullable
              as double,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as double,
      difficultyChange24h: null == difficultyChange24h
          ? _value.difficultyChange24h
          : difficultyChange24h // ignore: cast_nullable_to_non_nullable
              as double,
      blockHeight: null == blockHeight
          ? _value.blockHeight
          : blockHeight // ignore: cast_nullable_to_non_nullable
              as int,
      blockTime: null == blockTime
          ? _value.blockTime
          : blockTime // ignore: cast_nullable_to_non_nullable
              as double,
      blockSize: null == blockSize
          ? _value.blockSize
          : blockSize // ignore: cast_nullable_to_non_nullable
              as double,
      nodes: null == nodes
          ? _value.nodes
          : nodes // ignore: cast_nullable_to_non_nullable
              as List<NodeData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NetworkMetricsImplCopyWith<$Res>
    implements $NetworkMetricsCopyWith<$Res> {
  factory _$$NetworkMetricsImplCopyWith(_$NetworkMetricsImpl value,
          $Res Function(_$NetworkMetricsImpl) then) =
      __$$NetworkMetricsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double hashRate,
      double hashRateChange24h,
      double difficulty,
      double difficultyChange24h,
      int blockHeight,
      double blockTime,
      double blockSize,
      List<NodeData> nodes});
}

/// @nodoc
class __$$NetworkMetricsImplCopyWithImpl<$Res>
    extends _$NetworkMetricsCopyWithImpl<$Res, _$NetworkMetricsImpl>
    implements _$$NetworkMetricsImplCopyWith<$Res> {
  __$$NetworkMetricsImplCopyWithImpl(
      _$NetworkMetricsImpl _value, $Res Function(_$NetworkMetricsImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkMetrics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hashRate = null,
    Object? hashRateChange24h = null,
    Object? difficulty = null,
    Object? difficultyChange24h = null,
    Object? blockHeight = null,
    Object? blockTime = null,
    Object? blockSize = null,
    Object? nodes = null,
  }) {
    return _then(_$NetworkMetricsImpl(
      hashRate: null == hashRate
          ? _value.hashRate
          : hashRate // ignore: cast_nullable_to_non_nullable
              as double,
      hashRateChange24h: null == hashRateChange24h
          ? _value.hashRateChange24h
          : hashRateChange24h // ignore: cast_nullable_to_non_nullable
              as double,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as double,
      difficultyChange24h: null == difficultyChange24h
          ? _value.difficultyChange24h
          : difficultyChange24h // ignore: cast_nullable_to_non_nullable
              as double,
      blockHeight: null == blockHeight
          ? _value.blockHeight
          : blockHeight // ignore: cast_nullable_to_non_nullable
              as int,
      blockTime: null == blockTime
          ? _value.blockTime
          : blockTime // ignore: cast_nullable_to_non_nullable
              as double,
      blockSize: null == blockSize
          ? _value.blockSize
          : blockSize // ignore: cast_nullable_to_non_nullable
              as double,
      nodes: null == nodes
          ? _value._nodes
          : nodes // ignore: cast_nullable_to_non_nullable
              as List<NodeData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NetworkMetricsImpl implements _NetworkMetrics {
  const _$NetworkMetricsImpl(
      {required this.hashRate,
      required this.hashRateChange24h,
      required this.difficulty,
      required this.difficultyChange24h,
      required this.blockHeight,
      required this.blockTime,
      required this.blockSize,
      required final List<NodeData> nodes})
      : _nodes = nodes;

  factory _$NetworkMetricsImpl.fromJson(Map<String, dynamic> json) =>
      _$$NetworkMetricsImplFromJson(json);

  @override
  final double hashRate;
  @override
  final double hashRateChange24h;
  @override
  final double difficulty;
  @override
  final double difficultyChange24h;
  @override
  final int blockHeight;
  @override
  final double blockTime;
  @override
  final double blockSize;
  final List<NodeData> _nodes;
  @override
  List<NodeData> get nodes {
    if (_nodes is EqualUnmodifiableListView) return _nodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nodes);
  }

  @override
  String toString() {
    return 'NetworkMetrics(hashRate: $hashRate, hashRateChange24h: $hashRateChange24h, difficulty: $difficulty, difficultyChange24h: $difficultyChange24h, blockHeight: $blockHeight, blockTime: $blockTime, blockSize: $blockSize, nodes: $nodes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkMetricsImpl &&
            (identical(other.hashRate, hashRate) ||
                other.hashRate == hashRate) &&
            (identical(other.hashRateChange24h, hashRateChange24h) ||
                other.hashRateChange24h == hashRateChange24h) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.difficultyChange24h, difficultyChange24h) ||
                other.difficultyChange24h == difficultyChange24h) &&
            (identical(other.blockHeight, blockHeight) ||
                other.blockHeight == blockHeight) &&
            (identical(other.blockTime, blockTime) ||
                other.blockTime == blockTime) &&
            (identical(other.blockSize, blockSize) ||
                other.blockSize == blockSize) &&
            const DeepCollectionEquality().equals(other._nodes, _nodes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      hashRate,
      hashRateChange24h,
      difficulty,
      difficultyChange24h,
      blockHeight,
      blockTime,
      blockSize,
      const DeepCollectionEquality().hash(_nodes));

  /// Create a copy of NetworkMetrics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkMetricsImplCopyWith<_$NetworkMetricsImpl> get copyWith =>
      __$$NetworkMetricsImplCopyWithImpl<_$NetworkMetricsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NetworkMetricsImplToJson(
      this,
    );
  }
}

abstract class _NetworkMetrics implements NetworkMetrics {
  const factory _NetworkMetrics(
      {required final double hashRate,
      required final double hashRateChange24h,
      required final double difficulty,
      required final double difficultyChange24h,
      required final int blockHeight,
      required final double blockTime,
      required final double blockSize,
      required final List<NodeData> nodes}) = _$NetworkMetricsImpl;

  factory _NetworkMetrics.fromJson(Map<String, dynamic> json) =
      _$NetworkMetricsImpl.fromJson;

  @override
  double get hashRate;
  @override
  double get hashRateChange24h;
  @override
  double get difficulty;
  @override
  double get difficultyChange24h;
  @override
  int get blockHeight;
  @override
  double get blockTime;
  @override
  double get blockSize;
  @override
  List<NodeData> get nodes;

  /// Create a copy of NetworkMetrics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkMetricsImplCopyWith<_$NetworkMetricsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NodeData _$NodeDataFromJson(Map<String, dynamic> json) {
  return _NodeData.fromJson(json);
}

/// @nodoc
mixin _$NodeData {
  String get address => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  DateTime get lastSeen => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  /// Serializes this NodeData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NodeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NodeDataCopyWith<NodeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NodeDataCopyWith<$Res> {
  factory $NodeDataCopyWith(NodeData value, $Res Function(NodeData) then) =
      _$NodeDataCopyWithImpl<$Res, NodeData>;
  @useResult
  $Res call(
      {String address,
      String type,
      String version,
      DateTime lastSeen,
      bool isActive});
}

/// @nodoc
class _$NodeDataCopyWithImpl<$Res, $Val extends NodeData>
    implements $NodeDataCopyWith<$Res> {
  _$NodeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NodeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? type = null,
    Object? version = null,
    Object? lastSeen = null,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      lastSeen: null == lastSeen
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NodeDataImplCopyWith<$Res>
    implements $NodeDataCopyWith<$Res> {
  factory _$$NodeDataImplCopyWith(
          _$NodeDataImpl value, $Res Function(_$NodeDataImpl) then) =
      __$$NodeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String address,
      String type,
      String version,
      DateTime lastSeen,
      bool isActive});
}

/// @nodoc
class __$$NodeDataImplCopyWithImpl<$Res>
    extends _$NodeDataCopyWithImpl<$Res, _$NodeDataImpl>
    implements _$$NodeDataImplCopyWith<$Res> {
  __$$NodeDataImplCopyWithImpl(
      _$NodeDataImpl _value, $Res Function(_$NodeDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of NodeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? type = null,
    Object? version = null,
    Object? lastSeen = null,
    Object? isActive = null,
  }) {
    return _then(_$NodeDataImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      lastSeen: null == lastSeen
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NodeDataImpl implements _NodeData {
  const _$NodeDataImpl(
      {required this.address,
      required this.type,
      required this.version,
      required this.lastSeen,
      required this.isActive});

  factory _$NodeDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$NodeDataImplFromJson(json);

  @override
  final String address;
  @override
  final String type;
  @override
  final String version;
  @override
  final DateTime lastSeen;
  @override
  final bool isActive;

  @override
  String toString() {
    return 'NodeData(address: $address, type: $type, version: $version, lastSeen: $lastSeen, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NodeDataImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.lastSeen, lastSeen) ||
                other.lastSeen == lastSeen) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, address, type, version, lastSeen, isActive);

  /// Create a copy of NodeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NodeDataImplCopyWith<_$NodeDataImpl> get copyWith =>
      __$$NodeDataImplCopyWithImpl<_$NodeDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NodeDataImplToJson(
      this,
    );
  }
}

abstract class _NodeData implements NodeData {
  const factory _NodeData(
      {required final String address,
      required final String type,
      required final String version,
      required final DateTime lastSeen,
      required final bool isActive}) = _$NodeDataImpl;

  factory _NodeData.fromJson(Map<String, dynamic> json) =
      _$NodeDataImpl.fromJson;

  @override
  String get address;
  @override
  String get type;
  @override
  String get version;
  @override
  DateTime get lastSeen;
  @override
  bool get isActive;

  /// Create a copy of NodeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NodeDataImplCopyWith<_$NodeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StakingData _$StakingDataFromJson(Map<String, dynamic> json) {
  return _StakingData.fromJson(json);
}

/// @nodoc
mixin _$StakingData {
  double get stakedAmount => throw _privateConstructorUsedError;
  double get stakedPercentage => throw _privateConstructorUsedError;
  double get stakingRewards => throw _privateConstructorUsedError;
  double get stakingAPY => throw _privateConstructorUsedError;
  List<ValidatorData> get topValidators => throw _privateConstructorUsedError;
  List<StakingPoolData> get stakingPools => throw _privateConstructorUsedError;

  /// Serializes this StakingData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StakingData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StakingDataCopyWith<StakingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StakingDataCopyWith<$Res> {
  factory $StakingDataCopyWith(
          StakingData value, $Res Function(StakingData) then) =
      _$StakingDataCopyWithImpl<$Res, StakingData>;
  @useResult
  $Res call(
      {double stakedAmount,
      double stakedPercentage,
      double stakingRewards,
      double stakingAPY,
      List<ValidatorData> topValidators,
      List<StakingPoolData> stakingPools});
}

/// @nodoc
class _$StakingDataCopyWithImpl<$Res, $Val extends StakingData>
    implements $StakingDataCopyWith<$Res> {
  _$StakingDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StakingData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stakedAmount = null,
    Object? stakedPercentage = null,
    Object? stakingRewards = null,
    Object? stakingAPY = null,
    Object? topValidators = null,
    Object? stakingPools = null,
  }) {
    return _then(_value.copyWith(
      stakedAmount: null == stakedAmount
          ? _value.stakedAmount
          : stakedAmount // ignore: cast_nullable_to_non_nullable
              as double,
      stakedPercentage: null == stakedPercentage
          ? _value.stakedPercentage
          : stakedPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      stakingRewards: null == stakingRewards
          ? _value.stakingRewards
          : stakingRewards // ignore: cast_nullable_to_non_nullable
              as double,
      stakingAPY: null == stakingAPY
          ? _value.stakingAPY
          : stakingAPY // ignore: cast_nullable_to_non_nullable
              as double,
      topValidators: null == topValidators
          ? _value.topValidators
          : topValidators // ignore: cast_nullable_to_non_nullable
              as List<ValidatorData>,
      stakingPools: null == stakingPools
          ? _value.stakingPools
          : stakingPools // ignore: cast_nullable_to_non_nullable
              as List<StakingPoolData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StakingDataImplCopyWith<$Res>
    implements $StakingDataCopyWith<$Res> {
  factory _$$StakingDataImplCopyWith(
          _$StakingDataImpl value, $Res Function(_$StakingDataImpl) then) =
      __$$StakingDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double stakedAmount,
      double stakedPercentage,
      double stakingRewards,
      double stakingAPY,
      List<ValidatorData> topValidators,
      List<StakingPoolData> stakingPools});
}

/// @nodoc
class __$$StakingDataImplCopyWithImpl<$Res>
    extends _$StakingDataCopyWithImpl<$Res, _$StakingDataImpl>
    implements _$$StakingDataImplCopyWith<$Res> {
  __$$StakingDataImplCopyWithImpl(
      _$StakingDataImpl _value, $Res Function(_$StakingDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of StakingData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stakedAmount = null,
    Object? stakedPercentage = null,
    Object? stakingRewards = null,
    Object? stakingAPY = null,
    Object? topValidators = null,
    Object? stakingPools = null,
  }) {
    return _then(_$StakingDataImpl(
      stakedAmount: null == stakedAmount
          ? _value.stakedAmount
          : stakedAmount // ignore: cast_nullable_to_non_nullable
              as double,
      stakedPercentage: null == stakedPercentage
          ? _value.stakedPercentage
          : stakedPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      stakingRewards: null == stakingRewards
          ? _value.stakingRewards
          : stakingRewards // ignore: cast_nullable_to_non_nullable
              as double,
      stakingAPY: null == stakingAPY
          ? _value.stakingAPY
          : stakingAPY // ignore: cast_nullable_to_non_nullable
              as double,
      topValidators: null == topValidators
          ? _value._topValidators
          : topValidators // ignore: cast_nullable_to_non_nullable
              as List<ValidatorData>,
      stakingPools: null == stakingPools
          ? _value._stakingPools
          : stakingPools // ignore: cast_nullable_to_non_nullable
              as List<StakingPoolData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StakingDataImpl implements _StakingData {
  const _$StakingDataImpl(
      {required this.stakedAmount,
      required this.stakedPercentage,
      required this.stakingRewards,
      required this.stakingAPY,
      required final List<ValidatorData> topValidators,
      required final List<StakingPoolData> stakingPools})
      : _topValidators = topValidators,
        _stakingPools = stakingPools;

  factory _$StakingDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StakingDataImplFromJson(json);

  @override
  final double stakedAmount;
  @override
  final double stakedPercentage;
  @override
  final double stakingRewards;
  @override
  final double stakingAPY;
  final List<ValidatorData> _topValidators;
  @override
  List<ValidatorData> get topValidators {
    if (_topValidators is EqualUnmodifiableListView) return _topValidators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topValidators);
  }

  final List<StakingPoolData> _stakingPools;
  @override
  List<StakingPoolData> get stakingPools {
    if (_stakingPools is EqualUnmodifiableListView) return _stakingPools;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stakingPools);
  }

  @override
  String toString() {
    return 'StakingData(stakedAmount: $stakedAmount, stakedPercentage: $stakedPercentage, stakingRewards: $stakingRewards, stakingAPY: $stakingAPY, topValidators: $topValidators, stakingPools: $stakingPools)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StakingDataImpl &&
            (identical(other.stakedAmount, stakedAmount) ||
                other.stakedAmount == stakedAmount) &&
            (identical(other.stakedPercentage, stakedPercentage) ||
                other.stakedPercentage == stakedPercentage) &&
            (identical(other.stakingRewards, stakingRewards) ||
                other.stakingRewards == stakingRewards) &&
            (identical(other.stakingAPY, stakingAPY) ||
                other.stakingAPY == stakingAPY) &&
            const DeepCollectionEquality()
                .equals(other._topValidators, _topValidators) &&
            const DeepCollectionEquality()
                .equals(other._stakingPools, _stakingPools));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      stakedAmount,
      stakedPercentage,
      stakingRewards,
      stakingAPY,
      const DeepCollectionEquality().hash(_topValidators),
      const DeepCollectionEquality().hash(_stakingPools));

  /// Create a copy of StakingData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StakingDataImplCopyWith<_$StakingDataImpl> get copyWith =>
      __$$StakingDataImplCopyWithImpl<_$StakingDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StakingDataImplToJson(
      this,
    );
  }
}

abstract class _StakingData implements StakingData {
  const factory _StakingData(
      {required final double stakedAmount,
      required final double stakedPercentage,
      required final double stakingRewards,
      required final double stakingAPY,
      required final List<ValidatorData> topValidators,
      required final List<StakingPoolData> stakingPools}) = _$StakingDataImpl;

  factory _StakingData.fromJson(Map<String, dynamic> json) =
      _$StakingDataImpl.fromJson;

  @override
  double get stakedAmount;
  @override
  double get stakedPercentage;
  @override
  double get stakingRewards;
  @override
  double get stakingAPY;
  @override
  List<ValidatorData> get topValidators;
  @override
  List<StakingPoolData> get stakingPools;

  /// Create a copy of StakingData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StakingDataImplCopyWith<_$StakingDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ValidatorData _$ValidatorDataFromJson(Map<String, dynamic> json) {
  return _ValidatorData.fromJson(json);
}

/// @nodoc
mixin _$ValidatorData {
  String get address => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get stake => throw _privateConstructorUsedError;
  double get commission => throw _privateConstructorUsedError;
  double get uptime => throw _privateConstructorUsedError;
  int get delegators => throw _privateConstructorUsedError;

  /// Serializes this ValidatorData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ValidatorData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValidatorDataCopyWith<ValidatorData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidatorDataCopyWith<$Res> {
  factory $ValidatorDataCopyWith(
          ValidatorData value, $Res Function(ValidatorData) then) =
      _$ValidatorDataCopyWithImpl<$Res, ValidatorData>;
  @useResult
  $Res call(
      {String address,
      String name,
      double stake,
      double commission,
      double uptime,
      int delegators});
}

/// @nodoc
class _$ValidatorDataCopyWithImpl<$Res, $Val extends ValidatorData>
    implements $ValidatorDataCopyWith<$Res> {
  _$ValidatorDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValidatorData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? name = null,
    Object? stake = null,
    Object? commission = null,
    Object? uptime = null,
    Object? delegators = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      stake: null == stake
          ? _value.stake
          : stake // ignore: cast_nullable_to_non_nullable
              as double,
      commission: null == commission
          ? _value.commission
          : commission // ignore: cast_nullable_to_non_nullable
              as double,
      uptime: null == uptime
          ? _value.uptime
          : uptime // ignore: cast_nullable_to_non_nullable
              as double,
      delegators: null == delegators
          ? _value.delegators
          : delegators // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidatorDataImplCopyWith<$Res>
    implements $ValidatorDataCopyWith<$Res> {
  factory _$$ValidatorDataImplCopyWith(
          _$ValidatorDataImpl value, $Res Function(_$ValidatorDataImpl) then) =
      __$$ValidatorDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String address,
      String name,
      double stake,
      double commission,
      double uptime,
      int delegators});
}

/// @nodoc
class __$$ValidatorDataImplCopyWithImpl<$Res>
    extends _$ValidatorDataCopyWithImpl<$Res, _$ValidatorDataImpl>
    implements _$$ValidatorDataImplCopyWith<$Res> {
  __$$ValidatorDataImplCopyWithImpl(
      _$ValidatorDataImpl _value, $Res Function(_$ValidatorDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ValidatorData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? name = null,
    Object? stake = null,
    Object? commission = null,
    Object? uptime = null,
    Object? delegators = null,
  }) {
    return _then(_$ValidatorDataImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      stake: null == stake
          ? _value.stake
          : stake // ignore: cast_nullable_to_non_nullable
              as double,
      commission: null == commission
          ? _value.commission
          : commission // ignore: cast_nullable_to_non_nullable
              as double,
      uptime: null == uptime
          ? _value.uptime
          : uptime // ignore: cast_nullable_to_non_nullable
              as double,
      delegators: null == delegators
          ? _value.delegators
          : delegators // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidatorDataImpl implements _ValidatorData {
  const _$ValidatorDataImpl(
      {required this.address,
      required this.name,
      required this.stake,
      required this.commission,
      required this.uptime,
      required this.delegators});

  factory _$ValidatorDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidatorDataImplFromJson(json);

  @override
  final String address;
  @override
  final String name;
  @override
  final double stake;
  @override
  final double commission;
  @override
  final double uptime;
  @override
  final int delegators;

  @override
  String toString() {
    return 'ValidatorData(address: $address, name: $name, stake: $stake, commission: $commission, uptime: $uptime, delegators: $delegators)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidatorDataImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.stake, stake) || other.stake == stake) &&
            (identical(other.commission, commission) ||
                other.commission == commission) &&
            (identical(other.uptime, uptime) || other.uptime == uptime) &&
            (identical(other.delegators, delegators) ||
                other.delegators == delegators));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, address, name, stake, commission, uptime, delegators);

  /// Create a copy of ValidatorData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidatorDataImplCopyWith<_$ValidatorDataImpl> get copyWith =>
      __$$ValidatorDataImplCopyWithImpl<_$ValidatorDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidatorDataImplToJson(
      this,
    );
  }
}

abstract class _ValidatorData implements ValidatorData {
  const factory _ValidatorData(
      {required final String address,
      required final String name,
      required final double stake,
      required final double commission,
      required final double uptime,
      required final int delegators}) = _$ValidatorDataImpl;

  factory _ValidatorData.fromJson(Map<String, dynamic> json) =
      _$ValidatorDataImpl.fromJson;

  @override
  String get address;
  @override
  String get name;
  @override
  double get stake;
  @override
  double get commission;
  @override
  double get uptime;
  @override
  int get delegators;

  /// Create a copy of ValidatorData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidatorDataImplCopyWith<_$ValidatorDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StakingPoolData _$StakingPoolDataFromJson(Map<String, dynamic> json) {
  return _StakingPoolData.fromJson(json);
}

/// @nodoc
mixin _$StakingPoolData {
  String get name => throw _privateConstructorUsedError;
  double get totalStaked => throw _privateConstructorUsedError;
  double get apy => throw _privateConstructorUsedError;
  double get minStake => throw _privateConstructorUsedError;
  double get maxStake => throw _privateConstructorUsedError;
  String get lockPeriod => throw _privateConstructorUsedError;

  /// Serializes this StakingPoolData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StakingPoolData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StakingPoolDataCopyWith<StakingPoolData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StakingPoolDataCopyWith<$Res> {
  factory $StakingPoolDataCopyWith(
          StakingPoolData value, $Res Function(StakingPoolData) then) =
      _$StakingPoolDataCopyWithImpl<$Res, StakingPoolData>;
  @useResult
  $Res call(
      {String name,
      double totalStaked,
      double apy,
      double minStake,
      double maxStake,
      String lockPeriod});
}

/// @nodoc
class _$StakingPoolDataCopyWithImpl<$Res, $Val extends StakingPoolData>
    implements $StakingPoolDataCopyWith<$Res> {
  _$StakingPoolDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StakingPoolData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? totalStaked = null,
    Object? apy = null,
    Object? minStake = null,
    Object? maxStake = null,
    Object? lockPeriod = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      totalStaked: null == totalStaked
          ? _value.totalStaked
          : totalStaked // ignore: cast_nullable_to_non_nullable
              as double,
      apy: null == apy
          ? _value.apy
          : apy // ignore: cast_nullable_to_non_nullable
              as double,
      minStake: null == minStake
          ? _value.minStake
          : minStake // ignore: cast_nullable_to_non_nullable
              as double,
      maxStake: null == maxStake
          ? _value.maxStake
          : maxStake // ignore: cast_nullable_to_non_nullable
              as double,
      lockPeriod: null == lockPeriod
          ? _value.lockPeriod
          : lockPeriod // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StakingPoolDataImplCopyWith<$Res>
    implements $StakingPoolDataCopyWith<$Res> {
  factory _$$StakingPoolDataImplCopyWith(_$StakingPoolDataImpl value,
          $Res Function(_$StakingPoolDataImpl) then) =
      __$$StakingPoolDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      double totalStaked,
      double apy,
      double minStake,
      double maxStake,
      String lockPeriod});
}

/// @nodoc
class __$$StakingPoolDataImplCopyWithImpl<$Res>
    extends _$StakingPoolDataCopyWithImpl<$Res, _$StakingPoolDataImpl>
    implements _$$StakingPoolDataImplCopyWith<$Res> {
  __$$StakingPoolDataImplCopyWithImpl(
      _$StakingPoolDataImpl _value, $Res Function(_$StakingPoolDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of StakingPoolData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? totalStaked = null,
    Object? apy = null,
    Object? minStake = null,
    Object? maxStake = null,
    Object? lockPeriod = null,
  }) {
    return _then(_$StakingPoolDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      totalStaked: null == totalStaked
          ? _value.totalStaked
          : totalStaked // ignore: cast_nullable_to_non_nullable
              as double,
      apy: null == apy
          ? _value.apy
          : apy // ignore: cast_nullable_to_non_nullable
              as double,
      minStake: null == minStake
          ? _value.minStake
          : minStake // ignore: cast_nullable_to_non_nullable
              as double,
      maxStake: null == maxStake
          ? _value.maxStake
          : maxStake // ignore: cast_nullable_to_non_nullable
              as double,
      lockPeriod: null == lockPeriod
          ? _value.lockPeriod
          : lockPeriod // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StakingPoolDataImpl implements _StakingPoolData {
  const _$StakingPoolDataImpl(
      {required this.name,
      required this.totalStaked,
      required this.apy,
      required this.minStake,
      required this.maxStake,
      required this.lockPeriod});

  factory _$StakingPoolDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StakingPoolDataImplFromJson(json);

  @override
  final String name;
  @override
  final double totalStaked;
  @override
  final double apy;
  @override
  final double minStake;
  @override
  final double maxStake;
  @override
  final String lockPeriod;

  @override
  String toString() {
    return 'StakingPoolData(name: $name, totalStaked: $totalStaked, apy: $apy, minStake: $minStake, maxStake: $maxStake, lockPeriod: $lockPeriod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StakingPoolDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.totalStaked, totalStaked) ||
                other.totalStaked == totalStaked) &&
            (identical(other.apy, apy) || other.apy == apy) &&
            (identical(other.minStake, minStake) ||
                other.minStake == minStake) &&
            (identical(other.maxStake, maxStake) ||
                other.maxStake == maxStake) &&
            (identical(other.lockPeriod, lockPeriod) ||
                other.lockPeriod == lockPeriod));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, totalStaked, apy, minStake, maxStake, lockPeriod);

  /// Create a copy of StakingPoolData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StakingPoolDataImplCopyWith<_$StakingPoolDataImpl> get copyWith =>
      __$$StakingPoolDataImplCopyWithImpl<_$StakingPoolDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StakingPoolDataImplToJson(
      this,
    );
  }
}

abstract class _StakingPoolData implements StakingPoolData {
  const factory _StakingPoolData(
      {required final String name,
      required final double totalStaked,
      required final double apy,
      required final double minStake,
      required final double maxStake,
      required final String lockPeriod}) = _$StakingPoolDataImpl;

  factory _StakingPoolData.fromJson(Map<String, dynamic> json) =
      _$StakingPoolDataImpl.fromJson;

  @override
  String get name;
  @override
  double get totalStaked;
  @override
  double get apy;
  @override
  double get minStake;
  @override
  double get maxStake;
  @override
  String get lockPeriod;

  /// Create a copy of StakingPoolData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StakingPoolDataImplCopyWith<_$StakingPoolDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GovernanceData _$GovernanceDataFromJson(Map<String, dynamic> json) {
  return _GovernanceData.fromJson(json);
}

/// @nodoc
mixin _$GovernanceData {
  List<ProposalData> get activeProposals => throw _privateConstructorUsedError;
  List<ProposalData> get recentProposals => throw _privateConstructorUsedError;
  double get totalVotingPower => throw _privateConstructorUsedError;
  double get participationRate => throw _privateConstructorUsedError;
  List<GovernanceTokenData> get governanceTokens =>
      throw _privateConstructorUsedError;

  /// Serializes this GovernanceData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GovernanceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GovernanceDataCopyWith<GovernanceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GovernanceDataCopyWith<$Res> {
  factory $GovernanceDataCopyWith(
          GovernanceData value, $Res Function(GovernanceData) then) =
      _$GovernanceDataCopyWithImpl<$Res, GovernanceData>;
  @useResult
  $Res call(
      {List<ProposalData> activeProposals,
      List<ProposalData> recentProposals,
      double totalVotingPower,
      double participationRate,
      List<GovernanceTokenData> governanceTokens});
}

/// @nodoc
class _$GovernanceDataCopyWithImpl<$Res, $Val extends GovernanceData>
    implements $GovernanceDataCopyWith<$Res> {
  _$GovernanceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GovernanceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeProposals = null,
    Object? recentProposals = null,
    Object? totalVotingPower = null,
    Object? participationRate = null,
    Object? governanceTokens = null,
  }) {
    return _then(_value.copyWith(
      activeProposals: null == activeProposals
          ? _value.activeProposals
          : activeProposals // ignore: cast_nullable_to_non_nullable
              as List<ProposalData>,
      recentProposals: null == recentProposals
          ? _value.recentProposals
          : recentProposals // ignore: cast_nullable_to_non_nullable
              as List<ProposalData>,
      totalVotingPower: null == totalVotingPower
          ? _value.totalVotingPower
          : totalVotingPower // ignore: cast_nullable_to_non_nullable
              as double,
      participationRate: null == participationRate
          ? _value.participationRate
          : participationRate // ignore: cast_nullable_to_non_nullable
              as double,
      governanceTokens: null == governanceTokens
          ? _value.governanceTokens
          : governanceTokens // ignore: cast_nullable_to_non_nullable
              as List<GovernanceTokenData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GovernanceDataImplCopyWith<$Res>
    implements $GovernanceDataCopyWith<$Res> {
  factory _$$GovernanceDataImplCopyWith(_$GovernanceDataImpl value,
          $Res Function(_$GovernanceDataImpl) then) =
      __$$GovernanceDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ProposalData> activeProposals,
      List<ProposalData> recentProposals,
      double totalVotingPower,
      double participationRate,
      List<GovernanceTokenData> governanceTokens});
}

/// @nodoc
class __$$GovernanceDataImplCopyWithImpl<$Res>
    extends _$GovernanceDataCopyWithImpl<$Res, _$GovernanceDataImpl>
    implements _$$GovernanceDataImplCopyWith<$Res> {
  __$$GovernanceDataImplCopyWithImpl(
      _$GovernanceDataImpl _value, $Res Function(_$GovernanceDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of GovernanceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeProposals = null,
    Object? recentProposals = null,
    Object? totalVotingPower = null,
    Object? participationRate = null,
    Object? governanceTokens = null,
  }) {
    return _then(_$GovernanceDataImpl(
      activeProposals: null == activeProposals
          ? _value._activeProposals
          : activeProposals // ignore: cast_nullable_to_non_nullable
              as List<ProposalData>,
      recentProposals: null == recentProposals
          ? _value._recentProposals
          : recentProposals // ignore: cast_nullable_to_non_nullable
              as List<ProposalData>,
      totalVotingPower: null == totalVotingPower
          ? _value.totalVotingPower
          : totalVotingPower // ignore: cast_nullable_to_non_nullable
              as double,
      participationRate: null == participationRate
          ? _value.participationRate
          : participationRate // ignore: cast_nullable_to_non_nullable
              as double,
      governanceTokens: null == governanceTokens
          ? _value._governanceTokens
          : governanceTokens // ignore: cast_nullable_to_non_nullable
              as List<GovernanceTokenData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GovernanceDataImpl implements _GovernanceData {
  const _$GovernanceDataImpl(
      {required final List<ProposalData> activeProposals,
      required final List<ProposalData> recentProposals,
      required this.totalVotingPower,
      required this.participationRate,
      required final List<GovernanceTokenData> governanceTokens})
      : _activeProposals = activeProposals,
        _recentProposals = recentProposals,
        _governanceTokens = governanceTokens;

  factory _$GovernanceDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GovernanceDataImplFromJson(json);

  final List<ProposalData> _activeProposals;
  @override
  List<ProposalData> get activeProposals {
    if (_activeProposals is EqualUnmodifiableListView) return _activeProposals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeProposals);
  }

  final List<ProposalData> _recentProposals;
  @override
  List<ProposalData> get recentProposals {
    if (_recentProposals is EqualUnmodifiableListView) return _recentProposals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentProposals);
  }

  @override
  final double totalVotingPower;
  @override
  final double participationRate;
  final List<GovernanceTokenData> _governanceTokens;
  @override
  List<GovernanceTokenData> get governanceTokens {
    if (_governanceTokens is EqualUnmodifiableListView)
      return _governanceTokens;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_governanceTokens);
  }

  @override
  String toString() {
    return 'GovernanceData(activeProposals: $activeProposals, recentProposals: $recentProposals, totalVotingPower: $totalVotingPower, participationRate: $participationRate, governanceTokens: $governanceTokens)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GovernanceDataImpl &&
            const DeepCollectionEquality()
                .equals(other._activeProposals, _activeProposals) &&
            const DeepCollectionEquality()
                .equals(other._recentProposals, _recentProposals) &&
            (identical(other.totalVotingPower, totalVotingPower) ||
                other.totalVotingPower == totalVotingPower) &&
            (identical(other.participationRate, participationRate) ||
                other.participationRate == participationRate) &&
            const DeepCollectionEquality()
                .equals(other._governanceTokens, _governanceTokens));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_activeProposals),
      const DeepCollectionEquality().hash(_recentProposals),
      totalVotingPower,
      participationRate,
      const DeepCollectionEquality().hash(_governanceTokens));

  /// Create a copy of GovernanceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GovernanceDataImplCopyWith<_$GovernanceDataImpl> get copyWith =>
      __$$GovernanceDataImplCopyWithImpl<_$GovernanceDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GovernanceDataImplToJson(
      this,
    );
  }
}

abstract class _GovernanceData implements GovernanceData {
  const factory _GovernanceData(
          {required final List<ProposalData> activeProposals,
          required final List<ProposalData> recentProposals,
          required final double totalVotingPower,
          required final double participationRate,
          required final List<GovernanceTokenData> governanceTokens}) =
      _$GovernanceDataImpl;

  factory _GovernanceData.fromJson(Map<String, dynamic> json) =
      _$GovernanceDataImpl.fromJson;

  @override
  List<ProposalData> get activeProposals;
  @override
  List<ProposalData> get recentProposals;
  @override
  double get totalVotingPower;
  @override
  double get participationRate;
  @override
  List<GovernanceTokenData> get governanceTokens;

  /// Create a copy of GovernanceData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GovernanceDataImplCopyWith<_$GovernanceDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProposalData _$ProposalDataFromJson(Map<String, dynamic> json) {
  return _ProposalData.fromJson(json);
}

/// @nodoc
mixin _$ProposalData {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  double get forVotes => throw _privateConstructorUsedError;
  double get againstVotes => throw _privateConstructorUsedError;
  double get abstainVotes => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Serializes this ProposalData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProposalData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProposalDataCopyWith<ProposalData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProposalDataCopyWith<$Res> {
  factory $ProposalDataCopyWith(
          ProposalData value, $Res Function(ProposalData) then) =
      _$ProposalDataCopyWithImpl<$Res, ProposalData>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      DateTime startDate,
      DateTime endDate,
      double forVotes,
      double againstVotes,
      double abstainVotes,
      String status});
}

/// @nodoc
class _$ProposalDataCopyWithImpl<$Res, $Val extends ProposalData>
    implements $ProposalDataCopyWith<$Res> {
  _$ProposalDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProposalData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? forVotes = null,
    Object? againstVotes = null,
    Object? abstainVotes = null,
    Object? status = null,
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
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      forVotes: null == forVotes
          ? _value.forVotes
          : forVotes // ignore: cast_nullable_to_non_nullable
              as double,
      againstVotes: null == againstVotes
          ? _value.againstVotes
          : againstVotes // ignore: cast_nullable_to_non_nullable
              as double,
      abstainVotes: null == abstainVotes
          ? _value.abstainVotes
          : abstainVotes // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProposalDataImplCopyWith<$Res>
    implements $ProposalDataCopyWith<$Res> {
  factory _$$ProposalDataImplCopyWith(
          _$ProposalDataImpl value, $Res Function(_$ProposalDataImpl) then) =
      __$$ProposalDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      DateTime startDate,
      DateTime endDate,
      double forVotes,
      double againstVotes,
      double abstainVotes,
      String status});
}

/// @nodoc
class __$$ProposalDataImplCopyWithImpl<$Res>
    extends _$ProposalDataCopyWithImpl<$Res, _$ProposalDataImpl>
    implements _$$ProposalDataImplCopyWith<$Res> {
  __$$ProposalDataImplCopyWithImpl(
      _$ProposalDataImpl _value, $Res Function(_$ProposalDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProposalData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? forVotes = null,
    Object? againstVotes = null,
    Object? abstainVotes = null,
    Object? status = null,
  }) {
    return _then(_$ProposalDataImpl(
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
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      forVotes: null == forVotes
          ? _value.forVotes
          : forVotes // ignore: cast_nullable_to_non_nullable
              as double,
      againstVotes: null == againstVotes
          ? _value.againstVotes
          : againstVotes // ignore: cast_nullable_to_non_nullable
              as double,
      abstainVotes: null == abstainVotes
          ? _value.abstainVotes
          : abstainVotes // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProposalDataImpl implements _ProposalData {
  const _$ProposalDataImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.startDate,
      required this.endDate,
      required this.forVotes,
      required this.againstVotes,
      required this.abstainVotes,
      required this.status});

  factory _$ProposalDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProposalDataImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final double forVotes;
  @override
  final double againstVotes;
  @override
  final double abstainVotes;
  @override
  final String status;

  @override
  String toString() {
    return 'ProposalData(id: $id, title: $title, description: $description, startDate: $startDate, endDate: $endDate, forVotes: $forVotes, againstVotes: $againstVotes, abstainVotes: $abstainVotes, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProposalDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.forVotes, forVotes) ||
                other.forVotes == forVotes) &&
            (identical(other.againstVotes, againstVotes) ||
                other.againstVotes == againstVotes) &&
            (identical(other.abstainVotes, abstainVotes) ||
                other.abstainVotes == abstainVotes) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description,
      startDate, endDate, forVotes, againstVotes, abstainVotes, status);

  /// Create a copy of ProposalData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProposalDataImplCopyWith<_$ProposalDataImpl> get copyWith =>
      __$$ProposalDataImplCopyWithImpl<_$ProposalDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProposalDataImplToJson(
      this,
    );
  }
}

abstract class _ProposalData implements ProposalData {
  const factory _ProposalData(
      {required final String id,
      required final String title,
      required final String description,
      required final DateTime startDate,
      required final DateTime endDate,
      required final double forVotes,
      required final double againstVotes,
      required final double abstainVotes,
      required final String status}) = _$ProposalDataImpl;

  factory _ProposalData.fromJson(Map<String, dynamic> json) =
      _$ProposalDataImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  double get forVotes;
  @override
  double get againstVotes;
  @override
  double get abstainVotes;
  @override
  String get status;

  /// Create a copy of ProposalData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProposalDataImplCopyWith<_$ProposalDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GovernanceTokenData _$GovernanceTokenDataFromJson(Map<String, dynamic> json) {
  return _GovernanceTokenData.fromJson(json);
}

/// @nodoc
mixin _$GovernanceTokenData {
  String get symbol => throw _privateConstructorUsedError;
  double get totalSupply => throw _privateConstructorUsedError;
  double get circulatingSupply => throw _privateConstructorUsedError;
  double get votingPower => throw _privateConstructorUsedError;

  /// Serializes this GovernanceTokenData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GovernanceTokenData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GovernanceTokenDataCopyWith<GovernanceTokenData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GovernanceTokenDataCopyWith<$Res> {
  factory $GovernanceTokenDataCopyWith(
          GovernanceTokenData value, $Res Function(GovernanceTokenData) then) =
      _$GovernanceTokenDataCopyWithImpl<$Res, GovernanceTokenData>;
  @useResult
  $Res call(
      {String symbol,
      double totalSupply,
      double circulatingSupply,
      double votingPower});
}

/// @nodoc
class _$GovernanceTokenDataCopyWithImpl<$Res, $Val extends GovernanceTokenData>
    implements $GovernanceTokenDataCopyWith<$Res> {
  _$GovernanceTokenDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GovernanceTokenData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? totalSupply = null,
    Object? circulatingSupply = null,
    Object? votingPower = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      totalSupply: null == totalSupply
          ? _value.totalSupply
          : totalSupply // ignore: cast_nullable_to_non_nullable
              as double,
      circulatingSupply: null == circulatingSupply
          ? _value.circulatingSupply
          : circulatingSupply // ignore: cast_nullable_to_non_nullable
              as double,
      votingPower: null == votingPower
          ? _value.votingPower
          : votingPower // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GovernanceTokenDataImplCopyWith<$Res>
    implements $GovernanceTokenDataCopyWith<$Res> {
  factory _$$GovernanceTokenDataImplCopyWith(_$GovernanceTokenDataImpl value,
          $Res Function(_$GovernanceTokenDataImpl) then) =
      __$$GovernanceTokenDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      double totalSupply,
      double circulatingSupply,
      double votingPower});
}

/// @nodoc
class __$$GovernanceTokenDataImplCopyWithImpl<$Res>
    extends _$GovernanceTokenDataCopyWithImpl<$Res, _$GovernanceTokenDataImpl>
    implements _$$GovernanceTokenDataImplCopyWith<$Res> {
  __$$GovernanceTokenDataImplCopyWithImpl(_$GovernanceTokenDataImpl _value,
      $Res Function(_$GovernanceTokenDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of GovernanceTokenData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? totalSupply = null,
    Object? circulatingSupply = null,
    Object? votingPower = null,
  }) {
    return _then(_$GovernanceTokenDataImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      totalSupply: null == totalSupply
          ? _value.totalSupply
          : totalSupply // ignore: cast_nullable_to_non_nullable
              as double,
      circulatingSupply: null == circulatingSupply
          ? _value.circulatingSupply
          : circulatingSupply // ignore: cast_nullable_to_non_nullable
              as double,
      votingPower: null == votingPower
          ? _value.votingPower
          : votingPower // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GovernanceTokenDataImpl implements _GovernanceTokenData {
  const _$GovernanceTokenDataImpl(
      {required this.symbol,
      required this.totalSupply,
      required this.circulatingSupply,
      required this.votingPower});

  factory _$GovernanceTokenDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GovernanceTokenDataImplFromJson(json);

  @override
  final String symbol;
  @override
  final double totalSupply;
  @override
  final double circulatingSupply;
  @override
  final double votingPower;

  @override
  String toString() {
    return 'GovernanceTokenData(symbol: $symbol, totalSupply: $totalSupply, circulatingSupply: $circulatingSupply, votingPower: $votingPower)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GovernanceTokenDataImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.totalSupply, totalSupply) ||
                other.totalSupply == totalSupply) &&
            (identical(other.circulatingSupply, circulatingSupply) ||
                other.circulatingSupply == circulatingSupply) &&
            (identical(other.votingPower, votingPower) ||
                other.votingPower == votingPower));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, symbol, totalSupply, circulatingSupply, votingPower);

  /// Create a copy of GovernanceTokenData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GovernanceTokenDataImplCopyWith<_$GovernanceTokenDataImpl> get copyWith =>
      __$$GovernanceTokenDataImplCopyWithImpl<_$GovernanceTokenDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GovernanceTokenDataImplToJson(
      this,
    );
  }
}

abstract class _GovernanceTokenData implements GovernanceTokenData {
  const factory _GovernanceTokenData(
      {required final String symbol,
      required final double totalSupply,
      required final double circulatingSupply,
      required final double votingPower}) = _$GovernanceTokenDataImpl;

  factory _GovernanceTokenData.fromJson(Map<String, dynamic> json) =
      _$GovernanceTokenDataImpl.fromJson;

  @override
  String get symbol;
  @override
  double get totalSupply;
  @override
  double get circulatingSupply;
  @override
  double get votingPower;

  /// Create a copy of GovernanceTokenData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GovernanceTokenDataImplCopyWith<_$GovernanceTokenDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ForkData _$ForkDataFromJson(Map<String, dynamic> json) {
  return _ForkData.fromJson(json);
}

/// @nodoc
mixin _$ForkData {
  String get name => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  DateTime get forkDate => throw _privateConstructorUsedError;
  double get forkedAtPrice => throw _privateConstructorUsedError;
  double get currentPrice => throw _privateConstructorUsedError;
  double get marketCap => throw _privateConstructorUsedError;

  /// Serializes this ForkData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForkData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForkDataCopyWith<ForkData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForkDataCopyWith<$Res> {
  factory $ForkDataCopyWith(ForkData value, $Res Function(ForkData) then) =
      _$ForkDataCopyWithImpl<$Res, ForkData>;
  @useResult
  $Res call(
      {String name,
      String symbol,
      DateTime forkDate,
      double forkedAtPrice,
      double currentPrice,
      double marketCap});
}

/// @nodoc
class _$ForkDataCopyWithImpl<$Res, $Val extends ForkData>
    implements $ForkDataCopyWith<$Res> {
  _$ForkDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForkData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? symbol = null,
    Object? forkDate = null,
    Object? forkedAtPrice = null,
    Object? currentPrice = null,
    Object? marketCap = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      forkDate: null == forkDate
          ? _value.forkDate
          : forkDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      forkedAtPrice: null == forkedAtPrice
          ? _value.forkedAtPrice
          : forkedAtPrice // ignore: cast_nullable_to_non_nullable
              as double,
      currentPrice: null == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
      marketCap: null == marketCap
          ? _value.marketCap
          : marketCap // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForkDataImplCopyWith<$Res>
    implements $ForkDataCopyWith<$Res> {
  factory _$$ForkDataImplCopyWith(
          _$ForkDataImpl value, $Res Function(_$ForkDataImpl) then) =
      __$$ForkDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String symbol,
      DateTime forkDate,
      double forkedAtPrice,
      double currentPrice,
      double marketCap});
}

/// @nodoc
class __$$ForkDataImplCopyWithImpl<$Res>
    extends _$ForkDataCopyWithImpl<$Res, _$ForkDataImpl>
    implements _$$ForkDataImplCopyWith<$Res> {
  __$$ForkDataImplCopyWithImpl(
      _$ForkDataImpl _value, $Res Function(_$ForkDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForkData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? symbol = null,
    Object? forkDate = null,
    Object? forkedAtPrice = null,
    Object? currentPrice = null,
    Object? marketCap = null,
  }) {
    return _then(_$ForkDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      forkDate: null == forkDate
          ? _value.forkDate
          : forkDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      forkedAtPrice: null == forkedAtPrice
          ? _value.forkedAtPrice
          : forkedAtPrice // ignore: cast_nullable_to_non_nullable
              as double,
      currentPrice: null == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
      marketCap: null == marketCap
          ? _value.marketCap
          : marketCap // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForkDataImpl implements _ForkData {
  const _$ForkDataImpl(
      {required this.name,
      required this.symbol,
      required this.forkDate,
      required this.forkedAtPrice,
      required this.currentPrice,
      required this.marketCap});

  factory _$ForkDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForkDataImplFromJson(json);

  @override
  final String name;
  @override
  final String symbol;
  @override
  final DateTime forkDate;
  @override
  final double forkedAtPrice;
  @override
  final double currentPrice;
  @override
  final double marketCap;

  @override
  String toString() {
    return 'ForkData(name: $name, symbol: $symbol, forkDate: $forkDate, forkedAtPrice: $forkedAtPrice, currentPrice: $currentPrice, marketCap: $marketCap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForkDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.forkDate, forkDate) ||
                other.forkDate == forkDate) &&
            (identical(other.forkedAtPrice, forkedAtPrice) ||
                other.forkedAtPrice == forkedAtPrice) &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice) &&
            (identical(other.marketCap, marketCap) ||
                other.marketCap == marketCap));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, symbol, forkDate,
      forkedAtPrice, currentPrice, marketCap);

  /// Create a copy of ForkData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForkDataImplCopyWith<_$ForkDataImpl> get copyWith =>
      __$$ForkDataImplCopyWithImpl<_$ForkDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForkDataImplToJson(
      this,
    );
  }
}

abstract class _ForkData implements ForkData {
  const factory _ForkData(
      {required final String name,
      required final String symbol,
      required final DateTime forkDate,
      required final double forkedAtPrice,
      required final double currentPrice,
      required final double marketCap}) = _$ForkDataImpl;

  factory _ForkData.fromJson(Map<String, dynamic> json) =
      _$ForkDataImpl.fromJson;

  @override
  String get name;
  @override
  String get symbol;
  @override
  DateTime get forkDate;
  @override
  double get forkedAtPrice;
  @override
  double get currentPrice;
  @override
  double get marketCap;

  /// Create a copy of ForkData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForkDataImplCopyWith<_$ForkDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PartnershipData _$PartnershipDataFromJson(Map<String, dynamic> json) {
  return _PartnershipData.fromJson(json);
}

/// @nodoc
mixin _$PartnershipData {
  String get partner => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get announcementDate => throw _privateConstructorUsedError;
  double get impactScore => throw _privateConstructorUsedError;

  /// Serializes this PartnershipData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PartnershipData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PartnershipDataCopyWith<PartnershipData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartnershipDataCopyWith<$Res> {
  factory $PartnershipDataCopyWith(
          PartnershipData value, $Res Function(PartnershipData) then) =
      _$PartnershipDataCopyWithImpl<$Res, PartnershipData>;
  @useResult
  $Res call(
      {String partner,
      String type,
      String description,
      DateTime announcementDate,
      double impactScore});
}

/// @nodoc
class _$PartnershipDataCopyWithImpl<$Res, $Val extends PartnershipData>
    implements $PartnershipDataCopyWith<$Res> {
  _$PartnershipDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PartnershipData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partner = null,
    Object? type = null,
    Object? description = null,
    Object? announcementDate = null,
    Object? impactScore = null,
  }) {
    return _then(_value.copyWith(
      partner: null == partner
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      announcementDate: null == announcementDate
          ? _value.announcementDate
          : announcementDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      impactScore: null == impactScore
          ? _value.impactScore
          : impactScore // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PartnershipDataImplCopyWith<$Res>
    implements $PartnershipDataCopyWith<$Res> {
  factory _$$PartnershipDataImplCopyWith(_$PartnershipDataImpl value,
          $Res Function(_$PartnershipDataImpl) then) =
      __$$PartnershipDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String partner,
      String type,
      String description,
      DateTime announcementDate,
      double impactScore});
}

/// @nodoc
class __$$PartnershipDataImplCopyWithImpl<$Res>
    extends _$PartnershipDataCopyWithImpl<$Res, _$PartnershipDataImpl>
    implements _$$PartnershipDataImplCopyWith<$Res> {
  __$$PartnershipDataImplCopyWithImpl(
      _$PartnershipDataImpl _value, $Res Function(_$PartnershipDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartnershipData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partner = null,
    Object? type = null,
    Object? description = null,
    Object? announcementDate = null,
    Object? impactScore = null,
  }) {
    return _then(_$PartnershipDataImpl(
      partner: null == partner
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      announcementDate: null == announcementDate
          ? _value.announcementDate
          : announcementDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      impactScore: null == impactScore
          ? _value.impactScore
          : impactScore // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PartnershipDataImpl implements _PartnershipData {
  const _$PartnershipDataImpl(
      {required this.partner,
      required this.type,
      required this.description,
      required this.announcementDate,
      required this.impactScore});

  factory _$PartnershipDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartnershipDataImplFromJson(json);

  @override
  final String partner;
  @override
  final String type;
  @override
  final String description;
  @override
  final DateTime announcementDate;
  @override
  final double impactScore;

  @override
  String toString() {
    return 'PartnershipData(partner: $partner, type: $type, description: $description, announcementDate: $announcementDate, impactScore: $impactScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartnershipDataImpl &&
            (identical(other.partner, partner) || other.partner == partner) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.announcementDate, announcementDate) ||
                other.announcementDate == announcementDate) &&
            (identical(other.impactScore, impactScore) ||
                other.impactScore == impactScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, partner, type, description, announcementDate, impactScore);

  /// Create a copy of PartnershipData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PartnershipDataImplCopyWith<_$PartnershipDataImpl> get copyWith =>
      __$$PartnershipDataImplCopyWithImpl<_$PartnershipDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PartnershipDataImplToJson(
      this,
    );
  }
}

abstract class _PartnershipData implements PartnershipData {
  const factory _PartnershipData(
      {required final String partner,
      required final String type,
      required final String description,
      required final DateTime announcementDate,
      required final double impactScore}) = _$PartnershipDataImpl;

  factory _PartnershipData.fromJson(Map<String, dynamic> json) =
      _$PartnershipDataImpl.fromJson;

  @override
  String get partner;
  @override
  String get type;
  @override
  String get description;
  @override
  DateTime get announcementDate;
  @override
  double get impactScore;

  /// Create a copy of PartnershipData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PartnershipDataImplCopyWith<_$PartnershipDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RegulatoryData _$RegulatoryDataFromJson(Map<String, dynamic> json) {
  return _RegulatoryData.fromJson(json);
}

/// @nodoc
mixin _$RegulatoryData {
  String get jurisdiction => throw _privateConstructorUsedError;
  String get regulation => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime get effectiveDate => throw _privateConstructorUsedError;
  double get impactScore => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this RegulatoryData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegulatoryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegulatoryDataCopyWith<RegulatoryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegulatoryDataCopyWith<$Res> {
  factory $RegulatoryDataCopyWith(
          RegulatoryData value, $Res Function(RegulatoryData) then) =
      _$RegulatoryDataCopyWithImpl<$Res, RegulatoryData>;
  @useResult
  $Res call(
      {String jurisdiction,
      String regulation,
      String status,
      DateTime effectiveDate,
      double impactScore,
      String description});
}

/// @nodoc
class _$RegulatoryDataCopyWithImpl<$Res, $Val extends RegulatoryData>
    implements $RegulatoryDataCopyWith<$Res> {
  _$RegulatoryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegulatoryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jurisdiction = null,
    Object? regulation = null,
    Object? status = null,
    Object? effectiveDate = null,
    Object? impactScore = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      jurisdiction: null == jurisdiction
          ? _value.jurisdiction
          : jurisdiction // ignore: cast_nullable_to_non_nullable
              as String,
      regulation: null == regulation
          ? _value.regulation
          : regulation // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      effectiveDate: null == effectiveDate
          ? _value.effectiveDate
          : effectiveDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      impactScore: null == impactScore
          ? _value.impactScore
          : impactScore // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegulatoryDataImplCopyWith<$Res>
    implements $RegulatoryDataCopyWith<$Res> {
  factory _$$RegulatoryDataImplCopyWith(_$RegulatoryDataImpl value,
          $Res Function(_$RegulatoryDataImpl) then) =
      __$$RegulatoryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String jurisdiction,
      String regulation,
      String status,
      DateTime effectiveDate,
      double impactScore,
      String description});
}

/// @nodoc
class __$$RegulatoryDataImplCopyWithImpl<$Res>
    extends _$RegulatoryDataCopyWithImpl<$Res, _$RegulatoryDataImpl>
    implements _$$RegulatoryDataImplCopyWith<$Res> {
  __$$RegulatoryDataImplCopyWithImpl(
      _$RegulatoryDataImpl _value, $Res Function(_$RegulatoryDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegulatoryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jurisdiction = null,
    Object? regulation = null,
    Object? status = null,
    Object? effectiveDate = null,
    Object? impactScore = null,
    Object? description = null,
  }) {
    return _then(_$RegulatoryDataImpl(
      jurisdiction: null == jurisdiction
          ? _value.jurisdiction
          : jurisdiction // ignore: cast_nullable_to_non_nullable
              as String,
      regulation: null == regulation
          ? _value.regulation
          : regulation // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      effectiveDate: null == effectiveDate
          ? _value.effectiveDate
          : effectiveDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      impactScore: null == impactScore
          ? _value.impactScore
          : impactScore // ignore: cast_nullable_to_non_nullable
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
class _$RegulatoryDataImpl implements _RegulatoryData {
  const _$RegulatoryDataImpl(
      {required this.jurisdiction,
      required this.regulation,
      required this.status,
      required this.effectiveDate,
      required this.impactScore,
      required this.description});

  factory _$RegulatoryDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegulatoryDataImplFromJson(json);

  @override
  final String jurisdiction;
  @override
  final String regulation;
  @override
  final String status;
  @override
  final DateTime effectiveDate;
  @override
  final double impactScore;
  @override
  final String description;

  @override
  String toString() {
    return 'RegulatoryData(jurisdiction: $jurisdiction, regulation: $regulation, status: $status, effectiveDate: $effectiveDate, impactScore: $impactScore, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegulatoryDataImpl &&
            (identical(other.jurisdiction, jurisdiction) ||
                other.jurisdiction == jurisdiction) &&
            (identical(other.regulation, regulation) ||
                other.regulation == regulation) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.effectiveDate, effectiveDate) ||
                other.effectiveDate == effectiveDate) &&
            (identical(other.impactScore, impactScore) ||
                other.impactScore == impactScore) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, jurisdiction, regulation, status,
      effectiveDate, impactScore, description);

  /// Create a copy of RegulatoryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegulatoryDataImplCopyWith<_$RegulatoryDataImpl> get copyWith =>
      __$$RegulatoryDataImplCopyWithImpl<_$RegulatoryDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegulatoryDataImplToJson(
      this,
    );
  }
}

abstract class _RegulatoryData implements RegulatoryData {
  const factory _RegulatoryData(
      {required final String jurisdiction,
      required final String regulation,
      required final String status,
      required final DateTime effectiveDate,
      required final double impactScore,
      required final String description}) = _$RegulatoryDataImpl;

  factory _RegulatoryData.fromJson(Map<String, dynamic> json) =
      _$RegulatoryDataImpl.fromJson;

  @override
  String get jurisdiction;
  @override
  String get regulation;
  @override
  String get status;
  @override
  DateTime get effectiveDate;
  @override
  double get impactScore;
  @override
  String get description;

  /// Create a copy of RegulatoryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegulatoryDataImplCopyWith<_$RegulatoryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
