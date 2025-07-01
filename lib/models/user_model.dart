import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String email,
    required String name,
    required UserProfile profile,
    required UserPreferences preferences,
    required UserBehavior behavior,
    required List<Watchlist> watchlists,
    required List<Portfolio> portfolios,
    required List<Alert> alerts,
    required List<Note> notes,
    required List<SearchHistory> searchHistory,
    required List<ViewHistory> viewHistory,
    required List<Interaction> interactions,
    required List<Recommendation> recommendations,
    required DateTime createdAt,
    required DateTime lastActive,
    required bool isPremium,
    required SubscriptionData subscription,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    required String firstName,
    required String lastName,
    required String? avatar,
    required String? bio,
    required DateTime dateOfBirth,
    required String? phoneNumber,
    required String? location,
    required String? timezone,
    required List<String> interests,
    required List<String> expertise,
    required int experienceYears,
    required String tradingStyle,
    required bool isVerified,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) => _$UserProfileFromJson(json);
}

@freezed
class UserPreferences with _$UserPreferences {
  const factory UserPreferences({
    required RiskTolerance riskTolerance,
    required InvestmentGoals investmentGoals,
    required List<String> preferredSectors,
    required List<String> excludedSectors,
    required List<String> preferredAssets,
    required List<String> excludedAssets,
    required NotificationSettings notifications,
    required DisplaySettings display,
    required PrivacySettings privacy,
    required List<String> dataSources,
    required List<String> newsSources,
    required bool enableAIRecommendations,
    required bool enableBehavioralLearning,
    required bool enableSocialFeatures,
  }) = _UserPreferences;

  factory UserPreferences.fromJson(Map<String, dynamic> json) => _$UserPreferencesFromJson(json);
}

@freezed
class RiskTolerance with _$RiskTolerance {
  const factory RiskTolerance({
    required String level,
    required double score,
    required List<String> characteristics,
  }) = _RiskTolerance;

  factory RiskTolerance.fromJson(Map<String, dynamic> json) => _$RiskToleranceFromJson(json);
}

@freezed
class InvestmentGoals with _$InvestmentGoals {
  const factory InvestmentGoals({
    required List<String> primaryGoals,
    required List<String> secondaryGoals,
    required double targetReturn,
    required int timeHorizon,
    required double initialInvestment,
    required double monthlyContribution,
  }) = _InvestmentGoals;

  factory InvestmentGoals.fromJson(Map<String, dynamic> json) => _$InvestmentGoalsFromJson(json);
}

@freezed
class NotificationSettings with _$NotificationSettings {
  const factory NotificationSettings({
    required bool priceAlerts,
    required bool newsAlerts,
    required bool sentimentAlerts,
    required bool volumeAlerts,
    required bool patternAlerts,
    required bool earningsAlerts,
    required bool marketOpenClose,
    required bool weeklyDigest,
    required bool pushNotifications,
    required bool emailNotifications,
    required bool smsNotifications,
  }) = _NotificationSettings;

  factory NotificationSettings.fromJson(Map<String, dynamic> json) => _$NotificationSettingsFromJson(json);
}

@freezed
class DisplaySettings with _$DisplaySettings {
  const factory DisplaySettings({
    required String theme,
    required String currency,
    required String language,
    required bool darkMode,
    required bool compactMode,
    required List<String> defaultCharts,
    required List<String> visibleMetrics,
  }) = _DisplaySettings;

  factory DisplaySettings.fromJson(Map<String, dynamic> json) => _$DisplaySettingsFromJson(json);
}

@freezed
class PrivacySettings with _$PrivacySettings {
  const factory PrivacySettings({
    required bool sharePortfolio,
    required bool shareWatchlist,
    required bool shareActivity,
    required bool allowAnalytics,
    required bool allowPersonalization,
    required List<String> blockedUsers,
  }) = _PrivacySettings;

  factory PrivacySettings.fromJson(Map<String, dynamic> json) => _$PrivacySettingsFromJson(json);
}

