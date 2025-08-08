import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import '../models/news_model.dart';
import '../constants/app_constants.dart';

part 'news_service.g.dart';

@RestApi(baseUrl: AppConstants.baseUrl)
abstract class NewsService {
  factory NewsService(Dio dio, {String baseUrl}) = _NewsService;

  // News Sources
  @GET('/news/sources')
  Future<List<NewsSource>> getNewsSources();

  @GET('/news/headlines')
  Future<List<NewsArticle>> getHeadlines(
    @Query('category') String? category,
    @Query('source') String? source,
    @Query('limit') int? limit,
  );

  @GET('/news/search')
  Future<List<NewsArticle>> searchNews(
    @Query('query') String query,
    @Query('category') String? category,
    @Query('source') String? source,
    @Query('date_from') String? dateFrom,
    @Query('date_to') String? dateTo,
  );

  @GET('/news/company/{symbol}')
  Future<List<NewsArticle>> getCompanyNews(
    @Path('symbol') String symbol,
    @Query('limit') int? limit,
  );

  @GET('/news/market-sentiment')
  Future<MarketSentiment> getMarketSentiment();

  // RAG and NLP
  @POST('/news/rag/query')
  Future<RAGResponse> queryRAG(@Body() RAGQuery query);

  @POST('/news/rag/context')
  Future<RAGContext> getRAGContext(@Body() RAGQuery query);

  @POST('/news/sentiment/analyze')
  Future<SentimentAnalysis> analyzeSentiment(@Body() SentimentRequest request);

  @POST('/news/stance/detect')
  Future<StanceDetection> detectStance(@Body() StanceRequest request);

  @POST('/news/summarize')
  Future<NewsSummary> summarizeArticle(@Body() SummaryRequest request);

  @POST('/news/extract/entities')
  Future<EntityExtraction> extractEntities(@Body() EntityRequest request);

  @POST('/news/classify')
  Future<NewsClassification> classifyArticle(@Body() ClassificationRequest request);

  // News Aggregation
  @GET('/news/trending')
  Future<List<TrendingTopic>> getTrendingTopics();

  @GET('/news/breaking')
  Future<List<NewsArticle>> getBreakingNews();

  @GET('/news/earnings')
  Future<List<NewsArticle>> getEarningsNews();

  @GET('/news/economic-calendar')
  Future<List<EconomicEvent>> getEconomicCalendar();

  // News Analytics
  @GET('/news/analytics/volume')
  Future<NewsVolumeAnalytics> getNewsVolumeAnalytics();

  @GET('/news/analytics/sentiment-trends')
  Future<SentimentTrends> getSentimentTrends();

  @GET('/news/analytics/impact-scores')
  Future<List<ImpactScore>> getImpactScores();

  // News Recommendations
  @POST('/news/recommendations')
  Future<List<NewsArticle>> getPersonalizedNews(@Body() RecommendationRequest request);

  @GET('/news/recommendations/user/{userId}')
  Future<List<NewsArticle>> getUserRecommendations(@Path('userId') String userId);

  // News Alerts
  @POST('/news/alerts/create')
  Future<NewsAlert> createNewsAlert(@Body() NewsAlertRequest request);

  @GET('/news/alerts/user/{userId}')
  Future<List<NewsAlert>> getUserAlerts(@Path('userId') String userId);

  @DELETE('/news/alerts/{alertId}')
  Future<void> deleteNewsAlert(@Path('alertId') String alertId);
}

class NewsServiceImplementation {
  final NewsService _newsService;
  final Dio _dio;
  final SharedPreferences _prefs;

  NewsServiceImplementation(this._newsService, this._dio, this._prefs);

  // Cache keys
  static const String _headlinesCacheKey = 'headlines_cache';
  static const String _sourcesCacheKey = 'sources_cache';
  static const String _sentimentCacheKey = 'sentiment_cache';
  static const String _trendingCacheKey = 'trending_cache';

  // Get headlines with caching
  Future<List<NewsArticle>> getHeadlines({
    String? category,
    String? source,
    int limit = 20,
  }) async {
    try {
      // Check cache first
      final cached = await _getCachedHeadlines(category, source);
      if (cached != null) {
        return cached.take(limit).toList();
      }

      // Fetch from API
      final headlines = await _newsService.getHeadlines(category, source, limit);
      
      // Cache the results
      await _cacheHeadlines(headlines, category, source);
      
      return headlines;
    } catch (e) {
      // Return cached data if available
      final cached = await _getCachedHeadlines(category, source);
      if (cached != null) {
        return cached.take(limit).toList();
      }
      rethrow;
    }
  }

