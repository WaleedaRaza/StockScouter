import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import '../models/user_model.dart';
import '../models/stock_model.dart';
import '../models/crypto_model.dart';
import '../models/news_model.dart';
import '../constants/app_constants.dart';

part 'behavioral_service.g.dart';

@RestApi(baseUrl: AppConstants.baseUrl)
abstract class BehavioralService {
  factory BehavioralService(Dio dio, {String baseUrl}) = _BehavioralService;

  // User Behavior Tracking
  @POST('/behavior/track')
  Future<void> trackUserBehavior(@Body() UserBehavior behavior);

  @GET('/behavior/user/{userId}')
  Future<UserBehaviorProfile> getUserBehaviorProfile(@Path('userId') String userId);

  @POST('/behavior/analyze')
  Future<BehaviorAnalysis> analyzeUserBehavior(@Body() BehaviorAnalysisRequest request);

  // Learning and Preferences
  @POST('/learning/preferences/update')
  Future<UserPreferences> updateUserPreferences(@Body() UserPreferences preferences);

  @GET('/learning/preferences/{userId}')
  Future<UserPreferences> getUserPreferences(@Path('userId') String userId);

  @POST('/learning/patterns/detect')
  Future<List<BehaviorPattern>> detectBehaviorPatterns(@Body() PatternDetectionRequest request);

  @GET('/learning/patterns/user/{userId}')
  Future<List<BehaviorPattern>> getUserBehaviorPatterns(@Path('userId') String userId);

  // Personalized Recommendations
  @POST('/recommendations/stocks')
  Future<List<StockRecommendation>> getStockRecommendations(@Body() RecommendationRequest request);

  @POST('/recommendations/crypto')
  Future<List<CryptoRecommendation>> getCryptoRecommendations(@Body() RecommendationRequest request);

  @POST('/recommendations/news')
  Future<List<NewsRecommendation>> getNewsRecommendations(@Body() RecommendationRequest request);

  @POST('/recommendations/portfolio')
  Future<PortfolioRecommendation> getPortfolioRecommendations(@Body() PortfolioRecommendationRequest request);

  // Risk Assessment
  @POST('/risk/assessment')
  Future<RiskAssessment> assessUserRisk(@Body() RiskAssessmentRequest request);

  @GET('/risk/profile/{userId}')
  Future<RiskProfile> getUserRiskProfile(@Path('userId') String userId);

  @POST('/risk/tolerance/update')
  Future<RiskTolerance> updateRiskTolerance(@Body() RiskToleranceUpdate request);

  // Investment Goals
  @POST('/goals/set')
  Future<InvestmentGoal> setInvestmentGoal(@Body() InvestmentGoalRequest request);

  @GET('/goals/user/{userId}')
  Future<List<InvestmentGoal>> getUserGoals(@Path('userId') String userId);

  @POST('/goals/progress/update')
  Future<GoalProgress> updateGoalProgress(@Body() GoalProgressUpdate request);

  // Market Sentiment Analysis
  @POST('/sentiment/personal')
  Future<PersonalMarketSentiment> getPersonalMarketSentiment(@Body() PersonalSentimentRequest request);

  @GET('/sentiment/trends/{userId}')
  Future<SentimentTrends> getUserSentimentTrends(@Path('userId') String userId);

  // Trading Patterns
  @POST('/trading/patterns/analyze')
  Future<TradingPatternAnalysis> analyzeTradingPatterns(@Body() TradingPatternRequest request);

  @GET('/trading/patterns/user/{userId}')
  Future<List<TradingPattern>> getUserTradingPatterns(@Path('userId') String userId);

  // Performance Insights
  @POST('/performance/insights')
  Future<PerformanceInsights> getPerformanceInsights(@Body() PerformanceInsightsRequest request);

  @GET('/performance/history/{userId}')
  Future<List<PerformanceMetric>> getUserPerformanceHistory(@Path('userId') String userId);

  // Learning Recommendations
  @POST('/learning/recommendations')
  Future<List<LearningRecommendation>> getLearningRecommendations(@Body() LearningRequest request);

  @POST('/learning/progress/track')
  Future<void> trackLearningProgress(@Body() LearningProgress progress);
}