@freezed
class UserBehavior with _$UserBehavior {
  const factory UserBehavior({
    required List<BehavioralPattern> patterns,
    required List<InteractionPattern> interactionPatterns,
    required List<LearningPreference> learningPreferences,
    required List<DecisionPattern> decisionPatterns,
    required List<RiskBehavior> riskBehaviors,
    required List<TimePattern> timePatterns,
    required List<DevicePattern> devicePatterns,
    required double engagementScore,
    required double consistencyScore,
    required double sophisticationScore,
  }) = _UserBehavior;

  factory UserBehavior.fromJson(Map<String, dynamic> json) => _$UserBehaviorFromJson(json);
}

@freezed
class BehavioralPattern with _$BehavioralPattern {
  const factory BehavioralPattern({
    required String type,
    required String description,
    required double confidence,
    required DateTime firstObserved,
    required DateTime lastObserved,
    required int frequency,
    required List<String> triggers,
  }) = _BehavioralPattern;

  factory BehavioralPattern.fromJson(Map<String, dynamic> json) => _$BehavioralPatternFromJson(json);
}

@freezed
class InteractionPattern with _$InteractionPattern {
  const factory InteractionPattern({
    required String assetType,
    required String interactionType,
    required double frequency,
    required double duration,
    required List<String> preferredTimes,
    required List<String> preferredDays,
  }) = _InteractionPattern;

  factory InteractionPattern.fromJson(Map<String, dynamic> json) => _$InteractionPatternFromJson(json);
}

@freezed
class LearningPreference with _$LearningPreference {
  const factory LearningPreference({
    required String style,
    required List<String> preferredFormats,
    required double learningSpeed,
    required List<String> topics,
  }) = _LearningPreference;

  factory LearningPreference.fromJson(Map<String, dynamic> json) => _$LearningPreferenceFromJson(json);
}

@freezed
class DecisionPattern with _$DecisionPattern {
  const factory DecisionPattern({
    required String type,
    required double confidence,
    required List<String> factors,
    required double successRate,
    required DateTime lastDecision,
  }) = _DecisionPattern;

  factory DecisionPattern.fromJson(Map<String, dynamic> json) => _$DecisionPatternFromJson(json);
}

@freezed
class RiskBehavior with _$RiskBehavior {
  const factory RiskBehavior({
    required String assetType,
    required double riskLevel,
    required double consistency,
    required List<String> riskFactors,
    required double performance,
  }) = _RiskBehavior;

  factory RiskBehavior.fromJson(Map<String, dynamic> json) => _$RiskBehaviorFromJson(json);
}

@freezed
class TimePattern with _$TimePattern {
  const factory TimePattern({
    required String dayOfWeek,
    required String timeOfDay,
    required double activityLevel,
    required List<String> activities,
  }) = _TimePattern;

  factory TimePattern.fromJson(Map<String, dynamic> json) => _$TimePatternFromJson(json);
}

@freezed
class DevicePattern with _$DevicePattern {
  const factory DevicePattern({
    required String deviceType,
    required String platform,
    required double usageTime,
    required List<String> features,
  }) = _DevicePattern;

  factory DevicePattern.fromJson(Map<String, dynamic> json) => _$DevicePatternFromJson(json);
}

@freezed
class Watchlist with _$Watchlist {
  const factory Watchlist({
    required String id,
    required String name,
    required String description,
    required List<String> symbols,
    required bool isDefault,
    required bool isPublic,
    required DateTime createdAt,
    required DateTime lastUpdated,
    required List<WatchlistAlert> alerts,
  }) = _Watchlist;

  factory Watchlist.fromJson(Map<String, dynamic> json) => _$WatchlistFromJson(json);
}

@freezed
class WatchlistAlert with _$WatchlistAlert {
  const factory WatchlistAlert({
    required String id,
    required String type,
    required double threshold,
    required bool isActive,
    required DateTime createdAt,
  }) = _WatchlistAlert;

  factory WatchlistAlert.fromJson(Map<String, dynamic> json) => _$WatchlistAlertFromJson(json);
}

