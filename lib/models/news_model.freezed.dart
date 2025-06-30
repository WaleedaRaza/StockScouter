// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  double get sentiment => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;
  List<String> get mentionedStocks => throw _privateConstructorUsedError;
  List<String> get mentionedCryptos => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  List<String> get categories => throw _privateConstructorUsedError;
  List<String> get entities => throw _privateConstructorUsedError;
  List<SentimentAnalysis> get sentimentAnalysis =>
      throw _privateConstructorUsedError;
  List<StanceAnalysis> get stanceAnalysis => throw _privateConstructorUsedError;
  List<SourceAnalysis> get sourceAnalysis => throw _privateConstructorUsedError;
  List<RelatedArticle> get relatedArticles =>
      throw _privateConstructorUsedError;
  List<NewsEmbedding> get embeddings => throw _privateConstructorUsedError;
  bool get isRead => throw _privateConstructorUsedError;
  DateTime? get readAt => throw _privateConstructorUsedError;
  int get readCount => throw _privateConstructorUsedError;
  double get relevanceScore => throw _privateConstructorUsedError;
  List<String> get userTags => throw _privateConstructorUsedError;
  bool get isBookmarked => throw _privateConstructorUsedError;
  DateTime? get bookmarkedAt => throw _privateConstructorUsedError;

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
      DateTime lastUpdated,
      double sentiment,
      double confidence,
      List<String> mentionedStocks,
      List<String> mentionedCryptos,
      List<String> tags,
      List<String> categories,
      List<String> entities,
      List<SentimentAnalysis> sentimentAnalysis,
      List<StanceAnalysis> stanceAnalysis,
      List<SourceAnalysis> sourceAnalysis,
      List<RelatedArticle> relatedArticles,
      List<NewsEmbedding> embeddings,
      bool isRead,
      DateTime? readAt,
      int readCount,
      double relevanceScore,
      List<String> userTags,
      bool isBookmarked,
      DateTime? bookmarkedAt});
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
    Object? lastUpdated = null,
    Object? sentiment = null,
    Object? confidence = null,
    Object? mentionedStocks = null,
    Object? mentionedCryptos = null,
    Object? tags = null,
    Object? categories = null,
    Object? entities = null,
    Object? sentimentAnalysis = null,
    Object? stanceAnalysis = null,
    Object? sourceAnalysis = null,
    Object? relatedArticles = null,
    Object? embeddings = null,
    Object? isRead = null,
    Object? readAt = freezed,
    Object? readCount = null,
    Object? relevanceScore = null,
    Object? userTags = null,
    Object? isBookmarked = null,
    Object? bookmarkedAt = freezed,
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
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sentiment: null == sentiment
          ? _value.sentiment
          : sentiment // ignore: cast_nullable_to_non_nullable
              as double,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      mentionedStocks: null == mentionedStocks
          ? _value.mentionedStocks
          : mentionedStocks // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mentionedCryptos: null == mentionedCryptos
          ? _value.mentionedCryptos
          : mentionedCryptos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      entities: null == entities
          ? _value.entities
          : entities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sentimentAnalysis: null == sentimentAnalysis
          ? _value.sentimentAnalysis
          : sentimentAnalysis // ignore: cast_nullable_to_non_nullable
              as List<SentimentAnalysis>,
      stanceAnalysis: null == stanceAnalysis
          ? _value.stanceAnalysis
          : stanceAnalysis // ignore: cast_nullable_to_non_nullable
              as List<StanceAnalysis>,
      sourceAnalysis: null == sourceAnalysis
          ? _value.sourceAnalysis
          : sourceAnalysis // ignore: cast_nullable_to_non_nullable
              as List<SourceAnalysis>,
      relatedArticles: null == relatedArticles
          ? _value.relatedArticles
          : relatedArticles // ignore: cast_nullable_to_non_nullable
              as List<RelatedArticle>,
      embeddings: null == embeddings
          ? _value.embeddings
          : embeddings // ignore: cast_nullable_to_non_nullable
              as List<NewsEmbedding>,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      readAt: freezed == readAt
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      readCount: null == readCount
          ? _value.readCount
          : readCount // ignore: cast_nullable_to_non_nullable
              as int,
      relevanceScore: null == relevanceScore
          ? _value.relevanceScore
          : relevanceScore // ignore: cast_nullable_to_non_nullable
              as double,
      userTags: null == userTags
          ? _value.userTags
          : userTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isBookmarked: null == isBookmarked
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
      bookmarkedAt: freezed == bookmarkedAt
          ? _value.bookmarkedAt
          : bookmarkedAt // ignore: cast_nullable_to_non_nullable
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
      DateTime lastUpdated,
      double sentiment,
      double confidence,
      List<String> mentionedStocks,
      List<String> mentionedCryptos,
      List<String> tags,
      List<String> categories,
      List<String> entities,
      List<SentimentAnalysis> sentimentAnalysis,
      List<StanceAnalysis> stanceAnalysis,
      List<SourceAnalysis> sourceAnalysis,
      List<RelatedArticle> relatedArticles,
      List<NewsEmbedding> embeddings,
      bool isRead,
      DateTime? readAt,
      int readCount,
      double relevanceScore,
      List<String> userTags,
      bool isBookmarked,
      DateTime? bookmarkedAt});
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
    Object? lastUpdated = null,
    Object? sentiment = null,
    Object? confidence = null,
    Object? mentionedStocks = null,
    Object? mentionedCryptos = null,
    Object? tags = null,
    Object? categories = null,
    Object? entities = null,
    Object? sentimentAnalysis = null,
    Object? stanceAnalysis = null,
    Object? sourceAnalysis = null,
    Object? relatedArticles = null,
    Object? embeddings = null,
    Object? isRead = null,
    Object? readAt = freezed,
    Object? readCount = null,
    Object? relevanceScore = null,
    Object? userTags = null,
    Object? isBookmarked = null,
    Object? bookmarkedAt = freezed,
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
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sentiment: null == sentiment
          ? _value.sentiment
          : sentiment // ignore: cast_nullable_to_non_nullable
              as double,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      mentionedStocks: null == mentionedStocks
          ? _value._mentionedStocks
          : mentionedStocks // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mentionedCryptos: null == mentionedCryptos
          ? _value._mentionedCryptos
          : mentionedCryptos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      entities: null == entities
          ? _value._entities
          : entities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sentimentAnalysis: null == sentimentAnalysis
          ? _value._sentimentAnalysis
          : sentimentAnalysis // ignore: cast_nullable_to_non_nullable
              as List<SentimentAnalysis>,
      stanceAnalysis: null == stanceAnalysis
          ? _value._stanceAnalysis
          : stanceAnalysis // ignore: cast_nullable_to_non_nullable
              as List<StanceAnalysis>,
      sourceAnalysis: null == sourceAnalysis
          ? _value._sourceAnalysis
          : sourceAnalysis // ignore: cast_nullable_to_non_nullable
              as List<SourceAnalysis>,
      relatedArticles: null == relatedArticles
          ? _value._relatedArticles
          : relatedArticles // ignore: cast_nullable_to_non_nullable
              as List<RelatedArticle>,
      embeddings: null == embeddings
          ? _value._embeddings
          : embeddings // ignore: cast_nullable_to_non_nullable
              as List<NewsEmbedding>,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      readAt: freezed == readAt
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      readCount: null == readCount
          ? _value.readCount
          : readCount // ignore: cast_nullable_to_non_nullable
              as int,
      relevanceScore: null == relevanceScore
          ? _value.relevanceScore
          : relevanceScore // ignore: cast_nullable_to_non_nullable
              as double,
      userTags: null == userTags
          ? _value._userTags
          : userTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isBookmarked: null == isBookmarked
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
      bookmarkedAt: freezed == bookmarkedAt
          ? _value.bookmarkedAt
          : bookmarkedAt // ignore: cast_nullable_to_non_nullable
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
      required this.lastUpdated,
      required this.sentiment,
      required this.confidence,
      required final List<String> mentionedStocks,
      required final List<String> mentionedCryptos,
      required final List<String> tags,
      required final List<String> categories,
      required final List<String> entities,
      required final List<SentimentAnalysis> sentimentAnalysis,
      required final List<StanceAnalysis> stanceAnalysis,
      required final List<SourceAnalysis> sourceAnalysis,
      required final List<RelatedArticle> relatedArticles,
      required final List<NewsEmbedding> embeddings,
      required this.isRead,
      required this.readAt,
      required this.readCount,
      required this.relevanceScore,
      required final List<String> userTags,
      required this.isBookmarked,
      required this.bookmarkedAt})
      : _mentionedStocks = mentionedStocks,
        _mentionedCryptos = mentionedCryptos,
        _tags = tags,
        _categories = categories,
        _entities = entities,
        _sentimentAnalysis = sentimentAnalysis,
        _stanceAnalysis = stanceAnalysis,
        _sourceAnalysis = sourceAnalysis,
        _relatedArticles = relatedArticles,
        _embeddings = embeddings,
        _userTags = userTags;

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
  final DateTime lastUpdated;
  @override
  final double sentiment;
  @override
  final double confidence;
  final List<String> _mentionedStocks;
  @override
  List<String> get mentionedStocks {
    if (_mentionedStocks is EqualUnmodifiableListView) return _mentionedStocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mentionedStocks);
  }

  final List<String> _mentionedCryptos;
  @override
  List<String> get mentionedCryptos {
    if (_mentionedCryptos is EqualUnmodifiableListView)
      return _mentionedCryptos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mentionedCryptos);
  }

  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<String> _categories;
  @override
  List<String> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<String> _entities;
  @override
  List<String> get entities {
    if (_entities is EqualUnmodifiableListView) return _entities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entities);
  }

  final List<SentimentAnalysis> _sentimentAnalysis;
  @override
  List<SentimentAnalysis> get sentimentAnalysis {
    if (_sentimentAnalysis is EqualUnmodifiableListView)
      return _sentimentAnalysis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sentimentAnalysis);
  }

  final List<StanceAnalysis> _stanceAnalysis;
  @override
  List<StanceAnalysis> get stanceAnalysis {
    if (_stanceAnalysis is EqualUnmodifiableListView) return _stanceAnalysis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stanceAnalysis);
  }

  final List<SourceAnalysis> _sourceAnalysis;
  @override
  List<SourceAnalysis> get sourceAnalysis {
    if (_sourceAnalysis is EqualUnmodifiableListView) return _sourceAnalysis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sourceAnalysis);
  }

  final List<RelatedArticle> _relatedArticles;
  @override
  List<RelatedArticle> get relatedArticles {
    if (_relatedArticles is EqualUnmodifiableListView) return _relatedArticles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relatedArticles);
  }

  final List<NewsEmbedding> _embeddings;
  @override
  List<NewsEmbedding> get embeddings {
    if (_embeddings is EqualUnmodifiableListView) return _embeddings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_embeddings);
  }

  @override
  final bool isRead;
  @override
  final DateTime? readAt;
  @override
  final int readCount;
  @override
  final double relevanceScore;
  final List<String> _userTags;
  @override
  List<String> get userTags {
    if (_userTags is EqualUnmodifiableListView) return _userTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userTags);
  }

  @override
  final bool isBookmarked;
  @override
  final DateTime? bookmarkedAt;

  @override
  String toString() {
    return 'NewsArticle(id: $id, title: $title, summary: $summary, content: $content, source: $source, url: $url, publishedAt: $publishedAt, lastUpdated: $lastUpdated, sentiment: $sentiment, confidence: $confidence, mentionedStocks: $mentionedStocks, mentionedCryptos: $mentionedCryptos, tags: $tags, categories: $categories, entities: $entities, sentimentAnalysis: $sentimentAnalysis, stanceAnalysis: $stanceAnalysis, sourceAnalysis: $sourceAnalysis, relatedArticles: $relatedArticles, embeddings: $embeddings, isRead: $isRead, readAt: $readAt, readCount: $readCount, relevanceScore: $relevanceScore, userTags: $userTags, isBookmarked: $isBookmarked, bookmarkedAt: $bookmarkedAt)';
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
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.sentiment, sentiment) ||
                other.sentiment == sentiment) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            const DeepCollectionEquality()
                .equals(other._mentionedStocks, _mentionedStocks) &&
            const DeepCollectionEquality()
                .equals(other._mentionedCryptos, _mentionedCryptos) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._entities, _entities) &&
            const DeepCollectionEquality()
                .equals(other._sentimentAnalysis, _sentimentAnalysis) &&
            const DeepCollectionEquality()
                .equals(other._stanceAnalysis, _stanceAnalysis) &&
            const DeepCollectionEquality()
                .equals(other._sourceAnalysis, _sourceAnalysis) &&
            const DeepCollectionEquality()
                .equals(other._relatedArticles, _relatedArticles) &&
            const DeepCollectionEquality()
                .equals(other._embeddings, _embeddings) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.readAt, readAt) || other.readAt == readAt) &&
            (identical(other.readCount, readCount) ||
                other.readCount == readCount) &&
            (identical(other.relevanceScore, relevanceScore) ||
                other.relevanceScore == relevanceScore) &&
            const DeepCollectionEquality().equals(other._userTags, _userTags) &&
            (identical(other.isBookmarked, isBookmarked) ||
                other.isBookmarked == isBookmarked) &&
            (identical(other.bookmarkedAt, bookmarkedAt) ||
                other.bookmarkedAt == bookmarkedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        summary,
        content,
        source,
        url,
        publishedAt,
        lastUpdated,
        sentiment,
        confidence,
        const DeepCollectionEquality().hash(_mentionedStocks),
        const DeepCollectionEquality().hash(_mentionedCryptos),
        const DeepCollectionEquality().hash(_tags),
        const DeepCollectionEquality().hash(_categories),
        const DeepCollectionEquality().hash(_entities),
        const DeepCollectionEquality().hash(_sentimentAnalysis),
        const DeepCollectionEquality().hash(_stanceAnalysis),
        const DeepCollectionEquality().hash(_sourceAnalysis),
        const DeepCollectionEquality().hash(_relatedArticles),
        const DeepCollectionEquality().hash(_embeddings),
        isRead,
        readAt,
        readCount,
        relevanceScore,
        const DeepCollectionEquality().hash(_userTags),
        isBookmarked,
        bookmarkedAt
      ]);

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
      required final DateTime lastUpdated,
      required final double sentiment,
      required final double confidence,
      required final List<String> mentionedStocks,
      required final List<String> mentionedCryptos,
      required final List<String> tags,
      required final List<String> categories,
      required final List<String> entities,
      required final List<SentimentAnalysis> sentimentAnalysis,
      required final List<StanceAnalysis> stanceAnalysis,
      required final List<SourceAnalysis> sourceAnalysis,
      required final List<RelatedArticle> relatedArticles,
      required final List<NewsEmbedding> embeddings,
      required final bool isRead,
      required final DateTime? readAt,
      required final int readCount,
      required final double relevanceScore,
      required final List<String> userTags,
      required final bool isBookmarked,
      required final DateTime? bookmarkedAt}) = _$NewsArticleImpl;

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
  DateTime get lastUpdated;
  @override
  double get sentiment;
  @override
  double get confidence;
  @override
  List<String> get mentionedStocks;
  @override
  List<String> get mentionedCryptos;
  @override
  List<String> get tags;
  @override
  List<String> get categories;
  @override
  List<String> get entities;
  @override
  List<SentimentAnalysis> get sentimentAnalysis;
  @override
  List<StanceAnalysis> get stanceAnalysis;
  @override
  List<SourceAnalysis> get sourceAnalysis;
  @override
  List<RelatedArticle> get relatedArticles;
  @override
  List<NewsEmbedding> get embeddings;
  @override
  bool get isRead;
  @override
  DateTime? get readAt;
  @override
  int get readCount;
  @override
  double get relevanceScore;
  @override
  List<String> get userTags;
  @override
  bool get isBookmarked;
  @override
  DateTime? get bookmarkedAt;

  /// Create a copy of NewsArticle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsArticleImplCopyWith<_$NewsArticleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SentimentAnalysis _$SentimentAnalysisFromJson(Map<String, dynamic> json) {
  return _SentimentAnalysis.fromJson(json);
}