class BehavioralServiceImplementation {
  final BehavioralService _behavioralService;
  final Dio _dio;
  final SharedPreferences _prefs;

  BehavioralServiceImplementation(this._behavioralService, this._dio, this._prefs);

  // Cache keys
  static const String _preferencesCacheKey = 'user_preferences';
  static const String _behaviorCacheKey = 'user_behavior';
  static const String _patternsCacheKey = 'behavior_patterns';
  static const String _riskProfileCacheKey = 'risk_profile';
  static const String _goalsCacheKey = 'investment_goals';

  // Track user behavior
  Future<void> trackUserBehavior({
    required String userId,
    required BehaviorType type,
    required Map<String, dynamic> data,
    String? context,
  }) async {
    try {
      final behavior = UserBehavior(
        userId: userId,
        type: type,
        data: data,
        context: context,
        timestamp: DateTime.now(),
        sessionId: await _getCurrentSessionId(),
      );

      await _behavioralService.trackUserBehavior(behavior);
      
      // Cache behavior locally for offline analysis
      await _cacheUserBehavior(behavior);
    } catch (e) {
      // Store behavior locally for later sync
      await _storeOfflineBehavior(userId, type, data, context);
    }
  }

  // Get user behavior profile
  Future<UserBehaviorProfile?> getUserBehaviorProfile(String userId) async {
    try {
      final cached = await _getCachedBehaviorProfile(userId);
      if (cached != null) {
        return cached;
      }

      final profile = await _behavioralService.getUserBehaviorProfile(userId);
      await _cacheBehaviorProfile(userId, profile);
      return profile;
    } catch (e) {
      final cached = await _getCachedBehaviorProfile(userId);
      if (cached != null) {
        return cached;
      }
      return null;
    }
  }

  // Update user preferences
  Future<UserPreferences?> updateUserPreferences(UserPreferences preferences) async {
    try {
      final updatedPreferences = await _behavioralService.updateUserPreferences(preferences);
      await _cacheUserPreferences(updatedPreferences);
      return updatedPreferences;
    } catch (e) {
      return null;
    }
  }

  // Get user preferences
  Future<UserPreferences?> getUserPreferences(String userId) async {
    try {
      final cached = await _getCachedUserPreferences(userId);
      if (cached != null) {
        return cached;
      }

      final preferences = await _behavioralService.getUserPreferences(userId);
      await _cacheUserPreferences(preferences);
      return preferences;
    } catch (e) {
      final cached = await _getCachedUserPreferences(userId);
      if (cached != null) {
        return cached;
      }
      return null;
    }
  }

  // Detect behavior patterns
  Future<List<BehaviorPattern>> detectBehaviorPatterns(String userId) async {
    try {
      final cached = await _getCachedBehaviorPatterns(userId);
      if (cached != null) {
        return cached;
      }

      final request = PatternDetectionRequest(
        userId: userId,
        timeRange: '30d',
        includeTradingPatterns: true,
        includeNewsPatterns: true,
        includeMarketPatterns: true,
      );

      final patterns = await _behavioralService.detectBehaviorPatterns(request);
      await _cacheBehaviorPatterns(userId, patterns);
      return patterns;
    } catch (e) {
      final cached = await _getCachedBehaviorPatterns(userId);
      if (cached != null) {
        return cached;
      }
      return [];
    }
  }

  // Get stock recommendations
  Future<List<StockRecommendation>> getStockRecommendations({
    required String userId,
    int limit = 10,
    bool includeRiskAssessment = true,
  }) async {
    try {
      final request = RecommendationRequest(
        userId: userId,
        type: RecommendationType.stock,
        limit: limit,
        includeRiskAssessment: includeRiskAssessment,
        includeBehavioralInsights: true,
        includeMarketContext: true,
      );

      return await _behavioralService.getStockRecommendations(request);
    } catch (e) {
      return [];
    }
  }