  // Get news sources
  Future<List<NewsSource>> getNewsSources() async {
    try {
      final cached = await _getCachedSources();
      if (cached != null) {
        return cached;
      }

      final sources = await _newsService.getNewsSources();
      await _cacheSources(sources);
      return sources;
    } catch (e) {
      final cached = await _getCachedSources();
      if (cached != null) {
        return cached;
      }
      rethrow;
    }
  }

  // Search news with RAG
  Future<List<NewsArticle>> searchNewsWithRAG(String query) async {
    try {
      // First get regular search results
      final searchResults = await _newsService.searchNews(query, null, null, null, null);
      
      // Then enhance with RAG
      final ragQuery = RAGQuery(
        query: query,
        context: searchResults.map((article) => article.content).join('\n'),
        maxResults: 10,
      );
      
      final ragResponse = await _newsService.queryRAG(ragQuery);
      
      // Combine and rank results
      final enhancedResults = await _enhanceSearchResults(searchResults, ragResponse);
      
      return enhancedResults;
    } catch (e) {
      // Fallback to regular search
      return await _newsService.searchNews(query, null, null, null, null);
    }
  }

  // Get company news with sentiment analysis
  Future<List<NewsArticle>> getCompanyNewsWithSentiment(String symbol) async {
    try {
      final articles = await _newsService.getCompanyNews(symbol, 50);
      
      // Analyze sentiment for each article
      final enhancedArticles = await Future.wait(
        articles.map((article) async {
          try {
            final sentimentRequest = SentimentRequest(
              text: article.content,
              context: 'financial_news',
            );
            
            final sentiment = await _newsService.analyzeSentiment(sentimentRequest);
            
            return article.copyWith(
              sentiment: sentiment.sentiment,
              sentimentScore: sentiment.score,
              confidence: sentiment.confidence,
            );
          } catch (e) {
            return article;
          }
        }),
      );
      
      return enhancedArticles;
    } catch (e) {
      return [];
    }
  }

  // Get market sentiment
  Future<MarketSentiment> getMarketSentiment() async {
    try {
      final cached = await _getCachedSentiment();
      if (cached != null) {
        return cached;
      }

      final sentiment = await _newsService.getMarketSentiment();
      await _cacheSentiment(sentiment);
      return sentiment;
    } catch (e) {
      final cached = await _getCachedSentiment();
      if (cached != null) {
        return cached;
      }
      rethrow;
    }
  }

  // Analyze article sentiment
  Future<SentimentAnalysis> analyzeArticleSentiment(String content) async {
    try {
      final request = SentimentRequest(
        text: content,
        context: 'financial_news',
      );
      
      return await _newsService.analyzeSentiment(request);
    } catch (e) {
      // Return neutral sentiment as fallback
      return SentimentAnalysis(
        sentiment: Sentiment.neutral,
        score: 0.0,
        confidence: 0.5,
        aspects: {},
      );
    }
  }

  // Detect stance in news article
  Future<StanceDetection> detectArticleStance(String content, String topic) async {
    try {
      final request = StanceRequest(
        text: content,
        topic: topic,
        context: 'financial_news',
      );
      
      return await _newsService.detectStance(request);
    } catch (e) {
      // Return neutral stance as fallback
      return StanceDetection(
        stance: Stance.neutral,
        confidence: 0.5,
        reasoning: 'Unable to detect stance',
      );
    }
  }

  // Summarize article
  Future<NewsSummary> summarizeArticle(String content) async {
    try {
      final request = SummaryRequest(
        content: content,
        maxLength: 200,
        includeKeyPoints: true,
      );
      
      return await _newsService.summarizeArticle(request);
    } catch (e) {
      // Return basic summary as fallback
      final words = content.split(' ');
      final summary = words.take(50).join(' ');
      
      return NewsSummary(
        summary: summary,
        keyPoints: [],
        readingTime: (words.length / 200).ceil(),
        confidence: 0.5,
      );
    }
  }

  // Extract entities from article
  Future<EntityExtraction> extractArticleEntities(String content) async {
    try {
      final request = EntityRequest(
        text: content,
        entityTypes: [
          EntityType.company,
          EntityType.person,
          EntityType.location,
          EntityType.currency,
          EntityType.number,
        ],
      );
      
      return await _newsService.extractEntities(request);
    } catch (e) {
      return EntityExtraction(
        entities: [],
        confidence: 0.0,
      );
    }
  }