/// @nodoc
mixin _$SentimentAnalysis {
  String get model => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;
  DateTime get analyzedAt => throw _privateConstructorUsedError;
  List<SentimentSegment> get segments => throw _privateConstructorUsedError;

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
      {String model,
      double score,
      String label,
      double confidence,
      DateTime analyzedAt,
      List<SentimentSegment> segments});
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
    Object? model = null,
    Object? score = null,
    Object? label = null,
    Object? confidence = null,
    Object? analyzedAt = null,
    Object? segments = null,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      analyzedAt: null == analyzedAt
          ? _value.analyzedAt
          : analyzedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      segments: null == segments
          ? _value.segments
          : segments // ignore: cast_nullable_to_non_nullable
              as List<SentimentSegment>,
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
      {String model,
      double score,
      String label,
      double confidence,
      DateTime analyzedAt,
      List<SentimentSegment> segments});
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
    Object? model = null,
    Object? score = null,
    Object? label = null,
    Object? confidence = null,
    Object? analyzedAt = null,
    Object? segments = null,
  }) {
    return _then(_$SentimentAnalysisImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      analyzedAt: null == analyzedAt
          ? _value.analyzedAt
          : analyzedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      segments: null == segments
          ? _value._segments
          : segments // ignore: cast_nullable_to_non_nullable
              as List<SentimentSegment>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SentimentAnalysisImpl implements _SentimentAnalysis {
  const _$SentimentAnalysisImpl(
      {required this.model,
      required this.score,
      required this.label,
      required this.confidence,
      required this.analyzedAt,
      required final List<SentimentSegment> segments})
      : _segments = segments;

  factory _$SentimentAnalysisImpl.fromJson(Map<String, dynamic> json) =>
      _$$SentimentAnalysisImplFromJson(json);

  @override
  final String model;
  @override
  final double score;
  @override
  final String label;
  @override
  final double confidence;
  @override
  final DateTime analyzedAt;
  final List<SentimentSegment> _segments;
  @override
  List<SentimentSegment> get segments {
    if (_segments is EqualUnmodifiableListView) return _segments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_segments);
  }

  @override
  String toString() {
    return 'SentimentAnalysis(model: $model, score: $score, label: $label, confidence: $confidence, analyzedAt: $analyzedAt, segments: $segments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SentimentAnalysisImpl &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            (identical(other.analyzedAt, analyzedAt) ||
                other.analyzedAt == analyzedAt) &&
            const DeepCollectionEquality().equals(other._segments, _segments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, model, score, label, confidence,
      analyzedAt, const DeepCollectionEquality().hash(_segments));

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
          {required final String model,
          required final double score,
          required final String label,
          required final double confidence,
          required final DateTime analyzedAt,
          required final List<SentimentSegment> segments}) =
      _$SentimentAnalysisImpl;

  factory _SentimentAnalysis.fromJson(Map<String, dynamic> json) =
      _$SentimentAnalysisImpl.fromJson;

  @override
  String get model;
  @override
  double get score;
  @override
  String get label;
  @override
  double get confidence;
  @override
  DateTime get analyzedAt;
  @override
  List<SentimentSegment> get segments;

  /// Create a copy of SentimentAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SentimentAnalysisImplCopyWith<_$SentimentAnalysisImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SentimentSegment _$SentimentSegmentFromJson(Map<String, dynamic> json) {
  return _SentimentSegment.fromJson(json);
}

/// @nodoc
mixin _$SentimentSegment {
  String get text => throw _privateConstructorUsedError;
  double get sentiment => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  int get startIndex => throw _privateConstructorUsedError;
  int get endIndex => throw _privateConstructorUsedError;

  /// Serializes this SentimentSegment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SentimentSegment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SentimentSegmentCopyWith<SentimentSegment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SentimentSegmentCopyWith<$Res> {
  factory $SentimentSegmentCopyWith(
          SentimentSegment value, $Res Function(SentimentSegment) then) =
      _$SentimentSegmentCopyWithImpl<$Res, SentimentSegment>;
  @useResult
  $Res call(
      {String text,
      double sentiment,
      String label,
      int startIndex,
      int endIndex});
}

/// @nodoc
class _$SentimentSegmentCopyWithImpl<$Res, $Val extends SentimentSegment>
    implements $SentimentSegmentCopyWith<$Res> {
  _$SentimentSegmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SentimentSegment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? sentiment = null,
    Object? label = null,
    Object? startIndex = null,
    Object? endIndex = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      sentiment: null == sentiment
          ? _value.sentiment
          : sentiment // ignore: cast_nullable_to_non_nullable
              as double,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$SentimentSegmentImplCopyWith<$Res>
    implements $SentimentSegmentCopyWith<$Res> {
  factory _$$SentimentSegmentImplCopyWith(_$SentimentSegmentImpl value,
          $Res Function(_$SentimentSegmentImpl) then) =
      __$$SentimentSegmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String text,
      double sentiment,
      String label,
      int startIndex,
      int endIndex});
}

/// @nodoc
class __$$SentimentSegmentImplCopyWithImpl<$Res>
    extends _$SentimentSegmentCopyWithImpl<$Res, _$SentimentSegmentImpl>
    implements _$$SentimentSegmentImplCopyWith<$Res> {
  __$$SentimentSegmentImplCopyWithImpl(_$SentimentSegmentImpl _value,
      $Res Function(_$SentimentSegmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of SentimentSegment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? sentiment = null,
    Object? label = null,
    Object? startIndex = null,
    Object? endIndex = null,
  }) {
    return _then(_$SentimentSegmentImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      sentiment: null == sentiment
          ? _value.sentiment
          : sentiment // ignore: cast_nullable_to_non_nullable
              as double,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$SentimentSegmentImpl implements _SentimentSegment {
  const _$SentimentSegmentImpl(
      {required this.text,
      required this.sentiment,
      required this.label,
      required this.startIndex,
      required this.endIndex});

  factory _$SentimentSegmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$SentimentSegmentImplFromJson(json);

  @override
  final String text;
  @override
  final double sentiment;
  @override
  final String label;
  @override
  final int startIndex;
  @override
  final int endIndex;

  @override
  String toString() {
    return 'SentimentSegment(text: $text, sentiment: $sentiment, label: $label, startIndex: $startIndex, endIndex: $endIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SentimentSegmentImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.sentiment, sentiment) ||
                other.sentiment == sentiment) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.startIndex, startIndex) ||
                other.startIndex == startIndex) &&
            (identical(other.endIndex, endIndex) ||
                other.endIndex == endIndex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, text, sentiment, label, startIndex, endIndex);

  /// Create a copy of SentimentSegment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SentimentSegmentImplCopyWith<_$SentimentSegmentImpl> get copyWith =>
      __$$SentimentSegmentImplCopyWithImpl<_$SentimentSegmentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SentimentSegmentImplToJson(
      this,
    );
  }
}

abstract class _SentimentSegment implements SentimentSegment {
  const factory _SentimentSegment(
      {required final String text,
      required final double sentiment,
      required final String label,
      required final int startIndex,
      required final int endIndex}) = _$SentimentSegmentImpl;

  factory _SentimentSegment.fromJson(Map<String, dynamic> json) =
      _$SentimentSegmentImpl.fromJson;

  @override
  String get text;
  @override
  double get sentiment;
  @override
  String get label;
  @override
  int get startIndex;
  @override
  int get endIndex;

  /// Create a copy of SentimentSegment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SentimentSegmentImplCopyWith<_$SentimentSegmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StanceAnalysis _$StanceAnalysisFromJson(Map<String, dynamic> json) {
  return _StanceAnalysis.fromJson(json);
}

/// @nodoc
mixin _$StanceAnalysis {
  String get target => throw _privateConstructorUsedError;
  String get stance => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;
  List<String> get evidence => throw _privateConstructorUsedError;
  DateTime get analyzedAt => throw _privateConstructorUsedError;

  /// Serializes this StanceAnalysis to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StanceAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StanceAnalysisCopyWith<StanceAnalysis> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StanceAnalysisCopyWith<$Res> {
  factory $StanceAnalysisCopyWith(
          StanceAnalysis value, $Res Function(StanceAnalysis) then) =
      _$StanceAnalysisCopyWithImpl<$Res, StanceAnalysis>;
  @useResult
  $Res call(
      {String target,
      String stance,
      double confidence,
      List<String> evidence,
      DateTime analyzedAt});
}