  // Get crypto recommendations
  Future<List<CryptoRecommendation>> getCryptoRecommendations({
    required String userId,
    int limit = 10,
    bool includeRiskAssessment = true,
  }) async {
    try {
      final request = RecommendationRequest(
        userId: userId,
        type: RecommendationType.crypto,
        limit: limit,
        includeRiskAssessment: includeRiskAssessment,
        includeBehavioralInsights: true,
        includeMarketContext: true,
      );

      return await _behavioralService.getCryptoRecommendations(request);
    } catch (e) {
      return [];
    }
  }

  // Get news recommendations
  Future<List<NewsRecommendation>> getNewsRecommendations({
    required String userId,
    int limit = 20,
  }) async {
    try {
      final request = RecommendationRequest(
        userId: userId,
        type: RecommendationType.news,
        limit: limit,
        includeBehavioralInsights: true,
        includeSentimentAnalysis: true,
      );

      return await _behavioralService.getNewsRecommendations(request);
    } catch (e) {
      return [];
    }
  }

  // Get portfolio recommendations
  Future<PortfolioRecommendation?> getPortfolioRecommendations({
    required String userId,
    required List<PortfolioAsset> currentPortfolio,
  }) async {
    try {
      final request = PortfolioRecommendationRequest(
        userId: userId,
        currentPortfolio: currentPortfolio,
        includeRebalancing: true,
        includeRiskOptimization: true,
        includeTaxOptimization: true,
      );

      return await _behavioralService.getPortfolioRecommendations(request);
    } catch (e) {
      return null;
    }
  }

  // Assess user risk
  Future<RiskAssessment?> assessUserRisk({
    required String userId,
    required List<RiskFactor> riskFactors,
  }) async {
    try {
      final request = RiskAssessmentRequest(
        userId: userId,
        riskFactors: riskFactors,
        includeBehavioralAnalysis: true,
        includeMarketConditions: true,
      );

      return await _behavioralService.assessUserRisk(request);
    } catch (e) {
      return null;
    }
  }

  // Get user risk profile
  Future<RiskProfile?> getUserRiskProfile(String userId) async {
    try {
      final cached = await _getCachedRiskProfile(userId);
      if (cached != null) {
        return cached;
      }

      final profile = await _behavioralService.getUserRiskProfile(userId);
      await _cacheRiskProfile(userId, profile);
      return profile;
    } catch (e) {
      final cached = await _getCachedRiskProfile(userId);
      if (cached != null) {
        return cached;
      }
      return null;
    }
  }

  // Update risk tolerance
  Future<RiskTolerance?> updateRiskTolerance({
    required String userId,
    required RiskLevel newRiskLevel,
    String? reason,
  }) async {
    try {
      final request = RiskToleranceUpdate(
        userId: userId,
        newRiskLevel: newRiskLevel,
        reason: reason,
        timestamp: DateTime.now(),
      );

      return await _behavioralService.updateRiskTolerance(request);
    } catch (e) {
      return null;
    }
  }

  // Set investment goal
  Future<InvestmentGoal?> setInvestmentGoal({
    required String userId,
    required String goalName,
    required double targetAmount,
    required DateTime targetDate,
    required GoalType goalType,
    String? description,
  }) async {
    try {
      final request = InvestmentGoalRequest(
        userId: userId,
        goalName: goalName,
        targetAmount: targetAmount,
        targetDate: targetDate,
        goalType: goalType,
        description: description,
        createdAt: DateTime.now(),
      );

      final goal = await _behavioralService.setInvestmentGoal(request);
      await _cacheInvestmentGoal(userId, goal);
      return goal;
    } catch (e) {
      return null;
    }
  }

  // Get user goals
  Future<List<InvestmentGoal>> getUserGoals(String userId) async {
    try {
      final cached = await _getCachedInvestmentGoals(userId);
      if (cached != null) {
        return cached;
      }

      final goals = await _behavioralService.getUserGoals(userId);
      await _cacheInvestmentGoals(userId, goals);
      return goals;
    } catch (e) {
      final cached = await _getCachedInvestmentGoals(userId);
      if (cached != null) {
        return cached;
      }
      return [];
    }
  }