  // Classify article
  Future<NewsClassification> classifyArticle(String content) async {
    try {
      final request = ClassificationRequest(
        content: content,
        categories: [
          'earnings',
          'mergers_acquisitions',
          'market_movement',
          'economic_data',
          'regulatory',
          'technology',
          'crypto',
          'commodities',
        ],
      );
      
      return await _newsService.classifyArticle(request);
    } catch (e) {
      return NewsClassification(
        category: 'general',
        confidence: 0.5,
        subcategories: [],
      );
    }
  }

  // Get trending topics
  Future<List<TrendingTopic>> getTrendingTopics() async {
    try {
      final cached = await _getCachedTrending();
      if (cached != null) {
        return cached;
      }

      final topics = await _newsService.getTrendingTopics();
      await _cacheTrending(topics);
      return topics;
    } catch (e) {
      final cached = await _getCachedTrending();
      if (cached != null) {
        return cached;
      }
      rethrow;
    }
  }

  // Get breaking news
  Future<List<NewsArticle>> getBreakingNews() async {
    try {
      return await _newsService.getBreakingNews();
    } catch (e) {
      return [];
    }
  }

  // Get earnings news
  Future<List<NewsArticle>> getEarningsNews() async {
    try {
      return await _newsService.getEarningsNews();
    } catch (e) {
      return [];
    }
  }

  // Get economic calendar
  Future<List<EconomicEvent>> getEconomicCalendar() async {
    try {
      return await _newsService.getEconomicCalendar();
    } catch (e) {
      return [];
    }
  }

  // Get personalized news recommendations
  Future<List<NewsArticle>> getPersonalizedNews({
    required String userId,
    List<String>? interests,
    List<String>? watchlist,
    int limit = 20,
  }) async {
    try {
      final request = RecommendationRequest(
        userId: userId,
        interests: interests ?? [],
        watchlist: watchlist ?? [],
        limit: limit,
        includeSentiment: true,
        includeStance: true,
      );
      
      return await _newsService.getPersonalizedNews(request);
    } catch (e) {
      // Fallback to general headlines
      return await getHeadlines(limit: limit);
    }
  }

  // Create news alert
  Future<NewsAlert?> createNewsAlert({
    required String userId,
    required String query,
    required List<String> sources,
    required AlertFrequency frequency,
  }) async {
    try {
      final request = NewsAlertRequest(
        userId: userId,
        query: query,
        sources: sources,
        frequency: frequency,
        active: true,
      );
      
      return await _newsService.createNewsAlert(request);
    } catch (e) {
      return null;
    }
  }

  // Get user alerts
  Future<List<NewsAlert>> getUserAlerts(String userId) async {
    try {
      return await _newsService.getUserAlerts(userId);
    } catch (e) {
      return [];
    }
  }

  // Delete news alert
  Future<bool> deleteNewsAlert(String alertId) async {
    try {
      await _newsService.deleteNewsAlert(alertId);
      return true;
    } catch (e) {
      return false;
    }
  }