/// @nodoc
class _$StanceAnalysisCopyWithImpl<$Res, $Val extends StanceAnalysis>
    implements $StanceAnalysisCopyWith<$Res> {
  _$StanceAnalysisCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StanceAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? target = null,
    Object? stance = null,
    Object? confidence = null,
    Object? evidence = null,
    Object? analyzedAt = null,
  }) {
    return _then(_value.copyWith(
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String,
      stance: null == stance
          ? _value.stance
          : stance // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      evidence: null == evidence
          ? _value.evidence
          : evidence // ignore: cast_nullable_to_non_nullable
              as List<String>,
      analyzedAt: null == analyzedAt
          ? _value.analyzedAt
          : analyzedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StanceAnalysisImplCopyWith<$Res>
    implements $StanceAnalysisCopyWith<$Res> {
  factory _$$StanceAnalysisImplCopyWith(_$StanceAnalysisImpl value,
          $Res Function(_$StanceAnalysisImpl) then) =
      __$$StanceAnalysisImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String target,
      String stance,
      double confidence,
      List<String> evidence,
      DateTime analyzedAt});
}

/// @nodoc
class __$$StanceAnalysisImplCopyWithImpl<$Res>
    extends _$StanceAnalysisCopyWithImpl<$Res, _$StanceAnalysisImpl>
    implements _$$StanceAnalysisImplCopyWith<$Res> {
  __$$StanceAnalysisImplCopyWithImpl(
      _$StanceAnalysisImpl _value, $Res Function(_$StanceAnalysisImpl) _then)
      : super(_value, _then);

  /// Create a copy of StanceAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? target = null,
    Object? stance = null,
    Object? confidence = null,
    Object? evidence = null,
    Object? analyzedAt = null,
  }) {
    return _then(_$StanceAnalysisImpl(
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String,
      stance: null == stance
          ? _value.stance
          : stance // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      evidence: null == evidence
          ? _value._evidence
          : evidence // ignore: cast_nullable_to_non_nullable
              as List<String>,
      analyzedAt: null == analyzedAt
          ? _value.analyzedAt
          : analyzedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StanceAnalysisImpl implements _StanceAnalysis {
  const _$StanceAnalysisImpl(
      {required this.target,
      required this.stance,
      required this.confidence,
      required final List<String> evidence,
      required this.analyzedAt})
      : _evidence = evidence;

  factory _$StanceAnalysisImpl.fromJson(Map<String, dynamic> json) =>
      _$$StanceAnalysisImplFromJson(json);

  @override
  final String target;
  @override
  final String stance;
  @override
  final double confidence;
  final List<String> _evidence;
  @override
  List<String> get evidence {
    if (_evidence is EqualUnmodifiableListView) return _evidence;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_evidence);
  }

  @override
  final DateTime analyzedAt;

  @override
  String toString() {
    return 'StanceAnalysis(target: $target, stance: $stance, confidence: $confidence, evidence: $evidence, analyzedAt: $analyzedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StanceAnalysisImpl &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.stance, stance) || other.stance == stance) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            const DeepCollectionEquality().equals(other._evidence, _evidence) &&
            (identical(other.analyzedAt, analyzedAt) ||
                other.analyzedAt == analyzedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, target, stance, confidence,
      const DeepCollectionEquality().hash(_evidence), analyzedAt);

  /// Create a copy of StanceAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StanceAnalysisImplCopyWith<_$StanceAnalysisImpl> get copyWith =>
      __$$StanceAnalysisImplCopyWithImpl<_$StanceAnalysisImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StanceAnalysisImplToJson(
      this,
    );
  }
}

abstract class _StanceAnalysis implements StanceAnalysis {
  const factory _StanceAnalysis(
      {required final String target,
      required final String stance,
      required final double confidence,
      required final List<String> evidence,
      required final DateTime analyzedAt}) = _$StanceAnalysisImpl;

  factory _StanceAnalysis.fromJson(Map<String, dynamic> json) =
      _$StanceAnalysisImpl.fromJson;

  @override
  String get target;
  @override
  String get stance;
  @override
  double get confidence;
  @override
  List<String> get evidence;
  @override
  DateTime get analyzedAt;

  /// Create a copy of StanceAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StanceAnalysisImplCopyWith<_$StanceAnalysisImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SourceAnalysis _$SourceAnalysisFromJson(Map<String, dynamic> json) {
  return _SourceAnalysis.fromJson(json);
}

/// @nodoc
mixin _$SourceAnalysis {
  String get source => throw _privateConstructorUsedError;
  double get reliability => throw _privateConstructorUsedError;
  double get bias => throw _privateConstructorUsedError;
  String get biasDirection => throw _privateConstructorUsedError;
  List<String> get factCheckResults => throw _privateConstructorUsedError;
  DateTime get analyzedAt => throw _privateConstructorUsedError;

  /// Serializes this SourceAnalysis to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SourceAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SourceAnalysisCopyWith<SourceAnalysis> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceAnalysisCopyWith<$Res> {
  factory $SourceAnalysisCopyWith(
          SourceAnalysis value, $Res Function(SourceAnalysis) then) =
      _$SourceAnalysisCopyWithImpl<$Res, SourceAnalysis>;
  @useResult
  $Res call(
      {String source,
      double reliability,
      double bias,
      String biasDirection,
      List<String> factCheckResults,
      DateTime analyzedAt});
}

/// @nodoc
class _$SourceAnalysisCopyWithImpl<$Res, $Val extends SourceAnalysis>
    implements $SourceAnalysisCopyWith<$Res> {
  _$SourceAnalysisCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SourceAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? reliability = null,
    Object? bias = null,
    Object? biasDirection = null,
    Object? factCheckResults = null,
    Object? analyzedAt = null,
  }) {
    return _then(_value.copyWith(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      reliability: null == reliability
          ? _value.reliability
          : reliability // ignore: cast_nullable_to_non_nullable
              as double,
      bias: null == bias
          ? _value.bias
          : bias // ignore: cast_nullable_to_non_nullable
              as double,
      biasDirection: null == biasDirection
          ? _value.biasDirection
          : biasDirection // ignore: cast_nullable_to_non_nullable
              as String,
      factCheckResults: null == factCheckResults
          ? _value.factCheckResults
          : factCheckResults // ignore: cast_nullable_to_non_nullable
              as List<String>,
      analyzedAt: null == analyzedAt
          ? _value.analyzedAt
          : analyzedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SourceAnalysisImplCopyWith<$Res>
    implements $SourceAnalysisCopyWith<$Res> {
  factory _$$SourceAnalysisImplCopyWith(_$SourceAnalysisImpl value,
          $Res Function(_$SourceAnalysisImpl) then) =
      __$$SourceAnalysisImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String source,
      double reliability,
      double bias,
      String biasDirection,
      List<String> factCheckResults,
      DateTime analyzedAt});
}

/// @nodoc
class __$$SourceAnalysisImplCopyWithImpl<$Res>
    extends _$SourceAnalysisCopyWithImpl<$Res, _$SourceAnalysisImpl>
    implements _$$SourceAnalysisImplCopyWith<$Res> {
  __$$SourceAnalysisImplCopyWithImpl(
      _$SourceAnalysisImpl _value, $Res Function(_$SourceAnalysisImpl) _then)
      : super(_value, _then);

  /// Create a copy of SourceAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? reliability = null,
    Object? bias = null,
    Object? biasDirection = null,
    Object? factCheckResults = null,
    Object? analyzedAt = null,
  }) {
    return _then(_$SourceAnalysisImpl(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      reliability: null == reliability
          ? _value.reliability
          : reliability // ignore: cast_nullable_to_non_nullable
              as double,
      bias: null == bias
          ? _value.bias
          : bias // ignore: cast_nullable_to_non_nullable
              as double,
      biasDirection: null == biasDirection
          ? _value.biasDirection
          : biasDirection // ignore: cast_nullable_to_non_nullable
              as String,
      factCheckResults: null == factCheckResults
          ? _value._factCheckResults
          : factCheckResults // ignore: cast_nullable_to_non_nullable
              as List<String>,
      analyzedAt: null == analyzedAt
          ? _value.analyzedAt
          : analyzedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SourceAnalysisImpl implements _SourceAnalysis {
  const _$SourceAnalysisImpl(
      {required this.source,
      required this.reliability,
      required this.bias,
      required this.biasDirection,
      required final List<String> factCheckResults,
      required this.analyzedAt})
      : _factCheckResults = factCheckResults;

  factory _$SourceAnalysisImpl.fromJson(Map<String, dynamic> json) =>
      _$$SourceAnalysisImplFromJson(json);

  @override
  final String source;
  @override
  final double reliability;
  @override
  final double bias;
  @override
  final String biasDirection;
  final List<String> _factCheckResults;
  @override
  List<String> get factCheckResults {
    if (_factCheckResults is EqualUnmodifiableListView)
      return _factCheckResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_factCheckResults);
  }

  @override
  final DateTime analyzedAt;

  @override
  String toString() {
    return 'SourceAnalysis(source: $source, reliability: $reliability, bias: $bias, biasDirection: $biasDirection, factCheckResults: $factCheckResults, analyzedAt: $analyzedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SourceAnalysisImpl &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.reliability, reliability) ||
                other.reliability == reliability) &&
            (identical(other.bias, bias) || other.bias == bias) &&
            (identical(other.biasDirection, biasDirection) ||
                other.biasDirection == biasDirection) &&
            const DeepCollectionEquality()
                .equals(other._factCheckResults, _factCheckResults) &&
            (identical(other.analyzedAt, analyzedAt) ||
                other.analyzedAt == analyzedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      source,
      reliability,
      bias,
      biasDirection,
      const DeepCollectionEquality().hash(_factCheckResults),
      analyzedAt);

  /// Create a copy of SourceAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SourceAnalysisImplCopyWith<_$SourceAnalysisImpl> get copyWith =>
      __$$SourceAnalysisImplCopyWithImpl<_$SourceAnalysisImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SourceAnalysisImplToJson(
      this,
    );
  }
}

abstract class _SourceAnalysis implements SourceAnalysis {
  const factory _SourceAnalysis(
      {required final String source,
      required final double reliability,
      required final double bias,
      required final String biasDirection,
      required final List<String> factCheckResults,
      required final DateTime analyzedAt}) = _$SourceAnalysisImpl;

  factory _SourceAnalysis.fromJson(Map<String, dynamic> json) =
      _$SourceAnalysisImpl.fromJson;

  @override
  String get source;
  @override
  double get reliability;
  @override
  double get bias;
  @override
  String get biasDirection;
  @override
  List<String> get factCheckResults;
  @override
  DateTime get analyzedAt;

  /// Create a copy of SourceAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SourceAnalysisImplCopyWith<_$SourceAnalysisImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RelatedArticle _$RelatedArticleFromJson(Map<String, dynamic> json) {
  return _RelatedArticle.fromJson(json);
}

/// @nodoc
mixin _$RelatedArticle {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  double get similarity => throw _privateConstructorUsedError;
  String get relationship => throw _privateConstructorUsedError;
  DateTime get publishedAt => throw _privateConstructorUsedError;

  /// Serializes this RelatedArticle to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RelatedArticle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RelatedArticleCopyWith<RelatedArticle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelatedArticleCopyWith<$Res> {
  factory $RelatedArticleCopyWith(
          RelatedArticle value, $Res Function(RelatedArticle) then) =
      _$RelatedArticleCopyWithImpl<$Res, RelatedArticle>;
  @useResult
  $Res call(
      {String id,
      String title,
      double similarity,
      String relationship,
      DateTime publishedAt});
}

/// @nodoc
class _$RelatedArticleCopyWithImpl<$Res, $Val extends RelatedArticle>
    implements $RelatedArticleCopyWith<$Res> {
  _$RelatedArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RelatedArticle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? similarity = null,
    Object? relationship = null,
    Object? publishedAt = null,
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
      similarity: null == similarity
          ? _value.similarity
          : similarity // ignore: cast_nullable_to_non_nullable
              as double,
      relationship: null == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RelatedArticleImplCopyWith<$Res>
    implements $RelatedArticleCopyWith<$Res> {
  factory _$$RelatedArticleImplCopyWith(_$RelatedArticleImpl value,
          $Res Function(_$RelatedArticleImpl) then) =
      __$$RelatedArticleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      double similarity,
      String relationship,
      DateTime publishedAt});
}

/// @nodoc
class __$$RelatedArticleImplCopyWithImpl<$Res>
    extends _$RelatedArticleCopyWithImpl<$Res, _$RelatedArticleImpl>
    implements _$$RelatedArticleImplCopyWith<$Res> {
  __$$RelatedArticleImplCopyWithImpl(
      _$RelatedArticleImpl _value, $Res Function(_$RelatedArticleImpl) _then)
      : super(_value, _then);

  /// Create a copy of RelatedArticle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? similarity = null,
    Object? relationship = null,
    Object? publishedAt = null,
  }) {
    return _then(_$RelatedArticleImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      similarity: null == similarity
          ? _value.similarity
          : similarity // ignore: cast_nullable_to_non_nullable
              as double,
      relationship: null == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RelatedArticleImpl implements _RelatedArticle {
  const _$RelatedArticleImpl(
      {required this.id,
      required this.title,
      required this.similarity,
      required this.relationship,
      required this.publishedAt});

  factory _$RelatedArticleImpl.fromJson(Map<String, dynamic> json) =>
      _$$RelatedArticleImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final double similarity;
  @override
  final String relationship;
  @override
  final DateTime publishedAt;

  @override
  String toString() {
    return 'RelatedArticle(id: $id, title: $title, similarity: $similarity, relationship: $relationship, publishedAt: $publishedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelatedArticleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.similarity, similarity) ||
                other.similarity == similarity) &&
            (identical(other.relationship, relationship) ||
                other.relationship == relationship) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, similarity, relationship, publishedAt);

  /// Create a copy of RelatedArticle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RelatedArticleImplCopyWith<_$RelatedArticleImpl> get copyWith =>
      __$$RelatedArticleImplCopyWithImpl<_$RelatedArticleImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RelatedArticleImplToJson(
      this,
    );
  }
}

abstract class _RelatedArticle implements RelatedArticle {
  const factory _RelatedArticle(
      {required final String id,
      required final String title,
      required final double similarity,
      required final String relationship,
      required final DateTime publishedAt}) = _$RelatedArticleImpl;

  factory _RelatedArticle.fromJson(Map<String, dynamic> json) =
      _$RelatedArticleImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  double get similarity;
  @override
  String get relationship;
  @override
  DateTime get publishedAt;

  /// Create a copy of RelatedArticle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RelatedArticleImplCopyWith<_$RelatedArticleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsEmbedding _$NewsEmbeddingFromJson(Map<String, dynamic> json) {
  return _NewsEmbedding.fromJson(json);
}

/// @nodoc
mixin _$NewsEmbedding {
  String get model => throw _privateConstructorUsedError;
  List<double> get vector => throw _privateConstructorUsedError;
  DateTime get generatedAt => throw _privateConstructorUsedError;

  /// Serializes this NewsEmbedding to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsEmbedding
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsEmbeddingCopyWith<NewsEmbedding> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEmbeddingCopyWith<$Res> {
  factory $NewsEmbeddingCopyWith(
          NewsEmbedding value, $Res Function(NewsEmbedding) then) =
      _$NewsEmbeddingCopyWithImpl<$Res, NewsEmbedding>;
  @useResult
  $Res call({String model, List<double> vector, DateTime generatedAt});
}

/// @nodoc
class _$NewsEmbeddingCopyWithImpl<$Res, $Val extends NewsEmbedding>
    implements $NewsEmbeddingCopyWith<$Res> {
  _$NewsEmbeddingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsEmbedding
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? vector = null,
    Object? generatedAt = null,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      vector: null == vector
          ? _value.vector
          : vector // ignore: cast_nullable_to_non_nullable
              as List<double>,
      generatedAt: null == generatedAt
          ? _value.generatedAt
          : generatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsEmbeddingImplCopyWith<$Res>
    implements $NewsEmbeddingCopyWith<$Res> {
  factory _$$NewsEmbeddingImplCopyWith(
          _$NewsEmbeddingImpl value, $Res Function(_$NewsEmbeddingImpl) then) =
      __$$NewsEmbeddingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String model, List<double> vector, DateTime generatedAt});
}