  // Update goal progress
  Future<GoalProgress?> updateGoalProgress({
    required String goalId,
    required double currentAmount,
    required double progressPercentage,
  }) async {
    try {
      final request = GoalProgressUpdate(
        goalId: goalId,
        currentAmount: currentAmount,
        progressPercentage: progressPercentage,
        updatedAt: DateTime.now(),
      );

      return await _behavioralService.updateGoalProgress(request);
    } catch (e) {
      return null;
    }
  }

  // Get personal market sentiment
  Future<PersonalMarketSentiment?> getPersonalMarketSentiment({
    required String userId,
    required List<String> watchlist,
  }) async {
    try {
      final request = PersonalSentimentRequest(
        userId: userId,
        watchlist: watchlist,
        includeBehavioralFactors: true,
        includeHistoricalData: true,
      );

      return await _behavioralService.getPersonalMarketSentiment(request);
    } catch (e) {
      return null;
    }
  }

  // Get user sentiment trends
  Future<SentimentTrends?> getUserSentimentTrends(String userId) async {
    try {
      return await _behavioralService.getUserSentimentTrends(userId);
    } catch (e) {
      return null;
    }
  }

  // Analyze trading patterns
  Future<TradingPatternAnalysis?> analyzeTradingPatterns({
    required String userId,
    required List<Trade> trades,
  }) async {
    try {
      final request = TradingPatternRequest(
        userId: userId,
        trades: trades,
        includeRiskAnalysis: true,
        includePerformanceMetrics: true,
        includeBehavioralInsights: true,
      );

      return await _behavioralService.analyzeTradingPatterns(request);
    } catch (e) {
      return null;
    }
  }

  // Get user trading patterns
  Future<List<TradingPattern>> getUserTradingPatterns(String userId) async {
    try {
      return await _behavioralService.getUserTradingPatterns(userId);
    } catch (e) {
      return [];
    }
  }