@freezed
class Portfolio with _$Portfolio {
  const factory Portfolio({
    required String id,
    required String name,
    required String description,
    required List<PortfolioHolding> holdings,
    required double totalValue,
    required double totalReturn,
    required double totalReturnPercent,
    required double dailyReturn,
    required double dailyReturnPercent,
    required DateTime createdAt,
    required DateTime lastUpdated,
    required List<PortfolioTransaction> transactions,
  }) = _Portfolio;

  factory Portfolio.fromJson(Map<String, dynamic> json) => _$PortfolioFromJson(json);
}

@freezed
class PortfolioHolding with _$PortfolioHolding {
  const factory PortfolioHolding({
    required String symbol,
    required double shares,
    required double averagePrice,
    required double currentPrice,
    required double marketValue,
    required double totalReturn,
    required double totalReturnPercent,
    required DateTime firstPurchase,
    required DateTime lastPurchase,
    String? companyName,
  }) = _PortfolioHolding;

  factory PortfolioHolding.fromJson(Map<String, dynamic> json) => _$PortfolioHoldingFromJson(json);
}

@freezed
class PortfolioTransaction with _$PortfolioTransaction {
  const factory PortfolioTransaction({
    required String id,
    required String symbol,
    required String type,
    required double shares,
    required double price,
    required double total,
    required DateTime timestamp,
    required String? notes,
  }) = _PortfolioTransaction;

  factory PortfolioTransaction.fromJson(Map<String, dynamic> json) => _$PortfolioTransactionFromJson(json);
}

@freezed
class Alert with _$Alert {
  const factory Alert({
    required String id,
    required String type,
    required String symbol,
    required double threshold,
    required String condition,
    required bool isActive,
    required DateTime createdAt,
    required DateTime? triggeredAt,
    required String? message,
  }) = _Alert;

  factory Alert.fromJson(Map<String, dynamic> json) => _$AlertFromJson(json);
}

@freezed
class Note with _$Note {
  const factory Note({
    required String id,
    required String title,
    required String content,
    required String? symbol,
    required List<String> tags,
    required DateTime createdAt,
    required DateTime lastUpdated,
    required bool isPrivate,
  }) = _Note;

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);
}

@freezed
class SearchHistory with _$SearchHistory {
  const factory SearchHistory({
    required String id,
    required String query,
    required String type,
    required DateTime timestamp,
    required int resultCount,
    required List<String> clickedResults,
  }) = _SearchHistory;

  factory SearchHistory.fromJson(Map<String, dynamic> json) => _$SearchHistoryFromJson(json);
}

@freezed
class ViewHistory with _$ViewHistory {
  const factory ViewHistory({
    required String id,
    required String symbol,
    required String type,
    required DateTime timestamp,
    required int duration,
    required List<String> actions,
  }) = _ViewHistory;

  factory ViewHistory.fromJson(Map<String, dynamic> json) => _$ViewHistoryFromJson(json);
}

@freezed
class Interaction with _$Interaction {
  const factory Interaction({
    required String id,
    required String type,
    required String target,
    required String action,
    required DateTime timestamp,
    required double duration,
    required Map<String, dynamic> metadata,
  }) = _Interaction;

  factory Interaction.fromJson(Map<String, dynamic> json) => _$InteractionFromJson(json);
}

@freezed
class Recommendation with _$Recommendation {
  const factory Recommendation({
    required String id,
    required String type,
    required String title,
    required String description,
    required double confidence,
    required List<String> reasons,
    required DateTime createdAt,
    required DateTime expiresAt,
    required bool isRead,
    required bool isAccepted,
    required String? feedback,
  }) = _Recommendation;

  factory Recommendation.fromJson(Map<String, dynamic> json) => _$RecommendationFromJson(json);
}

@freezed
class SubscriptionData with _$SubscriptionData {
  const factory SubscriptionData({
    required String plan,
    required DateTime startDate,
    required DateTime endDate,
    required double price,
    required String currency,
    required bool isActive,
    required List<String> features,
  }) = _SubscriptionData;

  factory SubscriptionData.fromJson(Map<String, dynamic> json) => _$SubscriptionDataFromJson(json);
} 