/// @nodoc
class __$$NewsEmbeddingImplCopyWithImpl<$Res>
    extends _$NewsEmbeddingCopyWithImpl<$Res, _$NewsEmbeddingImpl>
    implements _$$NewsEmbeddingImplCopyWith<$Res> {
  __$$NewsEmbeddingImplCopyWithImpl(
      _$NewsEmbeddingImpl _value, $Res Function(_$NewsEmbeddingImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsEmbedding
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? vector = null,
    Object? generatedAt = null,
  }) {
    return _then(_$NewsEmbeddingImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      vector: null == vector
          ? _value._vector
          : vector // ignore: cast_nullable_to_non_nullable
              as List<double>,
      generatedAt: null == generatedAt
          ? _value.generatedAt
          : generatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsEmbeddingImpl implements _NewsEmbedding {
  const _$NewsEmbeddingImpl(
      {required this.model,
      required final List<double> vector,
      required this.generatedAt})
      : _vector = vector;

  factory _$NewsEmbeddingImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsEmbeddingImplFromJson(json);

  @override
  final String model;
  final List<double> _vector;
  @override
  List<double> get vector {
    if (_vector is EqualUnmodifiableListView) return _vector;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vector);
  }

  @override
  final DateTime generatedAt;

  @override
  String toString() {
    return 'NewsEmbedding(model: $model, vector: $vector, generatedAt: $generatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsEmbeddingImpl &&
            (identical(other.model, model) || other.model == model) &&
            const DeepCollectionEquality().equals(other._vector, _vector) &&
            (identical(other.generatedAt, generatedAt) ||
                other.generatedAt == generatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, model,
      const DeepCollectionEquality().hash(_vector), generatedAt);

  /// Create a copy of NewsEmbedding
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsEmbeddingImplCopyWith<_$NewsEmbeddingImpl> get copyWith =>
      __$$NewsEmbeddingImplCopyWithImpl<_$NewsEmbeddingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsEmbeddingImplToJson(
      this,
    );
  }
}

abstract class _NewsEmbedding implements NewsEmbedding {
  const factory _NewsEmbedding(
      {required final String model,
      required final List<double> vector,
      required final DateTime generatedAt}) = _$NewsEmbeddingImpl;

  factory _NewsEmbedding.fromJson(Map<String, dynamic> json) =
      _$NewsEmbeddingImpl.fromJson;

  @override
  String get model;
  @override
  List<double> get vector;
  @override
  DateTime get generatedAt;

  /// Create a copy of NewsEmbedding
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsEmbeddingImplCopyWith<_$NewsEmbeddingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsQuery _$NewsQueryFromJson(Map<String, dynamic> json) {
  return _NewsQuery.fromJson(json);
}

/// @nodoc
mixin _$NewsQuery {
  String get id => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  List<String> get filters => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  List<NewsArticle> get results => throw _privateConstructorUsedError;
  double get relevanceThreshold => throw _privateConstructorUsedError;
  int get maxResults => throw _privateConstructorUsedError;
  List<String> get sources => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;

  /// Serializes this NewsQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsQueryCopyWith<NewsQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsQueryCopyWith<$Res> {
  factory $NewsQueryCopyWith(NewsQuery value, $Res Function(NewsQuery) then) =
      _$NewsQueryCopyWithImpl<$Res, NewsQuery>;
  @useResult
  $Res call(
      {String id,
      String query,
      String type,
      List<String> filters,
      DateTime timestamp,
      List<NewsArticle> results,
      double relevanceThreshold,
      int maxResults,
      List<String> sources,
      DateTime? startDate,
      DateTime? endDate});
}

/// @nodoc
class _$NewsQueryCopyWithImpl<$Res, $Val extends NewsQuery>
    implements $NewsQueryCopyWith<$Res> {
  _$NewsQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? query = null,
    Object? type = null,
    Object? filters = null,
    Object? timestamp = null,
    Object? results = null,
    Object? relevanceThreshold = null,
    Object? maxResults = null,
    Object? sources = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
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
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<NewsArticle>,
      relevanceThreshold: null == relevanceThreshold
          ? _value.relevanceThreshold
          : relevanceThreshold // ignore: cast_nullable_to_non_nullable
              as double,
      maxResults: null == maxResults
          ? _value.maxResults
          : maxResults // ignore: cast_nullable_to_non_nullable
              as int,
      sources: null == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<String>,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsQueryImplCopyWith<$Res>
    implements $NewsQueryCopyWith<$Res> {
  factory _$$NewsQueryImplCopyWith(
          _$NewsQueryImpl value, $Res Function(_$NewsQueryImpl) then) =
      __$$NewsQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String query,
      String type,
      List<String> filters,
      DateTime timestamp,
      List<NewsArticle> results,
      double relevanceThreshold,
      int maxResults,
      List<String> sources,
      DateTime? startDate,
      DateTime? endDate});
}

/// @nodoc
class __$$NewsQueryImplCopyWithImpl<$Res>
    extends _$NewsQueryCopyWithImpl<$Res, _$NewsQueryImpl>
    implements _$$NewsQueryImplCopyWith<$Res> {
  __$$NewsQueryImplCopyWithImpl(
      _$NewsQueryImpl _value, $Res Function(_$NewsQueryImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? query = null,
    Object? type = null,
    Object? filters = null,
    Object? timestamp = null,
    Object? results = null,
    Object? relevanceThreshold = null,
    Object? maxResults = null,
    Object? sources = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_$NewsQueryImpl(
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
      filters: null == filters
          ? _value._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<NewsArticle>,
      relevanceThreshold: null == relevanceThreshold
          ? _value.relevanceThreshold
          : relevanceThreshold // ignore: cast_nullable_to_non_nullable
              as double,
      maxResults: null == maxResults
          ? _value.maxResults
          : maxResults // ignore: cast_nullable_to_non_nullable
              as int,
      sources: null == sources
          ? _value._sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<String>,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsQueryImpl implements _NewsQuery {
  const _$NewsQueryImpl(
      {required this.id,
      required this.query,
      required this.type,
      required final List<String> filters,
      required this.timestamp,
      required final List<NewsArticle> results,
      required this.relevanceThreshold,
      required this.maxResults,
      required final List<String> sources,
      required this.startDate,
      required this.endDate})
      : _filters = filters,
        _results = results,
        _sources = sources;

  factory _$NewsQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsQueryImplFromJson(json);

  @override
  final String id;
  @override
  final String query;
  @override
  final String type;
  final List<String> _filters;
  @override
  List<String> get filters {
    if (_filters is EqualUnmodifiableListView) return _filters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filters);
  }

  @override
  final DateTime timestamp;
  final List<NewsArticle> _results;
  @override
  List<NewsArticle> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final double relevanceThreshold;
  @override
  final int maxResults;
  final List<String> _sources;
  @override
  List<String> get sources {
    if (_sources is EqualUnmodifiableListView) return _sources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sources);
  }

  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;

  @override
  String toString() {
    return 'NewsQuery(id: $id, query: $query, type: $type, filters: $filters, timestamp: $timestamp, results: $results, relevanceThreshold: $relevanceThreshold, maxResults: $maxResults, sources: $sources, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsQueryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._filters, _filters) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.relevanceThreshold, relevanceThreshold) ||
                other.relevanceThreshold == relevanceThreshold) &&
            (identical(other.maxResults, maxResults) ||
                other.maxResults == maxResults) &&
            const DeepCollectionEquality().equals(other._sources, _sources) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      query,
      type,
      const DeepCollectionEquality().hash(_filters),
      timestamp,
      const DeepCollectionEquality().hash(_results),
      relevanceThreshold,
      maxResults,
      const DeepCollectionEquality().hash(_sources),
      startDate,
      endDate);

  /// Create a copy of NewsQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsQueryImplCopyWith<_$NewsQueryImpl> get copyWith =>
      __$$NewsQueryImplCopyWithImpl<_$NewsQueryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsQueryImplToJson(
      this,
    );
  }
}

abstract class _NewsQuery implements NewsQuery {
  const factory _NewsQuery(
      {required final String id,
      required final String query,
      required final String type,
      required final List<String> filters,
      required final DateTime timestamp,
      required final List<NewsArticle> results,
      required final double relevanceThreshold,
      required final int maxResults,
      required final List<String> sources,
      required final DateTime? startDate,
      required final DateTime? endDate}) = _$NewsQueryImpl;

  factory _NewsQuery.fromJson(Map<String, dynamic> json) =
      _$NewsQueryImpl.fromJson;

  @override
  String get id;
  @override
  String get query;
  @override
  String get type;
  @override
  List<String> get filters;
  @override
  DateTime get timestamp;
  @override
  List<NewsArticle> get results;
  @override
  double get relevanceThreshold;
  @override
  int get maxResults;
  @override
  List<String> get sources;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;

  /// Create a copy of NewsQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsQueryImplCopyWith<_$NewsQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsSummary _$NewsSummaryFromJson(Map<String, dynamic> json) {
  return _NewsSummary.fromJson(json);
}

/// @nodoc
mixin _$NewsSummary {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  List<String> get keyPoints => throw _privateConstructorUsedError;
  List<String> get mentionedAssets => throw _privateConstructorUsedError;
  double get overallSentiment => throw _privateConstructorUsedError;
  List<String> get sources => throw _privateConstructorUsedError;
  DateTime get generatedAt => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
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
      {String id,
      String title,
      String summary,
      List<String> keyPoints,
      List<String> mentionedAssets,
      double overallSentiment,
      List<String> sources,
      DateTime generatedAt,
      String model,
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
    Object? id = null,
    Object? title = null,
    Object? summary = null,
    Object? keyPoints = null,
    Object? mentionedAssets = null,
    Object? overallSentiment = null,
    Object? sources = null,
    Object? generatedAt = null,
    Object? model = null,
    Object? confidence = null,
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
      keyPoints: null == keyPoints
          ? _value.keyPoints
          : keyPoints // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mentionedAssets: null == mentionedAssets
          ? _value.mentionedAssets
          : mentionedAssets // ignore: cast_nullable_to_non_nullable
              as List<String>,
      overallSentiment: null == overallSentiment
          ? _value.overallSentiment
          : overallSentiment // ignore: cast_nullable_to_non_nullable
              as double,
      sources: null == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<String>,
      generatedAt: null == generatedAt
          ? _value.generatedAt
          : generatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
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
      {String id,
      String title,
      String summary,
      List<String> keyPoints,
      List<String> mentionedAssets,
      double overallSentiment,
      List<String> sources,
      DateTime generatedAt,
      String model,
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
    Object? id = null,
    Object? title = null,
    Object? summary = null,
    Object? keyPoints = null,
    Object? mentionedAssets = null,
    Object? overallSentiment = null,
    Object? sources = null,
    Object? generatedAt = null,
    Object? model = null,
    Object? confidence = null,
  }) {
    return _then(_$NewsSummaryImpl(
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
      keyPoints: null == keyPoints
          ? _value._keyPoints
          : keyPoints // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mentionedAssets: null == mentionedAssets
          ? _value._mentionedAssets
          : mentionedAssets // ignore: cast_nullable_to_non_nullable
              as List<String>,
      overallSentiment: null == overallSentiment
          ? _value.overallSentiment
          : overallSentiment // ignore: cast_nullable_to_non_nullable
              as double,
      sources: null == sources
          ? _value._sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<String>,
      generatedAt: null == generatedAt
          ? _value.generatedAt
          : generatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
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
class _$NewsSummaryImpl implements _NewsSummary {
  const _$NewsSummaryImpl(
      {required this.id,
      required this.title,
      required this.summary,
      required final List<String> keyPoints,
      required final List<String> mentionedAssets,
      required this.overallSentiment,
      required final List<String> sources,
      required this.generatedAt,
      required this.model,
      required this.confidence})
      : _keyPoints = keyPoints,
        _mentionedAssets = mentionedAssets,
        _sources = sources;

  factory _$NewsSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsSummaryImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String summary;
  final List<String> _keyPoints;
  @override
  List<String> get keyPoints {
    if (_keyPoints is EqualUnmodifiableListView) return _keyPoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keyPoints);
  }

  final List<String> _mentionedAssets;
  @override
  List<String> get mentionedAssets {
    if (_mentionedAssets is EqualUnmodifiableListView) return _mentionedAssets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mentionedAssets);
  }

  @override
  final double overallSentiment;
  final List<String> _sources;
  @override
  List<String> get sources {
    if (_sources is EqualUnmodifiableListView) return _sources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sources);
  }

  @override
  final DateTime generatedAt;
  @override
  final String model;
  @override
  final double confidence;

  @override
  String toString() {
    return 'NewsSummary(id: $id, title: $title, summary: $summary, keyPoints: $keyPoints, mentionedAssets: $mentionedAssets, overallSentiment: $overallSentiment, sources: $sources, generatedAt: $generatedAt, model: $model, confidence: $confidence)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsSummaryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            const DeepCollectionEquality()
                .equals(other._keyPoints, _keyPoints) &&
            const DeepCollectionEquality()
                .equals(other._mentionedAssets, _mentionedAssets) &&
            (identical(other.overallSentiment, overallSentiment) ||
                other.overallSentiment == overallSentiment) &&
            const DeepCollectionEquality().equals(other._sources, _sources) &&
            (identical(other.generatedAt, generatedAt) ||
                other.generatedAt == generatedAt) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      summary,
      const DeepCollectionEquality().hash(_keyPoints),
      const DeepCollectionEquality().hash(_mentionedAssets),
      overallSentiment,
      const DeepCollectionEquality().hash(_sources),
      generatedAt,
      model,
      confidence);

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
      {required final String id,
      required final String title,
      required final String summary,
      required final List<String> keyPoints,
      required final List<String> mentionedAssets,
      required final double overallSentiment,
      required final List<String> sources,
      required final DateTime generatedAt,
      required final String model,
      required final double confidence}) = _$NewsSummaryImpl;

  factory _NewsSummary.fromJson(Map<String, dynamic> json) =
      _$NewsSummaryImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get summary;
  @override
  List<String> get keyPoints;
  @override
  List<String> get mentionedAssets;
  @override
  double get overallSentiment;
  @override
  List<String> get sources;
  @override
  DateTime get generatedAt;
  @override
  String get model;
  @override
  double get confidence;

  /// Create a copy of NewsSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsSummaryImplCopyWith<_$NewsSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsTrend _$NewsTrendFromJson(Map<String, dynamic> json) {
  return _NewsTrend.fromJson(json);
}

/// @nodoc
mixin _$NewsTrend {
  String get topic => throw _privateConstructorUsedError;
  double get volume => throw _privateConstructorUsedError;
  double get volumeChange => throw _privateConstructorUsedError;
  double get sentiment => throw _privateConstructorUsedError;
  double get sentimentChange => throw _privateConstructorUsedError;
  List<String> get topArticles => throw _privateConstructorUsedError;
  List<String> get relatedTopics => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;

  /// Serializes this NewsTrend to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsTrend
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsTrendCopyWith<NewsTrend> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsTrendCopyWith<$Res> {
  factory $NewsTrendCopyWith(NewsTrend value, $Res Function(NewsTrend) then) =
      _$NewsTrendCopyWithImpl<$Res, NewsTrend>;
  @useResult
  $Res call(
      {String topic,
      double volume,
      double volumeChange,
      double sentiment,
      double sentimentChange,
      List<String> topArticles,
      List<String> relatedTopics,
      DateTime startDate,
      DateTime endDate});
}

/// @nodoc
class _$NewsTrendCopyWithImpl<$Res, $Val extends NewsTrend>
    implements $NewsTrendCopyWith<$Res> {
  _$NewsTrendCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsTrend
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
    Object? volume = null,
    Object? volumeChange = null,
    Object? sentiment = null,
    Object? sentimentChange = null,
    Object? topArticles = null,
    Object? relatedTopics = null,
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_value.copyWith(
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
      topArticles: null == topArticles
          ? _value.topArticles
          : topArticles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      relatedTopics: null == relatedTopics
          ? _value.relatedTopics
          : relatedTopics // ignore: cast_nullable_to_non_nullable
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
abstract class _$$NewsTrendImplCopyWith<$Res>
    implements $NewsTrendCopyWith<$Res> {
  factory _$$NewsTrendImplCopyWith(
          _$NewsTrendImpl value, $Res Function(_$NewsTrendImpl) then) =
      __$$NewsTrendImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String topic,
      double volume,
      double volumeChange,
      double sentiment,
      double sentimentChange,
      List<String> topArticles,
      List<String> relatedTopics,
      DateTime startDate,
      DateTime endDate});
}

/// @nodoc
class __$$NewsTrendImplCopyWithImpl<$Res>
    extends _$NewsTrendCopyWithImpl<$Res, _$NewsTrendImpl>
    implements _$$NewsTrendImplCopyWith<$Res> {
  __$$NewsTrendImplCopyWithImpl(
      _$NewsTrendImpl _value, $Res Function(_$NewsTrendImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsTrend
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
    Object? volume = null,
    Object? volumeChange = null,
    Object? sentiment = null,
    Object? sentimentChange = null,
    Object? topArticles = null,
    Object? relatedTopics = null,
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_$NewsTrendImpl(
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
      topArticles: null == topArticles
          ? _value._topArticles
          : topArticles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      relatedTopics: null == relatedTopics
          ? _value._relatedTopics
          : relatedTopics // ignore: cast_nullable_to_non_nullable
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
class _$NewsTrendImpl implements _NewsTrend {
  const _$NewsTrendImpl(
      {required this.topic,
      required this.volume,
      required this.volumeChange,
      required this.sentiment,
      required this.sentimentChange,
      required final List<String> topArticles,
      required final List<String> relatedTopics,
      required this.startDate,
      required this.endDate})
      : _topArticles = topArticles,
        _relatedTopics = relatedTopics;

  factory _$NewsTrendImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsTrendImplFromJson(json);

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
  final List<String> _topArticles;
  @override
  List<String> get topArticles {
    if (_topArticles is EqualUnmodifiableListView) return _topArticles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topArticles);
  }

  final List<String> _relatedTopics;
  @override
  List<String> get relatedTopics {
    if (_relatedTopics is EqualUnmodifiableListView) return _relatedTopics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relatedTopics);
  }

  @override
  final DateTime startDate;
  @override
  final DateTime endDate;

  @override
  String toString() {
    return 'NewsTrend(topic: $topic, volume: $volume, volumeChange: $volumeChange, sentiment: $sentiment, sentimentChange: $sentimentChange, topArticles: $topArticles, relatedTopics: $relatedTopics, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsTrendImpl &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.volumeChange, volumeChange) ||
                other.volumeChange == volumeChange) &&
            (identical(other.sentiment, sentiment) ||
                other.sentiment == sentiment) &&
            (identical(other.sentimentChange, sentimentChange) ||
                other.sentimentChange == sentimentChange) &&
            const DeepCollectionEquality()
                .equals(other._topArticles, _topArticles) &&
            const DeepCollectionEquality()
                .equals(other._relatedTopics, _relatedTopics) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      topic,
      volume,
      volumeChange,
      sentiment,
      sentimentChange,
      const DeepCollectionEquality().hash(_topArticles),
      const DeepCollectionEquality().hash(_relatedTopics),
      startDate,
      endDate);

  /// Create a copy of NewsTrend
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsTrendImplCopyWith<_$NewsTrendImpl> get copyWith =>
      __$$NewsTrendImplCopyWithImpl<_$NewsTrendImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsTrendImplToJson(
      this,
    );
  }
}

abstract class _NewsTrend implements NewsTrend {
  const factory _NewsTrend(
      {required final String topic,
      required final double volume,
      required final double volumeChange,
      required final double sentiment,
      required final double sentimentChange,
      required final List<String> topArticles,
      required final List<String> relatedTopics,
      required final DateTime startDate,
      required final DateTime endDate}) = _$NewsTrendImpl;

  factory _NewsTrend.fromJson(Map<String, dynamic> json) =
      _$NewsTrendImpl.fromJson;

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
  List<String> get topArticles;
  @override
  List<String> get relatedTopics;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;

  /// Create a copy of NewsTrend
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsTrendImplCopyWith<_$NewsTrendImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsAlert _$NewsAlertFromJson(Map<String, dynamic> json) {
  return _NewsAlert.fromJson(json);
}

/// @nodoc
mixin _$NewsAlert {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get symbols => throw _privateConstructorUsedError;
  double get threshold => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get triggeredAt => throw _privateConstructorUsedError;
  List<NewsArticle> get relatedArticles => throw _privateConstructorUsedError;

  /// Serializes this NewsAlert to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsAlert
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsAlertCopyWith<NewsAlert> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsAlertCopyWith<$Res> {
  factory $NewsAlertCopyWith(NewsAlert value, $Res Function(NewsAlert) then) =
      _$NewsAlertCopyWithImpl<$Res, NewsAlert>;
  @useResult
  $Res call(
      {String id,
      String type,
      String title,
      String description,
      List<String> symbols,
      double threshold,
      bool isActive,
      DateTime createdAt,
      DateTime? triggeredAt,
      List<NewsArticle> relatedArticles});
}

/// @nodoc
class _$NewsAlertCopyWithImpl<$Res, $Val extends NewsAlert>
    implements $NewsAlertCopyWith<$Res> {
  _$NewsAlertCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsAlert
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? description = null,
    Object? symbols = null,
    Object? threshold = null,
    Object? isActive = null,
    Object? createdAt = null,
    Object? triggeredAt = freezed,
    Object? relatedArticles = null,
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
      symbols: null == symbols
          ? _value.symbols
          : symbols // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      triggeredAt: freezed == triggeredAt
          ? _value.triggeredAt
          : triggeredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      relatedArticles: null == relatedArticles
          ? _value.relatedArticles
          : relatedArticles // ignore: cast_nullable_to_non_nullable
              as List<NewsArticle>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsAlertImplCopyWith<$Res>
    implements $NewsAlertCopyWith<$Res> {
  factory _$$NewsAlertImplCopyWith(
          _$NewsAlertImpl value, $Res Function(_$NewsAlertImpl) then) =
      __$$NewsAlertImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String title,
      String description,
      List<String> symbols,
      double threshold,
      bool isActive,
      DateTime createdAt,
      DateTime? triggeredAt,
      List<NewsArticle> relatedArticles});
}

/// @nodoc
class __$$NewsAlertImplCopyWithImpl<$Res>
    extends _$NewsAlertCopyWithImpl<$Res, _$NewsAlertImpl>
    implements _$$NewsAlertImplCopyWith<$Res> {
  __$$NewsAlertImplCopyWithImpl(
      _$NewsAlertImpl _value, $Res Function(_$NewsAlertImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsAlert
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? description = null,
    Object? symbols = null,
    Object? threshold = null,
    Object? isActive = null,
    Object? createdAt = null,
    Object? triggeredAt = freezed,
    Object? relatedArticles = null,
  }) {
    return _then(_$NewsAlertImpl(
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
      symbols: null == symbols
          ? _value._symbols
          : symbols // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      triggeredAt: freezed == triggeredAt
          ? _value.triggeredAt
          : triggeredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      relatedArticles: null == relatedArticles
          ? _value._relatedArticles
          : relatedArticles // ignore: cast_nullable_to_non_nullable
              as List<NewsArticle>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsAlertImpl implements _NewsAlert {
  const _$NewsAlertImpl(
      {required this.id,
      required this.type,
      required this.title,
      required this.description,
      required final List<String> symbols,
      required this.threshold,
      required this.isActive,
      required this.createdAt,
      required this.triggeredAt,
      required final List<NewsArticle> relatedArticles})
      : _symbols = symbols,
        _relatedArticles = relatedArticles;

  factory _$NewsAlertImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsAlertImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final String title;
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
  final double threshold;
  @override
  final bool isActive;
  @override
  final DateTime createdAt;
  @override
  final DateTime? triggeredAt;
  final List<NewsArticle> _relatedArticles;
  @override
  List<NewsArticle> get relatedArticles {
    if (_relatedArticles is EqualUnmodifiableListView) return _relatedArticles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relatedArticles);
  }

  @override
  String toString() {
    return 'NewsAlert(id: $id, type: $type, title: $title, description: $description, symbols: $symbols, threshold: $threshold, isActive: $isActive, createdAt: $createdAt, triggeredAt: $triggeredAt, relatedArticles: $relatedArticles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsAlertImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._symbols, _symbols) &&
            (identical(other.threshold, threshold) ||
                other.threshold == threshold) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.triggeredAt, triggeredAt) ||
                other.triggeredAt == triggeredAt) &&
            const DeepCollectionEquality()
                .equals(other._relatedArticles, _relatedArticles));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      title,
      description,
      const DeepCollectionEquality().hash(_symbols),
      threshold,
      isActive,
      createdAt,
      triggeredAt,
      const DeepCollectionEquality().hash(_relatedArticles));

  /// Create a copy of NewsAlert
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsAlertImplCopyWith<_$NewsAlertImpl> get copyWith =>
      __$$NewsAlertImplCopyWithImpl<_$NewsAlertImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsAlertImplToJson(
      this,
    );
  }
}

abstract class _NewsAlert implements NewsAlert {
  const factory _NewsAlert(
      {required final String id,
      required final String type,
      required final String title,
      required final String description,
      required final List<String> symbols,
      required final double threshold,
      required final bool isActive,
      required final DateTime createdAt,
      required final DateTime? triggeredAt,
      required final List<NewsArticle> relatedArticles}) = _$NewsAlertImpl;

  factory _NewsAlert.fromJson(Map<String, dynamic> json) =
      _$NewsAlertImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  String get title;
  @override
  String get description;
  @override
  List<String> get symbols;
  @override
  double get threshold;
  @override
  bool get isActive;
  @override
  DateTime get createdAt;
  @override
  DateTime? get triggeredAt;
  @override
  List<NewsArticle> get relatedArticles;

  /// Create a copy of NewsAlert
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsAlertImplCopyWith<_$NewsAlertImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsSource _$NewsSourceFromJson(Map<String, dynamic> json) {
  return _NewsSource.fromJson(json);
}

/// @nodoc
mixin _$NewsSource {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  double get reliability => throw _privateConstructorUsedError;
  double get bias => throw _privateConstructorUsedError;
  String get biasDirection => throw _privateConstructorUsedError;
  List<String> get supportedRegions => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;

  /// Serializes this NewsSource to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsSource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsSourceCopyWith<NewsSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsSourceCopyWith<$Res> {
  factory $NewsSourceCopyWith(
          NewsSource value, $Res Function(NewsSource) then) =
      _$NewsSourceCopyWithImpl<$Res, NewsSource>;
  @useResult
  $Res call(
      {String id,
      String name,
      String url,
      String category,
      double reliability,
      double bias,
      String biasDirection,
      List<String> supportedRegions,
      bool isActive,
      DateTime lastUpdated,
      List<String> tags});
}

/// @nodoc
class _$NewsSourceCopyWithImpl<$Res, $Val extends NewsSource>
    implements $NewsSourceCopyWith<$Res> {
  _$NewsSourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsSource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? url = null,
    Object? category = null,
    Object? reliability = null,
    Object? bias = null,
    Object? biasDirection = null,
    Object? supportedRegions = null,
    Object? isActive = null,
    Object? lastUpdated = null,
    Object? tags = null,
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
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      reliability: null == reliability
          ? _value.reliability
          : reliability // ignore: cast_nullable_to_non_nullable
              as double,
      bias: null == bias
          ? _value.bias
          : bias // ignore: cast_nullable_to_non_nullable
              as double,
      biasDirection: null == biasDirection
          ? _value.biasDirection
          : biasDirection // ignore: cast_nullable_to_non_nullable
              as String,
      supportedRegions: null == supportedRegions
          ? _value.supportedRegions
          : supportedRegions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsSourceImplCopyWith<$Res>
    implements $NewsSourceCopyWith<$Res> {
  factory _$$NewsSourceImplCopyWith(
          _$NewsSourceImpl value, $Res Function(_$NewsSourceImpl) then) =
      __$$NewsSourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String url,
      String category,
      double reliability,
      double bias,
      String biasDirection,
      List<String> supportedRegions,
      bool isActive,
      DateTime lastUpdated,
      List<String> tags});
}

/// @nodoc
class __$$NewsSourceImplCopyWithImpl<$Res>
    extends _$NewsSourceCopyWithImpl<$Res, _$NewsSourceImpl>
    implements _$$NewsSourceImplCopyWith<$Res> {
  __$$NewsSourceImplCopyWithImpl(
      _$NewsSourceImpl _value, $Res Function(_$NewsSourceImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsSource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? url = null,
    Object? category = null,
    Object? reliability = null,
    Object? bias = null,
    Object? biasDirection = null,
    Object? supportedRegions = null,
    Object? isActive = null,
    Object? lastUpdated = null,
    Object? tags = null,
  }) {
    return _then(_$NewsSourceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      reliability: null == reliability
          ? _value.reliability
          : reliability // ignore: cast_nullable_to_non_nullable
              as double,
      bias: null == bias
          ? _value.bias
          : bias // ignore: cast_nullable_to_non_nullable
              as double,
      biasDirection: null == biasDirection
          ? _value.biasDirection
          : biasDirection // ignore: cast_nullable_to_non_nullable
              as String,
      supportedRegions: null == supportedRegions
          ? _value._supportedRegions
          : supportedRegions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsSourceImpl implements _NewsSource {
  const _$NewsSourceImpl(
      {required this.id,
      required this.name,
      required this.url,
      required this.category,
      required this.reliability,
      required this.bias,
      required this.biasDirection,
      required final List<String> supportedRegions,
      required this.isActive,
      required this.lastUpdated,
      required final List<String> tags})
      : _supportedRegions = supportedRegions,
        _tags = tags;

  factory _$NewsSourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsSourceImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String url;
  @override
  final String category;
  @override
  final double reliability;
  @override
  final double bias;
  @override
  final String biasDirection;
  final List<String> _supportedRegions;
  @override
  List<String> get supportedRegions {
    if (_supportedRegions is EqualUnmodifiableListView)
      return _supportedRegions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_supportedRegions);
  }

  @override
  final bool isActive;
  @override
  final DateTime lastUpdated;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'NewsSource(id: $id, name: $name, url: $url, category: $category, reliability: $reliability, bias: $bias, biasDirection: $biasDirection, supportedRegions: $supportedRegions, isActive: $isActive, lastUpdated: $lastUpdated, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsSourceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.reliability, reliability) ||
                other.reliability == reliability) &&
            (identical(other.bias, bias) || other.bias == bias) &&
            (identical(other.biasDirection, biasDirection) ||
                other.biasDirection == biasDirection) &&
            const DeepCollectionEquality()
                .equals(other._supportedRegions, _supportedRegions) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      url,
      category,
      reliability,
      bias,
      biasDirection,
      const DeepCollectionEquality().hash(_supportedRegions),
      isActive,
      lastUpdated,
      const DeepCollectionEquality().hash(_tags));

  /// Create a copy of NewsSource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsSourceImplCopyWith<_$NewsSourceImpl> get copyWith =>
      __$$NewsSourceImplCopyWithImpl<_$NewsSourceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsSourceImplToJson(
      this,
    );
  }
}

abstract class _NewsSource implements NewsSource {
  const factory _NewsSource(
      {required final String id,
      required final String name,
      required final String url,
      required final String category,
      required final double reliability,
      required final double bias,
      required final String biasDirection,
      required final List<String> supportedRegions,
      required final bool isActive,
      required final DateTime lastUpdated,
      required final List<String> tags}) = _$NewsSourceImpl;

  factory _NewsSource.fromJson(Map<String, dynamic> json) =
      _$NewsSourceImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get url;
  @override
  String get category;
  @override
  double get reliability;
  @override
  double get bias;
  @override
  String get biasDirection;
  @override
  List<String> get supportedRegions;
  @override
  bool get isActive;
  @override
  DateTime get lastUpdated;
  @override
  List<String> get tags;

  /// Create a copy of NewsSource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsSourceImplCopyWith<_$NewsSourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsCategory _$NewsCategoryFromJson(Map<String, dynamic> json) {
  return _NewsCategory.fromJson(json);
}

/// @nodoc
mixin _$NewsCategory {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get keywords => throw _privateConstructorUsedError;
  List<String> get subcategories => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  /// Serializes this NewsCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsCategoryCopyWith<NewsCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsCategoryCopyWith<$Res> {
  factory $NewsCategoryCopyWith(
          NewsCategory value, $Res Function(NewsCategory) then) =
      _$NewsCategoryCopyWithImpl<$Res, NewsCategory>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      List<String> keywords,
      List<String> subcategories,
      bool isActive});
}