  // Get performance insights
  Future<PerformanceInsights?> getPerformanceInsights({
    required String userId,
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    try {
      final request = PerformanceInsightsRequest(
        userId: userId,
        startDate: startDate,
        endDate: endDate,
        includeBenchmarkComparison: true,
        includeRiskAdjustedMetrics: true,
        includeBehavioralAnalysis: true,
      );

      return await _behavioralService.getPerformanceInsights(request);
    } catch (e) {
      return null;
    }
  }

  // Get user performance history
  Future<List<PerformanceMetric>> getUserPerformanceHistory(String userId) async {
    try {
      return await _behavioralService.getUserPerformanceHistory(userId);
    } catch (e) {
      return [];
    }
  }

  // Get learning recommendations
  Future<List<LearningRecommendation>> getLearningRecommendations({
    required String userId,
    required UserSkillLevel skillLevel,
    int limit = 10,
  }) async {
    try {
      final request = LearningRequest(
        userId: userId,
        skillLevel: skillLevel,
        limit: limit,
        includePersonalizedContent: true,
        includeProgressTracking: true,
      );

      return await _behavioralService.getLearningRecommendations(request);
    } catch (e) {
      return [];
    }
  }

  // Track learning progress
  Future<void> trackLearningProgress({
    required String userId,
    required String learningItemId,
    required double progress,
    required LearningStatus status,
  }) async {
    try {
      final progressData = LearningProgress(
        userId: userId,
        learningItemId: learningItemId,
        progress: progress,
        status: status,
        timestamp: DateTime.now(),
      );

      await _behavioralService.trackLearningProgress(progressData);
    } catch (e) {
      // Store locally for later sync
      await _storeOfflineLearningProgress(userId, learningItemId, progress, status);
    }
  }

  // Helper methods
  Future<String> _getCurrentSessionId() async {
    String? sessionId = _prefs.getString('current_session_id');
    if (sessionId == null) {
      sessionId = DateTime.now().millisecondsSinceEpoch.toString();
      await _prefs.setString('current_session_id', sessionId);
    }
    return sessionId;
  }

  Future<void> _storeOfflineBehavior(
    String userId,
    BehaviorType type,
    Map<String, dynamic> data,
    String? context,
  ) async {
    final offlineBehaviors = _prefs.getStringList('offline_behaviors') ?? [];
    final behavior = {
      'userId': userId,
      'type': type.name,
      'data': jsonEncode(data),
      'context': context,
      'timestamp': DateTime.now().toIso8601String(),
    };
    
    offlineBehaviors.add(jsonEncode(behavior));
    await _prefs.setStringList('offline_behaviors', offlineBehaviors);
  }

  Future<void> _storeOfflineLearningProgress(
    String userId,
    String learningItemId,
    double progress,
    LearningStatus status,
  ) async {
    final offlineProgress = _prefs.getStringList('offline_learning_progress') ?? [];
    final progressData = {
      'userId': userId,
      'learningItemId': learningItemId,
      'progress': progress,
      'status': status.name,
      'timestamp': DateTime.now().toIso8601String(),
    };
    
    offlineProgress.add(jsonEncode(progressData));
    await _prefs.setStringList('offline_learning_progress', offlineProgress);
  }

  // Cache management
  Future<void> _cacheUserBehavior(UserBehavior behavior) async {
    final behaviors = _prefs.getStringList('${_behaviorCacheKey}_${behavior.userId}') ?? [];
    behaviors.add(jsonEncode(behavior.toJson()));
    
    // Keep only last 100 behaviors
    if (behaviors.length > 100) {
      behaviors.removeRange(0, behaviors.length - 100);
    }
    
    await _prefs.setStringList('${_behaviorCacheKey}_${behavior.userId}', behaviors);
  }

  Future<void> _cacheBehaviorProfile(String userId, UserBehaviorProfile profile) async {
    final now = DateTime.now();
    final cacheData = {
      'timestamp': now.millisecondsSinceEpoch,
      'data': profile.toJson(),
    };
    await _prefs.setString('${_behaviorCacheKey}_profile_$userId', jsonEncode(cacheData));
  }

  Future<UserBehaviorProfile?> _getCachedBehaviorProfile(String userId) async {
    final cached = _prefs.getString('${_behaviorCacheKey}_profile_$userId');
    if (cached == null) return null;

    try {
      final data = jsonDecode(cached) as Map<String, dynamic>;
      final timestamp = data['timestamp'] as int;
      final now = DateTime.now().millisecondsSinceEpoch;
      
      // Check if cache is still valid (1 hour)
      if (now - timestamp > 60 * 60 * 1000) return null;
      
      final profileData = data['data'] as Map<String, dynamic>;
      return UserBehaviorProfile.fromJson(profileData);
    } catch (e) {
      return null;
    }
  }

  Future<void> _cacheUserPreferences(UserPreferences preferences) async {
    final now = DateTime.now();
    final cacheData = {
      'timestamp': now.millisecondsSinceEpoch,
      'data': preferences.toJson(),
    };
    await _prefs.setString('${_preferencesCacheKey}_${preferences.userId}', jsonEncode(cacheData));
  }

  Future<UserPreferences?> _getCachedUserPreferences(String userId) async {
    final cached = _prefs.getString('${_preferencesCacheKey}_$userId');
    if (cached == null) return null;

    try {
      final data = jsonDecode(cached) as Map<String, dynamic>;
      final timestamp = data['timestamp'] as int;
      final now = DateTime.now().millisecondsSinceEpoch;
      
      // Check if cache is still valid (2 hours)
      if (now - timestamp > 2 * 60 * 60 * 1000) return null;
      
      final preferencesData = data['data'] as Map<String, dynamic>;
      return UserPreferences.fromJson(preferencesData);
    } catch (e) {
      return null;
    }
  }

  Future<void> _cacheBehaviorPatterns(String userId, List<BehaviorPattern> patterns) async {
    final now = DateTime.now();
    final cacheData = {
      'timestamp': now.millisecondsSinceEpoch,
      'data': patterns.map((p) => p.toJson()).toList(),
    };
    await _prefs.setString('${_patternsCacheKey}_$userId', jsonEncode(cacheData));
  }

  Future<List<BehaviorPattern>?> _getCachedBehaviorPatterns(String userId) async {
    final cached = _prefs.getString('${_patternsCacheKey}_$userId');
    if (cached == null) return null;

    try {
      final data = jsonDecode(cached) as Map<String, dynamic>;
      final timestamp = data['timestamp'] as int;
      final now = DateTime.now().millisecondsSinceEpoch;
      
      // Check if cache is still valid (6 hours)
      if (now - timestamp > 6 * 60 * 60 * 1000) return null;
      
      final patternsList = data['data'] as List;
      return patternsList.map((json) => BehaviorPattern.fromJson(json)).toList();
    } catch (e) {
      return null;
    }
  }

  Future<void> _cacheRiskProfile(String userId, RiskProfile profile) async {
    final now = DateTime.now();
    final cacheData = {
      'timestamp': now.millisecondsSinceEpoch,
      'data': profile.toJson(),
    };
    await _prefs.setString('${_riskProfileCacheKey}_$userId', jsonEncode(cacheData));
  }

  Future<RiskProfile?> _getCachedRiskProfile(String userId) async {
    final cached = _prefs.getString('${_riskProfileCacheKey}_$userId');
    if (cached == null) return null;

    try {
      final data = jsonDecode(cached) as Map<String, dynamic>;
      final timestamp = data['timestamp'] as int;
      final now = DateTime.now().millisecondsSinceEpoch;
      
      // Check if cache is still valid (1 day)
      if (now - timestamp > 24 * 60 * 60 * 1000) return null;
      
      final profileData = data['data'] as Map<String, dynamic>;
      return RiskProfile.fromJson(profileData);
    } catch (e) {
      return null;
    }
  }

  Future<void> _cacheInvestmentGoal(String userId, InvestmentGoal goal) async {
    final goals = await getUserGoals(userId);
    goals.add(goal);
    await _cacheInvestmentGoals(userId, goals);
  }

  Future<void> _cacheInvestmentGoals(String userId, List<InvestmentGoal> goals) async {
    final now = DateTime.now();
    final cacheData = {
      'timestamp': now.millisecondsSinceEpoch,
      'data': goals.map((g) => g.toJson()).toList(),
    };
    await _prefs.setString('${_goalsCacheKey}_$userId', jsonEncode(cacheData));
  }

  Future<List<InvestmentGoal>?> _getCachedInvestmentGoals(String userId) async {
    final cached = _prefs.getString('${_goalsCacheKey}_$userId');
    if (cached == null) return null;

    try {
      final data = jsonDecode(cached) as Map<String, dynamic>;
      final timestamp = data['timestamp'] as int;
      final now = DateTime.now().millisecondsSinceEpoch;
      
      // Check if cache is still valid (1 day)
      if (now - timestamp > 24 * 60 * 60 * 1000) return null;
      
      final goalsList = data['data'] as List;
      return goalsList.map((json) => InvestmentGoal.fromJson(json)).toList();
    } catch (e) {
      return null;
    }
  }

  // Clear cache
  Future<void> clearCache() async {
    final keys = _prefs.getKeys();
    for (final key in keys) {
      if (key.startsWith(_preferencesCacheKey) ||
          key.startsWith(_behaviorCacheKey) ||
          key.startsWith(_patternsCacheKey) ||
          key.startsWith(_riskProfileCacheKey) ||
          key.startsWith(_goalsCacheKey)) {
        await _prefs.remove(key);
      }
    }
  }

  // Sync offline data
  Future<void> syncOfflineData() async {
    // Sync offline behaviors
    final offlineBehaviors = _prefs.getStringList('offline_behaviors') ?? [];
    for (final behaviorJson in offlineBehaviors) {
      try {
        final behaviorData = jsonDecode(behaviorJson) as Map<String, dynamic>;
        final behavior = UserBehavior.fromJson(behaviorData);
        await _behavioralService.trackUserBehavior(behavior);
      } catch (e) {
        // Skip invalid data
      }
    }
    await _prefs.remove('offline_behaviors');

    // Sync offline learning progress
    final offlineProgress = _prefs.getStringList('offline_learning_progress') ?? [];
    for (final progressJson in offlineProgress) {
      try {
        final progressData = jsonDecode(progressJson) as Map<String, dynamic>;
        final progress = LearningProgress.fromJson(progressData);
        await _behavioralService.trackLearningProgress(progress);
      } catch (e) {
        // Skip invalid data
      }
    }
    await _prefs.remove('offline_learning_progress');
  }
} 