  // Check network connectivity
  Future<bool> isConnected() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    return connectivityResult != ConnectivityResult.none;
  }

  // Helper method to enhance search results with RAG
  Future<List<NewsArticle>> _enhanceSearchResults(
    List<NewsArticle> articles,
    RAGResponse ragResponse,
  ) async {
    // Combine regular search results with RAG insights
    final enhancedArticles = <NewsArticle>[];
    
    for (final article in articles) {
      // Find relevant RAG insights
      final relevantInsights = ragResponse.insights
          .where((insight) => insight.relevance > 0.7)
          .toList();
      
      if (relevantInsights.isNotEmpty) {
        // Enhance article with RAG insights
        final enhancedArticle = article.copyWith(
          ragInsights: relevantInsights,
          relevanceScore: relevantInsights
              .map((insight) => insight.relevance)
              .reduce((a, b) => a + b) / relevantInsights.length,
        );
        
        enhancedArticles.add(enhancedArticle);
      } else {
        enhancedArticles.add(article);
      }
    }
    
    // Sort by relevance score
    enhancedArticles.sort((a, b) => (b.relevanceScore ?? 0).compareTo(a.relevanceScore ?? 0));
    
    return enhancedArticles;
  }

  // Cache management
  Future<void> _cacheHeadlines(List<NewsArticle> headlines, String? category, String? source) async {
    final now = DateTime.now();
    final cacheKey = '${_headlinesCacheKey}_${category ?? 'all'}_${source ?? 'all'}';
    final cacheData = {
      'timestamp': now.millisecondsSinceEpoch,
      'data': headlines.map((h) => h.toJson()).toList(),
    };
    await _prefs.setString(cacheKey, jsonEncode(cacheData));
  }

  Future<List<NewsArticle>?> _getCachedHeadlines(String? category, String? source) async {
    final cacheKey = '${_headlinesCacheKey}_${category ?? 'all'}_${source ?? 'all'}';
    final cached = _prefs.getString(cacheKey);
    if (cached == null) return null;

    try {
      final data = jsonDecode(cached) as Map<String, dynamic>;
      final timestamp = data['timestamp'] as int;
      final now = DateTime.now().millisecondsSinceEpoch;
      
      // Check if cache is still valid (10 minutes)
      if (now - timestamp > 10 * 60 * 1000) return null;
      
      final headlinesList = data['data'] as List;
      return headlinesList.map((json) => NewsArticle.fromJson(json)).toList();
    } catch (e) {
      return null;
    }
  }

  Future<void> _cacheSources(List<NewsSource> sources) async {
    final now = DateTime.now();
    final cacheData = {
      'timestamp': now.millisecondsSinceEpoch,
      'data': sources.map((s) => s.toJson()).toList(),
    };
    await _prefs.setString(_sourcesCacheKey, jsonEncode(cacheData));
  }

  Future<List<NewsSource>?> _getCachedSources() async {
    final cached = _prefs.getString(_sourcesCacheKey);
    if (cached == null) return null;

    try {
      final data = jsonDecode(cached) as Map<String, dynamic>;
      final timestamp = data['timestamp'] as int;
      final now = DateTime.now().millisecondsSinceEpoch;
      
      // Check if cache is still valid (1 hour)
      if (now - timestamp > 60 * 60 * 1000) return null;
      
      final sourcesList = data['data'] as List;
      return sourcesList.map((json) => NewsSource.fromJson(json)).toList();
    } catch (e) {
      return null;
    }
  }

  Future<void> _cacheSentiment(MarketSentiment sentiment) async {
    final now = DateTime.now();
    final cacheData = {
      'timestamp': now.millisecondsSinceEpoch,
      'data': sentiment.toJson(),
    };
    await _prefs.setString(_sentimentCacheKey, jsonEncode(cacheData));
  }

  Future<MarketSentiment?> _getCachedSentiment() async {
    final cached = _prefs.getString(_sentimentCacheKey);
    if (cached == null) return null;

    try {
      final data = jsonDecode(cached) as Map<String, dynamic>;
      final timestamp = data['timestamp'] as int;
      final now = DateTime.now().millisecondsSinceEpoch;
      
      // Check if cache is still valid (30 minutes)
      if (now - timestamp > 30 * 60 * 1000) return null;
      
      final sentimentData = data['data'] as Map<String, dynamic>;
      return MarketSentiment.fromJson(sentimentData);
    } catch (e) {
      return null;
    }
  }

  Future<void> _cacheTrending(List<TrendingTopic> topics) async {
    final now = DateTime.now();
    final cacheData = {
      'timestamp': now.millisecondsSinceEpoch,
      'data': topics.map((t) => t.toJson()).toList(),
    };
    await _prefs.setString(_trendingCacheKey, jsonEncode(cacheData));
  }

  Future<List<TrendingTopic>?> _getCachedTrending() async {
    final cached = _prefs.getString(_trendingCacheKey);
    if (cached == null) return null;

    try {
      final data = jsonDecode(cached) as Map<String, dynamic>;
      final timestamp = data['timestamp'] as int;
      final now = DateTime.now().millisecondsSinceEpoch;
      
      // Check if cache is still valid (15 minutes)
      if (now - timestamp > 15 * 60 * 1000) return null;
      
      final topicsList = data['data'] as List;
      return topicsList.map((json) => TrendingTopic.fromJson(json)).toList();
    } catch (e) {
      return null;
    }
  }

  // Clear cache
  Future<void> clearCache() async {
    final keys = _prefs.getKeys();
    for (final key in keys) {
      if (key.startsWith(_headlinesCacheKey) ||
          key.startsWith(_sourcesCacheKey) ||
          key.startsWith(_sentimentCacheKey) ||
          key.startsWith(_trendingCacheKey)) {
        await _prefs.remove(key);
      }
    }
  }

  // Refresh data
  Future<void> refreshData() async {
    await clearCache();
    await getHeadlines();
    await getNewsSources();
    await getMarketSentiment();
    await getTrendingTopics();
  }
} 