/// @nodoc
class _$NewsCategoryCopyWithImpl<$Res, $Val extends NewsCategory>
    implements $NewsCategoryCopyWith<$Res> {
  _$NewsCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? keywords = null,
    Object? subcategories = null,
    Object? isActive = null,
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
      keywords: null == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      subcategories: null == subcategories
          ? _value.subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsCategoryImplCopyWith<$Res>
    implements $NewsCategoryCopyWith<$Res> {
  factory _$$NewsCategoryImplCopyWith(
          _$NewsCategoryImpl value, $Res Function(_$NewsCategoryImpl) then) =
      __$$NewsCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      List<String> keywords,
      List<String> subcategories,
      bool isActive});
}

/// @nodoc
class __$$NewsCategoryImplCopyWithImpl<$Res>
    extends _$NewsCategoryCopyWithImpl<$Res, _$NewsCategoryImpl>
    implements _$$NewsCategoryImplCopyWith<$Res> {
  __$$NewsCategoryImplCopyWithImpl(
      _$NewsCategoryImpl _value, $Res Function(_$NewsCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? keywords = null,
    Object? subcategories = null,
    Object? isActive = null,
  }) {
    return _then(_$NewsCategoryImpl(
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
      keywords: null == keywords
          ? _value._keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      subcategories: null == subcategories
          ? _value._subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsCategoryImpl implements _NewsCategory {
  const _$NewsCategoryImpl(
      {required this.id,
      required this.name,
      required this.description,
      required final List<String> keywords,
      required final List<String> subcategories,
      required this.isActive})
      : _keywords = keywords,
        _subcategories = subcategories;

  factory _$NewsCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsCategoryImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  final List<String> _keywords;
  @override
  List<String> get keywords {
    if (_keywords is EqualUnmodifiableListView) return _keywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keywords);
  }

  final List<String> _subcategories;
  @override
  List<String> get subcategories {
    if (_subcategories is EqualUnmodifiableListView) return _subcategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subcategories);
  }

  @override
  final bool isActive;

  @override
  String toString() {
    return 'NewsCategory(id: $id, name: $name, description: $description, keywords: $keywords, subcategories: $subcategories, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._keywords, _keywords) &&
            const DeepCollectionEquality()
                .equals(other._subcategories, _subcategories) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      const DeepCollectionEquality().hash(_keywords),
      const DeepCollectionEquality().hash(_subcategories),
      isActive);

  /// Create a copy of NewsCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsCategoryImplCopyWith<_$NewsCategoryImpl> get copyWith =>
      __$$NewsCategoryImplCopyWithImpl<_$NewsCategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsCategoryImplToJson(
      this,
    );
  }
}

abstract class _NewsCategory implements NewsCategory {
  const factory _NewsCategory(
      {required final String id,
      required final String name,
      required final String description,
      required final List<String> keywords,
      required final List<String> subcategories,
      required final bool isActive}) = _$NewsCategoryImpl;

  factory _NewsCategory.fromJson(Map<String, dynamic> json) =
      _$NewsCategoryImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  List<String> get keywords;
  @override
  List<String> get subcategories;
  @override
  bool get isActive;

  /// Create a copy of NewsCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsCategoryImplCopyWith<_$NewsCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsEntity _$NewsEntityFromJson(Map<String, dynamic> json) {
  return _NewsEntity.fromJson(json);
}

/// @nodoc
mixin _$NewsEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;
  List<String> get mentions => throw _privateConstructorUsedError;
  List<String> get relatedEntities => throw _privateConstructorUsedError;

  /// Serializes this NewsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsEntityCopyWith<NewsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEntityCopyWith<$Res> {
  factory $NewsEntityCopyWith(
          NewsEntity value, $Res Function(NewsEntity) then) =
      _$NewsEntityCopyWithImpl<$Res, NewsEntity>;
  @useResult
  $Res call(
      {String id,
      String name,
      String type,
      double confidence,
      List<String> mentions,
      List<String> relatedEntities});
}

/// @nodoc
class _$NewsEntityCopyWithImpl<$Res, $Val extends NewsEntity>
    implements $NewsEntityCopyWith<$Res> {
  _$NewsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? confidence = null,
    Object? mentions = null,
    Object? relatedEntities = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      mentions: null == mentions
          ? _value.mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      relatedEntities: null == relatedEntities
          ? _value.relatedEntities
          : relatedEntities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsEntityImplCopyWith<$Res>
    implements $NewsEntityCopyWith<$Res> {
  factory _$$NewsEntityImplCopyWith(
          _$NewsEntityImpl value, $Res Function(_$NewsEntityImpl) then) =
      __$$NewsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String type,
      double confidence,
      List<String> mentions,
      List<String> relatedEntities});
}

/// @nodoc
class __$$NewsEntityImplCopyWithImpl<$Res>
    extends _$NewsEntityCopyWithImpl<$Res, _$NewsEntityImpl>
    implements _$$NewsEntityImplCopyWith<$Res> {
  __$$NewsEntityImplCopyWithImpl(
      _$NewsEntityImpl _value, $Res Function(_$NewsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? confidence = null,
    Object? mentions = null,
    Object? relatedEntities = null,
  }) {
    return _then(_$NewsEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      mentions: null == mentions
          ? _value._mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      relatedEntities: null == relatedEntities
          ? _value._relatedEntities
          : relatedEntities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsEntityImpl implements _NewsEntity {
  const _$NewsEntityImpl(
      {required this.id,
      required this.name,
      required this.type,
      required this.confidence,
      required final List<String> mentions,
      required final List<String> relatedEntities})
      : _mentions = mentions,
        _relatedEntities = relatedEntities;

  factory _$NewsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String type;
  @override
  final double confidence;
  final List<String> _mentions;
  @override
  List<String> get mentions {
    if (_mentions is EqualUnmodifiableListView) return _mentions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mentions);
  }

  final List<String> _relatedEntities;
  @override
  List<String> get relatedEntities {
    if (_relatedEntities is EqualUnmodifiableListView) return _relatedEntities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relatedEntities);
  }

  @override
  String toString() {
    return 'NewsEntity(id: $id, name: $name, type: $type, confidence: $confidence, mentions: $mentions, relatedEntities: $relatedEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            const DeepCollectionEquality().equals(other._mentions, _mentions) &&
            const DeepCollectionEquality()
                .equals(other._relatedEntities, _relatedEntities));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      type,
      confidence,
      const DeepCollectionEquality().hash(_mentions),
      const DeepCollectionEquality().hash(_relatedEntities));

  /// Create a copy of NewsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsEntityImplCopyWith<_$NewsEntityImpl> get copyWith =>
      __$$NewsEntityImplCopyWithImpl<_$NewsEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsEntityImplToJson(
      this,
    );
  }
}

abstract class _NewsEntity implements NewsEntity {
  const factory _NewsEntity(
      {required final String id,
      required final String name,
      required final String type,
      required final double confidence,
      required final List<String> mentions,
      required final List<String> relatedEntities}) = _$NewsEntityImpl;

  factory _NewsEntity.fromJson(Map<String, dynamic> json) =
      _$NewsEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get type;
  @override
  double get confidence;
  @override
  List<String> get mentions;
  @override
  List<String> get relatedEntities;

  /// Create a copy of NewsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsEntityImplCopyWith<_$NewsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsFact _$NewsFactFromJson(Map<String, dynamic> json) {
  return _NewsFact.fromJson(json);
}

/// @nodoc
mixin _$NewsFact {
  String get id => throw _privateConstructorUsedError;
  String get statement => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;
  String get verification => throw _privateConstructorUsedError;
  DateTime get verifiedAt => throw _privateConstructorUsedError;
  List<String> get supportingEvidence => throw _privateConstructorUsedError;

  /// Serializes this NewsFact to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsFact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsFactCopyWith<NewsFact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsFactCopyWith<$Res> {
  factory $NewsFactCopyWith(NewsFact value, $Res Function(NewsFact) then) =
      _$NewsFactCopyWithImpl<$Res, NewsFact>;
  @useResult
  $Res call(
      {String id,
      String statement,
      String source,
      double confidence,
      String verification,
      DateTime verifiedAt,
      List<String> supportingEvidence});
}

/// @nodoc
class _$NewsFactCopyWithImpl<$Res, $Val extends NewsFact>
    implements $NewsFactCopyWith<$Res> {
  _$NewsFactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsFact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? statement = null,
    Object? source = null,
    Object? confidence = null,
    Object? verification = null,
    Object? verifiedAt = null,
    Object? supportingEvidence = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      statement: null == statement
          ? _value.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      verification: null == verification
          ? _value.verification
          : verification // ignore: cast_nullable_to_non_nullable
              as String,
      verifiedAt: null == verifiedAt
          ? _value.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      supportingEvidence: null == supportingEvidence
          ? _value.supportingEvidence
          : supportingEvidence // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsFactImplCopyWith<$Res>
    implements $NewsFactCopyWith<$Res> {
  factory _$$NewsFactImplCopyWith(
          _$NewsFactImpl value, $Res Function(_$NewsFactImpl) then) =
      __$$NewsFactImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String statement,
      String source,
      double confidence,
      String verification,
      DateTime verifiedAt,
      List<String> supportingEvidence});
}

/// @nodoc
class __$$NewsFactImplCopyWithImpl<$Res>
    extends _$NewsFactCopyWithImpl<$Res, _$NewsFactImpl>
    implements _$$NewsFactImplCopyWith<$Res> {
  __$$NewsFactImplCopyWithImpl(
      _$NewsFactImpl _value, $Res Function(_$NewsFactImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsFact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? statement = null,
    Object? source = null,
    Object? confidence = null,
    Object? verification = null,
    Object? verifiedAt = null,
    Object? supportingEvidence = null,
  }) {
    return _then(_$NewsFactImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      statement: null == statement
          ? _value.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      verification: null == verification
          ? _value.verification
          : verification // ignore: cast_nullable_to_non_nullable
              as String,
      verifiedAt: null == verifiedAt
          ? _value.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      supportingEvidence: null == supportingEvidence
          ? _value._supportingEvidence
          : supportingEvidence // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsFactImpl implements _NewsFact {
  const _$NewsFactImpl(
      {required this.id,
      required this.statement,
      required this.source,
      required this.confidence,
      required this.verification,
      required this.verifiedAt,
      required final List<String> supportingEvidence})
      : _supportingEvidence = supportingEvidence;

  factory _$NewsFactImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsFactImplFromJson(json);

  @override
  final String id;
  @override
  final String statement;
  @override
  final String source;
  @override
  final double confidence;
  @override
  final String verification;
  @override
  final DateTime verifiedAt;
  final List<String> _supportingEvidence;
  @override
  List<String> get supportingEvidence {
    if (_supportingEvidence is EqualUnmodifiableListView)
      return _supportingEvidence;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_supportingEvidence);
  }

  @override
  String toString() {
    return 'NewsFact(id: $id, statement: $statement, source: $source, confidence: $confidence, verification: $verification, verifiedAt: $verifiedAt, supportingEvidence: $supportingEvidence)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsFactImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.statement, statement) ||
                other.statement == statement) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            (identical(other.verification, verification) ||
                other.verification == verification) &&
            (identical(other.verifiedAt, verifiedAt) ||
                other.verifiedAt == verifiedAt) &&
            const DeepCollectionEquality()
                .equals(other._supportingEvidence, _supportingEvidence));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      statement,
      source,
      confidence,
      verification,
      verifiedAt,
      const DeepCollectionEquality().hash(_supportingEvidence));

  /// Create a copy of NewsFact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsFactImplCopyWith<_$NewsFactImpl> get copyWith =>
      __$$NewsFactImplCopyWithImpl<_$NewsFactImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsFactImplToJson(
      this,
    );
  }
}

abstract class _NewsFact implements NewsFact {
  const factory _NewsFact(
      {required final String id,
      required final String statement,
      required final String source,
      required final double confidence,
      required final String verification,
      required final DateTime verifiedAt,
      required final List<String> supportingEvidence}) = _$NewsFactImpl;

  factory _NewsFact.fromJson(Map<String, dynamic> json) =
      _$NewsFactImpl.fromJson;

  @override
  String get id;
  @override
  String get statement;
  @override
  String get source;
  @override
  double get confidence;
  @override
  String get verification;
  @override
  DateTime get verifiedAt;
  @override
  List<String> get supportingEvidence;

  /// Create a copy of NewsFact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsFactImplCopyWith<_$NewsFactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsInsight _$NewsInsightFromJson(Map<String, dynamic> json) {
  return _NewsInsight.fromJson(json);
}

/// @nodoc
mixin _$NewsInsight {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;
  List<String> get supportingArticles => throw _privateConstructorUsedError;
  List<String> get relatedAssets => throw _privateConstructorUsedError;
  DateTime get generatedAt => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;

  /// Serializes this NewsInsight to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsInsight
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsInsightCopyWith<NewsInsight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsInsightCopyWith<$Res> {
  factory $NewsInsightCopyWith(
          NewsInsight value, $Res Function(NewsInsight) then) =
      _$NewsInsightCopyWithImpl<$Res, NewsInsight>;
  @useResult
  $Res call(
      {String id,
      String type,
      String title,
      String description,
      double confidence,
      List<String> supportingArticles,
      List<String> relatedAssets,
      DateTime generatedAt,
      String model});
}

/// @nodoc
class _$NewsInsightCopyWithImpl<$Res, $Val extends NewsInsight>
    implements $NewsInsightCopyWith<$Res> {
  _$NewsInsightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsInsight
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? description = null,
    Object? confidence = null,
    Object? supportingArticles = null,
    Object? relatedAssets = null,
    Object? generatedAt = null,
    Object? model = null,
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
      supportingArticles: null == supportingArticles
          ? _value.supportingArticles
          : supportingArticles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      relatedAssets: null == relatedAssets
          ? _value.relatedAssets
          : relatedAssets // ignore: cast_nullable_to_non_nullable
              as List<String>,
      generatedAt: null == generatedAt
          ? _value.generatedAt
          : generatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsInsightImplCopyWith<$Res>
    implements $NewsInsightCopyWith<$Res> {
  factory _$$NewsInsightImplCopyWith(
          _$NewsInsightImpl value, $Res Function(_$NewsInsightImpl) then) =
      __$$NewsInsightImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String title,
      String description,
      double confidence,
      List<String> supportingArticles,
      List<String> relatedAssets,
      DateTime generatedAt,
      String model});
}

/// @nodoc
class __$$NewsInsightImplCopyWithImpl<$Res>
    extends _$NewsInsightCopyWithImpl<$Res, _$NewsInsightImpl>
    implements _$$NewsInsightImplCopyWith<$Res> {
  __$$NewsInsightImplCopyWithImpl(
      _$NewsInsightImpl _value, $Res Function(_$NewsInsightImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsInsight
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? description = null,
    Object? confidence = null,
    Object? supportingArticles = null,
    Object? relatedAssets = null,
    Object? generatedAt = null,
    Object? model = null,
  }) {
    return _then(_$NewsInsightImpl(
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
      supportingArticles: null == supportingArticles
          ? _value._supportingArticles
          : supportingArticles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      relatedAssets: null == relatedAssets
          ? _value._relatedAssets
          : relatedAssets // ignore: cast_nullable_to_non_nullable
              as List<String>,
      generatedAt: null == generatedAt
          ? _value.generatedAt
          : generatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsInsightImpl implements _NewsInsight {
  const _$NewsInsightImpl(
      {required this.id,
      required this.type,
      required this.title,
      required this.description,
      required this.confidence,
      required final List<String> supportingArticles,
      required final List<String> relatedAssets,
      required this.generatedAt,
      required this.model})
      : _supportingArticles = supportingArticles,
        _relatedAssets = relatedAssets;

  factory _$NewsInsightImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsInsightImplFromJson(json);

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
  final List<String> _supportingArticles;
  @override
  List<String> get supportingArticles {
    if (_supportingArticles is EqualUnmodifiableListView)
      return _supportingArticles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_supportingArticles);
  }

  final List<String> _relatedAssets;
  @override
  List<String> get relatedAssets {
    if (_relatedAssets is EqualUnmodifiableListView) return _relatedAssets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relatedAssets);
  }

  @override
  final DateTime generatedAt;
  @override
  final String model;

  @override
  String toString() {
    return 'NewsInsight(id: $id, type: $type, title: $title, description: $description, confidence: $confidence, supportingArticles: $supportingArticles, relatedAssets: $relatedAssets, generatedAt: $generatedAt, model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsInsightImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            const DeepCollectionEquality()
                .equals(other._supportingArticles, _supportingArticles) &&
            const DeepCollectionEquality()
                .equals(other._relatedAssets, _relatedAssets) &&
            (identical(other.generatedAt, generatedAt) ||
                other.generatedAt == generatedAt) &&
            (identical(other.model, model) || other.model == model));
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
      const DeepCollectionEquality().hash(_supportingArticles),
      const DeepCollectionEquality().hash(_relatedAssets),
      generatedAt,
      model);

  /// Create a copy of NewsInsight
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsInsightImplCopyWith<_$NewsInsightImpl> get copyWith =>
      __$$NewsInsightImplCopyWithImpl<_$NewsInsightImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsInsightImplToJson(
      this,
    );
  }
}

abstract class _NewsInsight implements NewsInsight {
  const factory _NewsInsight(
      {required final String id,
      required final String type,
      required final String title,
      required final String description,
      required final double confidence,
      required final List<String> supportingArticles,
      required final List<String> relatedAssets,
      required final DateTime generatedAt,
      required final String model}) = _$NewsInsightImpl;

  factory _NewsInsight.fromJson(Map<String, dynamic> json) =
      _$NewsInsightImpl.fromJson;

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
  List<String> get supportingArticles;
  @override
  List<String> get relatedAssets;
  @override
  DateTime get generatedAt;
  @override
  String get model;

  /// Create a copy of NewsInsight
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsInsightImplCopyWith<_$NewsInsightImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsDigest _$NewsDigestFromJson(Map<String, dynamic> json) {
  return _NewsDigest.fromJson(json);
}

/// @nodoc
mixin _$NewsDigest {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  List<NewsSummary> get summaries => throw _privateConstructorUsedError;
  List<NewsTrend> get trends => throw _privateConstructorUsedError;
  List<NewsInsight> get insights => throw _privateConstructorUsedError;
  Map<String, double> get marketSentiment => throw _privateConstructorUsedError;
  List<String> get topStories => throw _privateConstructorUsedError;
  List<String> get emergingTopics => throw _privateConstructorUsedError;

  /// Serializes this NewsDigest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsDigest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsDigestCopyWith<NewsDigest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsDigestCopyWith<$Res> {
  factory $NewsDigestCopyWith(
          NewsDigest value, $Res Function(NewsDigest) then) =
      _$NewsDigestCopyWithImpl<$Res, NewsDigest>;
  @useResult
  $Res call(
      {String id,
      String title,
      DateTime date,
      List<NewsSummary> summaries,
      List<NewsTrend> trends,
      List<NewsInsight> insights,
      Map<String, double> marketSentiment,
      List<String> topStories,
      List<String> emergingTopics});
}

/// @nodoc
class _$NewsDigestCopyWithImpl<$Res, $Val extends NewsDigest>
    implements $NewsDigestCopyWith<$Res> {
  _$NewsDigestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsDigest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? date = null,
    Object? summaries = null,
    Object? trends = null,
    Object? insights = null,
    Object? marketSentiment = null,
    Object? topStories = null,
    Object? emergingTopics = null,
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
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      summaries: null == summaries
          ? _value.summaries
          : summaries // ignore: cast_nullable_to_non_nullable
              as List<NewsSummary>,
      trends: null == trends
          ? _value.trends
          : trends // ignore: cast_nullable_to_non_nullable
              as List<NewsTrend>,
      insights: null == insights
          ? _value.insights
          : insights // ignore: cast_nullable_to_non_nullable
              as List<NewsInsight>,
      marketSentiment: null == marketSentiment
          ? _value.marketSentiment
          : marketSentiment // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      topStories: null == topStories
          ? _value.topStories
          : topStories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      emergingTopics: null == emergingTopics
          ? _value.emergingTopics
          : emergingTopics // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsDigestImplCopyWith<$Res>
    implements $NewsDigestCopyWith<$Res> {
  factory _$$NewsDigestImplCopyWith(
          _$NewsDigestImpl value, $Res Function(_$NewsDigestImpl) then) =
      __$$NewsDigestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      DateTime date,
      List<NewsSummary> summaries,
      List<NewsTrend> trends,
      List<NewsInsight> insights,
      Map<String, double> marketSentiment,
      List<String> topStories,
      List<String> emergingTopics});
}

/// @nodoc
class __$$NewsDigestImplCopyWithImpl<$Res>
    extends _$NewsDigestCopyWithImpl<$Res, _$NewsDigestImpl>
    implements _$$NewsDigestImplCopyWith<$Res> {
  __$$NewsDigestImplCopyWithImpl(
      _$NewsDigestImpl _value, $Res Function(_$NewsDigestImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsDigest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? date = null,
    Object? summaries = null,
    Object? trends = null,
    Object? insights = null,
    Object? marketSentiment = null,
    Object? topStories = null,
    Object? emergingTopics = null,
  }) {
    return _then(_$NewsDigestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      summaries: null == summaries
          ? _value._summaries
          : summaries // ignore: cast_nullable_to_non_nullable
              as List<NewsSummary>,
      trends: null == trends
          ? _value._trends
          : trends // ignore: cast_nullable_to_non_nullable
              as List<NewsTrend>,
      insights: null == insights
          ? _value._insights
          : insights // ignore: cast_nullable_to_non_nullable
              as List<NewsInsight>,
      marketSentiment: null == marketSentiment
          ? _value._marketSentiment
          : marketSentiment // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      topStories: null == topStories
          ? _value._topStories
          : topStories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      emergingTopics: null == emergingTopics
          ? _value._emergingTopics
          : emergingTopics // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsDigestImpl implements _NewsDigest {
  const _$NewsDigestImpl(
      {required this.id,
      required this.title,
      required this.date,
      required final List<NewsSummary> summaries,
      required final List<NewsTrend> trends,
      required final List<NewsInsight> insights,
      required final Map<String, double> marketSentiment,
      required final List<String> topStories,
      required final List<String> emergingTopics})
      : _summaries = summaries,
        _trends = trends,
        _insights = insights,
        _marketSentiment = marketSentiment,
        _topStories = topStories,
        _emergingTopics = emergingTopics;

  factory _$NewsDigestImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsDigestImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final DateTime date;
  final List<NewsSummary> _summaries;
  @override
  List<NewsSummary> get summaries {
    if (_summaries is EqualUnmodifiableListView) return _summaries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_summaries);
  }

  final List<NewsTrend> _trends;
  @override
  List<NewsTrend> get trends {
    if (_trends is EqualUnmodifiableListView) return _trends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trends);
  }

  final List<NewsInsight> _insights;
  @override
  List<NewsInsight> get insights {
    if (_insights is EqualUnmodifiableListView) return _insights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_insights);
  }

  final Map<String, double> _marketSentiment;
  @override
  Map<String, double> get marketSentiment {
    if (_marketSentiment is EqualUnmodifiableMapView) return _marketSentiment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_marketSentiment);
  }

  final List<String> _topStories;
  @override
  List<String> get topStories {
    if (_topStories is EqualUnmodifiableListView) return _topStories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topStories);
  }

  final List<String> _emergingTopics;
  @override
  List<String> get emergingTopics {
    if (_emergingTopics is EqualUnmodifiableListView) return _emergingTopics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_emergingTopics);
  }

  @override
  String toString() {
    return 'NewsDigest(id: $id, title: $title, date: $date, summaries: $summaries, trends: $trends, insights: $insights, marketSentiment: $marketSentiment, topStories: $topStories, emergingTopics: $emergingTopics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsDigestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other._summaries, _summaries) &&
            const DeepCollectionEquality().equals(other._trends, _trends) &&
            const DeepCollectionEquality().equals(other._insights, _insights) &&
            const DeepCollectionEquality()
                .equals(other._marketSentiment, _marketSentiment) &&
            const DeepCollectionEquality()
                .equals(other._topStories, _topStories) &&
            const DeepCollectionEquality()
                .equals(other._emergingTopics, _emergingTopics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      date,
      const DeepCollectionEquality().hash(_summaries),
      const DeepCollectionEquality().hash(_trends),
      const DeepCollectionEquality().hash(_insights),
      const DeepCollectionEquality().hash(_marketSentiment),
      const DeepCollectionEquality().hash(_topStories),
      const DeepCollectionEquality().hash(_emergingTopics));

  /// Create a copy of NewsDigest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsDigestImplCopyWith<_$NewsDigestImpl> get copyWith =>
      __$$NewsDigestImplCopyWithImpl<_$NewsDigestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsDigestImplToJson(
      this,
    );
  }
}

abstract class _NewsDigest implements NewsDigest {
  const factory _NewsDigest(
      {required final String id,
      required final String title,
      required final DateTime date,
      required final List<NewsSummary> summaries,
      required final List<NewsTrend> trends,
      required final List<NewsInsight> insights,
      required final Map<String, double> marketSentiment,
      required final List<String> topStories,
      required final List<String> emergingTopics}) = _$NewsDigestImpl;

  factory _NewsDigest.fromJson(Map<String, dynamic> json) =
      _$NewsDigestImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  DateTime get date;
  @override
  List<NewsSummary> get summaries;
  @override
  List<NewsTrend> get trends;
  @override
  List<NewsInsight> get insights;
  @override
  Map<String, double> get marketSentiment;
  @override
  List<String> get topStories;
  @override
  List<String> get emergingTopics;

  /// Create a copy of NewsDigest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsDigestImplCopyWith<_$NewsDigestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsRecommendation _$NewsRecommendationFromJson(Map<String, dynamic> json) {
  return _NewsRecommendation.fromJson(json);
}

/// @nodoc
mixin _$NewsRecommendation {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  List<NewsArticle> get articles => throw _privateConstructorUsedError;
  double get relevanceScore => throw _privateConstructorUsedError;
  List<String> get reasons => throw _privateConstructorUsedError;
  DateTime get generatedAt => throw _privateConstructorUsedError;
  bool get isRead => throw _privateConstructorUsedError;
  DateTime? get readAt => throw _privateConstructorUsedError;

  /// Serializes this NewsRecommendation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsRecommendation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsRecommendationCopyWith<NewsRecommendation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsRecommendationCopyWith<$Res> {
  factory $NewsRecommendationCopyWith(
          NewsRecommendation value, $Res Function(NewsRecommendation) then) =
      _$NewsRecommendationCopyWithImpl<$Res, NewsRecommendation>;
  @useResult
  $Res call(
      {String id,
      String userId,
      List<NewsArticle> articles,
      double relevanceScore,
      List<String> reasons,
      DateTime generatedAt,
      bool isRead,
      DateTime? readAt});
}

/// @nodoc
class _$NewsRecommendationCopyWithImpl<$Res, $Val extends NewsRecommendation>
    implements $NewsRecommendationCopyWith<$Res> {
  _$NewsRecommendationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsRecommendation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? articles = null,
    Object? relevanceScore = null,
    Object? reasons = null,
    Object? generatedAt = null,
    Object? isRead = null,
    Object? readAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      articles: null == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<NewsArticle>,
      relevanceScore: null == relevanceScore
          ? _value.relevanceScore
          : relevanceScore // ignore: cast_nullable_to_non_nullable
              as double,
      reasons: null == reasons
          ? _value.reasons
          : reasons // ignore: cast_nullable_to_non_nullable
              as List<String>,
      generatedAt: null == generatedAt
          ? _value.generatedAt
          : generatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
abstract class _$$NewsRecommendationImplCopyWith<$Res>
    implements $NewsRecommendationCopyWith<$Res> {
  factory _$$NewsRecommendationImplCopyWith(_$NewsRecommendationImpl value,
          $Res Function(_$NewsRecommendationImpl) then) =
      __$$NewsRecommendationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      List<NewsArticle> articles,
      double relevanceScore,
      List<String> reasons,
      DateTime generatedAt,
      bool isRead,
      DateTime? readAt});
}

/// @nodoc
class __$$NewsRecommendationImplCopyWithImpl<$Res>
    extends _$NewsRecommendationCopyWithImpl<$Res, _$NewsRecommendationImpl>
    implements _$$NewsRecommendationImplCopyWith<$Res> {
  __$$NewsRecommendationImplCopyWithImpl(_$NewsRecommendationImpl _value,
      $Res Function(_$NewsRecommendationImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsRecommendation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? articles = null,
    Object? relevanceScore = null,
    Object? reasons = null,
    Object? generatedAt = null,
    Object? isRead = null,
    Object? readAt = freezed,
  }) {
    return _then(_$NewsRecommendationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<NewsArticle>,
      relevanceScore: null == relevanceScore
          ? _value.relevanceScore
          : relevanceScore // ignore: cast_nullable_to_non_nullable
              as double,
      reasons: null == reasons
          ? _value._reasons
          : reasons // ignore: cast_nullable_to_non_nullable
              as List<String>,
      generatedAt: null == generatedAt
          ? _value.generatedAt
          : generatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
class _$NewsRecommendationImpl implements _NewsRecommendation {
  const _$NewsRecommendationImpl(
      {required this.id,
      required this.userId,
      required final List<NewsArticle> articles,
      required this.relevanceScore,
      required final List<String> reasons,
      required this.generatedAt,
      required this.isRead,
      required this.readAt})
      : _articles = articles,
        _reasons = reasons;

  factory _$NewsRecommendationImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsRecommendationImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  final List<NewsArticle> _articles;
  @override
  List<NewsArticle> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  final double relevanceScore;
  final List<String> _reasons;
  @override
  List<String> get reasons {
    if (_reasons is EqualUnmodifiableListView) return _reasons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reasons);
  }

  @override
  final DateTime generatedAt;
  @override
  final bool isRead;
  @override
  final DateTime? readAt;

  @override
  String toString() {
    return 'NewsRecommendation(id: $id, userId: $userId, articles: $articles, relevanceScore: $relevanceScore, reasons: $reasons, generatedAt: $generatedAt, isRead: $isRead, readAt: $readAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsRecommendationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(other._articles, _articles) &&
            (identical(other.relevanceScore, relevanceScore) ||
                other.relevanceScore == relevanceScore) &&
            const DeepCollectionEquality().equals(other._reasons, _reasons) &&
            (identical(other.generatedAt, generatedAt) ||
                other.generatedAt == generatedAt) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.readAt, readAt) || other.readAt == readAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      const DeepCollectionEquality().hash(_articles),
      relevanceScore,
      const DeepCollectionEquality().hash(_reasons),
      generatedAt,
      isRead,
      readAt);

  /// Create a copy of NewsRecommendation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsRecommendationImplCopyWith<_$NewsRecommendationImpl> get copyWith =>
      __$$NewsRecommendationImplCopyWithImpl<_$NewsRecommendationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsRecommendationImplToJson(
      this,
    );
  }
}

abstract class _NewsRecommendation implements NewsRecommendation {
  const factory _NewsRecommendation(
      {required final String id,
      required final String userId,
      required final List<NewsArticle> articles,
      required final double relevanceScore,
      required final List<String> reasons,
      required final DateTime generatedAt,
      required final bool isRead,
      required final DateTime? readAt}) = _$NewsRecommendationImpl;

  factory _NewsRecommendation.fromJson(Map<String, dynamic> json) =
      _$NewsRecommendationImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  List<NewsArticle> get articles;
  @override
  double get relevanceScore;
  @override
  List<String> get reasons;
  @override
  DateTime get generatedAt;
  @override
  bool get isRead;
  @override
  DateTime? get readAt;

  /// Create a copy of NewsRecommendation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsRecommendationImplCopyWith<_$NewsRecommendationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsAnalytics _$NewsAnalyticsFromJson(Map<String, dynamic> json) {
  return _NewsAnalytics.fromJson(json);
}

/// @nodoc
mixin _$NewsAnalytics {
  String get id => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  int get totalArticles => throw _privateConstructorUsedError;
  int get processedArticles => throw _privateConstructorUsedError;
  Map<String, int> get sourceDistribution => throw _privateConstructorUsedError;
  Map<String, double> get sentimentDistribution =>
      throw _privateConstructorUsedError;
  List<NewsTrend> get topTrends => throw _privateConstructorUsedError;
  List<String> get topEntities => throw _privateConstructorUsedError;
  double get averageSentiment => throw _privateConstructorUsedError;
  double get averageConfidence => throw _privateConstructorUsedError;

  /// Serializes this NewsAnalytics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsAnalyticsCopyWith<NewsAnalytics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsAnalyticsCopyWith<$Res> {
  factory $NewsAnalyticsCopyWith(
          NewsAnalytics value, $Res Function(NewsAnalytics) then) =
      _$NewsAnalyticsCopyWithImpl<$Res, NewsAnalytics>;
  @useResult
  $Res call(
      {String id,
      DateTime date,
      int totalArticles,
      int processedArticles,
      Map<String, int> sourceDistribution,
      Map<String, double> sentimentDistribution,
      List<NewsTrend> topTrends,
      List<String> topEntities,
      double averageSentiment,
      double averageConfidence});
}

/// @nodoc
class _$NewsAnalyticsCopyWithImpl<$Res, $Val extends NewsAnalytics>
    implements $NewsAnalyticsCopyWith<$Res> {
  _$NewsAnalyticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? totalArticles = null,
    Object? processedArticles = null,
    Object? sourceDistribution = null,
    Object? sentimentDistribution = null,
    Object? topTrends = null,
    Object? topEntities = null,
    Object? averageSentiment = null,
    Object? averageConfidence = null,
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
      totalArticles: null == totalArticles
          ? _value.totalArticles
          : totalArticles // ignore: cast_nullable_to_non_nullable
              as int,
      processedArticles: null == processedArticles
          ? _value.processedArticles
          : processedArticles // ignore: cast_nullable_to_non_nullable
              as int,
      sourceDistribution: null == sourceDistribution
          ? _value.sourceDistribution
          : sourceDistribution // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      sentimentDistribution: null == sentimentDistribution
          ? _value.sentimentDistribution
          : sentimentDistribution // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      topTrends: null == topTrends
          ? _value.topTrends
          : topTrends // ignore: cast_nullable_to_non_nullable
              as List<NewsTrend>,
      topEntities: null == topEntities
          ? _value.topEntities
          : topEntities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      averageSentiment: null == averageSentiment
          ? _value.averageSentiment
          : averageSentiment // ignore: cast_nullable_to_non_nullable
              as double,
      averageConfidence: null == averageConfidence
          ? _value.averageConfidence
          : averageConfidence // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsAnalyticsImplCopyWith<$Res>
    implements $NewsAnalyticsCopyWith<$Res> {
  factory _$$NewsAnalyticsImplCopyWith(
          _$NewsAnalyticsImpl value, $Res Function(_$NewsAnalyticsImpl) then) =
      __$$NewsAnalyticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime date,
      int totalArticles,
      int processedArticles,
      Map<String, int> sourceDistribution,
      Map<String, double> sentimentDistribution,
      List<NewsTrend> topTrends,
      List<String> topEntities,
      double averageSentiment,
      double averageConfidence});
}

/// @nodoc
class __$$NewsAnalyticsImplCopyWithImpl<$Res>
    extends _$NewsAnalyticsCopyWithImpl<$Res, _$NewsAnalyticsImpl>
    implements _$$NewsAnalyticsImplCopyWith<$Res> {
  __$$NewsAnalyticsImplCopyWithImpl(
      _$NewsAnalyticsImpl _value, $Res Function(_$NewsAnalyticsImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? totalArticles = null,
    Object? processedArticles = null,
    Object? sourceDistribution = null,
    Object? sentimentDistribution = null,
    Object? topTrends = null,
    Object? topEntities = null,
    Object? averageSentiment = null,
    Object? averageConfidence = null,
  }) {
    return _then(_$NewsAnalyticsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalArticles: null == totalArticles
          ? _value.totalArticles
          : totalArticles // ignore: cast_nullable_to_non_nullable
              as int,
      processedArticles: null == processedArticles
          ? _value.processedArticles
          : processedArticles // ignore: cast_nullable_to_non_nullable
              as int,
      sourceDistribution: null == sourceDistribution
          ? _value._sourceDistribution
          : sourceDistribution // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      sentimentDistribution: null == sentimentDistribution
          ? _value._sentimentDistribution
          : sentimentDistribution // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      topTrends: null == topTrends
          ? _value._topTrends
          : topTrends // ignore: cast_nullable_to_non_nullable
              as List<NewsTrend>,
      topEntities: null == topEntities
          ? _value._topEntities
          : topEntities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      averageSentiment: null == averageSentiment
          ? _value.averageSentiment
          : averageSentiment // ignore: cast_nullable_to_non_nullable
              as double,
      averageConfidence: null == averageConfidence
          ? _value.averageConfidence
          : averageConfidence // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsAnalyticsImpl implements _NewsAnalytics {
  const _$NewsAnalyticsImpl(
      {required this.id,
      required this.date,
      required this.totalArticles,
      required this.processedArticles,
      required final Map<String, int> sourceDistribution,
      required final Map<String, double> sentimentDistribution,
      required final List<NewsTrend> topTrends,
      required final List<String> topEntities,
      required this.averageSentiment,
      required this.averageConfidence})
      : _sourceDistribution = sourceDistribution,
        _sentimentDistribution = sentimentDistribution,
        _topTrends = topTrends,
        _topEntities = topEntities;

  factory _$NewsAnalyticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsAnalyticsImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime date;
  @override
  final int totalArticles;
  @override
  final int processedArticles;
  final Map<String, int> _sourceDistribution;
  @override
  Map<String, int> get sourceDistribution {
    if (_sourceDistribution is EqualUnmodifiableMapView)
      return _sourceDistribution;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_sourceDistribution);
  }

  final Map<String, double> _sentimentDistribution;
  @override
  Map<String, double> get sentimentDistribution {
    if (_sentimentDistribution is EqualUnmodifiableMapView)
      return _sentimentDistribution;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_sentimentDistribution);
  }

  final List<NewsTrend> _topTrends;
  @override
  List<NewsTrend> get topTrends {
    if (_topTrends is EqualUnmodifiableListView) return _topTrends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topTrends);
  }

  final List<String> _topEntities;
  @override
  List<String> get topEntities {
    if (_topEntities is EqualUnmodifiableListView) return _topEntities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topEntities);
  }

  @override
  final double averageSentiment;
  @override
  final double averageConfidence;

  @override
  String toString() {
    return 'NewsAnalytics(id: $id, date: $date, totalArticles: $totalArticles, processedArticles: $processedArticles, sourceDistribution: $sourceDistribution, sentimentDistribution: $sentimentDistribution, topTrends: $topTrends, topEntities: $topEntities, averageSentiment: $averageSentiment, averageConfidence: $averageConfidence)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsAnalyticsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.totalArticles, totalArticles) ||
                other.totalArticles == totalArticles) &&
            (identical(other.processedArticles, processedArticles) ||
                other.processedArticles == processedArticles) &&
            const DeepCollectionEquality()
                .equals(other._sourceDistribution, _sourceDistribution) &&
            const DeepCollectionEquality()
                .equals(other._sentimentDistribution, _sentimentDistribution) &&
            const DeepCollectionEquality()
                .equals(other._topTrends, _topTrends) &&
            const DeepCollectionEquality()
                .equals(other._topEntities, _topEntities) &&
            (identical(other.averageSentiment, averageSentiment) ||
                other.averageSentiment == averageSentiment) &&
            (identical(other.averageConfidence, averageConfidence) ||
                other.averageConfidence == averageConfidence));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      date,
      totalArticles,
      processedArticles,
      const DeepCollectionEquality().hash(_sourceDistribution),
      const DeepCollectionEquality().hash(_sentimentDistribution),
      const DeepCollectionEquality().hash(_topTrends),
      const DeepCollectionEquality().hash(_topEntities),
      averageSentiment,
      averageConfidence);

  /// Create a copy of NewsAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsAnalyticsImplCopyWith<_$NewsAnalyticsImpl> get copyWith =>
      __$$NewsAnalyticsImplCopyWithImpl<_$NewsAnalyticsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsAnalyticsImplToJson(
      this,
    );
  }
}

abstract class _NewsAnalytics implements NewsAnalytics {
  const factory _NewsAnalytics(
      {required final String id,
      required final DateTime date,
      required final int totalArticles,
      required final int processedArticles,
      required final Map<String, int> sourceDistribution,
      required final Map<String, double> sentimentDistribution,
      required final List<NewsTrend> topTrends,
      required final List<String> topEntities,
      required final double averageSentiment,
      required final double averageConfidence}) = _$NewsAnalyticsImpl;

  factory _NewsAnalytics.fromJson(Map<String, dynamic> json) =
      _$NewsAnalyticsImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get date;
  @override
  int get totalArticles;
  @override
  int get processedArticles;
  @override
  Map<String, int> get sourceDistribution;
  @override
  Map<String, double> get sentimentDistribution;
  @override
  List<NewsTrend> get topTrends;
  @override
  List<String> get topEntities;
  @override
  double get averageSentiment;
  @override
  double get averageConfidence;

  /// Create a copy of NewsAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsAnalyticsImplCopyWith<_$NewsAnalyticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
