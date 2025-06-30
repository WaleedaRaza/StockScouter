// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      profile: UserProfile.fromJson(json['profile'] as Map<String, dynamic>),
      preferences:
          UserPreferences.fromJson(json['preferences'] as Map<String, dynamic>),
      behavior: UserBehavior.fromJson(json['behavior'] as Map<String, dynamic>),
      watchlists: (json['watchlists'] as List<dynamic>)
          .map((e) => Watchlist.fromJson(e as Map<String, dynamic>))
          .toList(),
      portfolios: (json['portfolios'] as List<dynamic>)
          .map((e) => Portfolio.fromJson(e as Map<String, dynamic>))
          .toList(),
      alerts: (json['alerts'] as List<dynamic>)
          .map((e) => Alert.fromJson(e as Map<String, dynamic>))
          .toList(),
      notes: (json['notes'] as List<dynamic>)
          .map((e) => Note.fromJson(e as Map<String, dynamic>))
          .toList(),
      searchHistory: (json['searchHistory'] as List<dynamic>)
          .map((e) => SearchHistory.fromJson(e as Map<String, dynamic>))
          .toList(),
      viewHistory: (json['viewHistory'] as List<dynamic>)
          .map((e) => ViewHistory.fromJson(e as Map<String, dynamic>))
          .toList(),
      interactions: (json['interactions'] as List<dynamic>)
          .map((e) => Interaction.fromJson(e as Map<String, dynamic>))
          .toList(),
      recommendations: (json['recommendations'] as List<dynamic>)
          .map((e) => Recommendation.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      lastActive: DateTime.parse(json['lastActive'] as String),
      isPremium: json['isPremium'] as bool,
      subscription: SubscriptionData.fromJson(
          json['subscription'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'profile': instance.profile,
      'preferences': instance.preferences,
      'behavior': instance.behavior,
      'watchlists': instance.watchlists,
      'portfolios': instance.portfolios,
      'alerts': instance.alerts,
      'notes': instance.notes,
      'searchHistory': instance.searchHistory,
      'viewHistory': instance.viewHistory,
      'interactions': instance.interactions,
      'recommendations': instance.recommendations,
      'createdAt': instance.createdAt.toIso8601String(),
      'lastActive': instance.lastActive.toIso8601String(),
      'isPremium': instance.isPremium,
      'subscription': instance.subscription,
    };

_$UserProfileImpl _$$UserProfileImplFromJson(Map<String, dynamic> json) =>
    _$UserProfileImpl(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      avatar: json['avatar'] as String?,
      bio: json['bio'] as String?,
      dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
      phoneNumber: json['phoneNumber'] as String?,
      location: json['location'] as String?,
      timezone: json['timezone'] as String?,
      interests:
          (json['interests'] as List<dynamic>).map((e) => e as String).toList(),
      expertise:
          (json['expertise'] as List<dynamic>).map((e) => e as String).toList(),
      experienceYears: (json['experienceYears'] as num).toInt(),
      tradingStyle: json['tradingStyle'] as String,
      isVerified: json['isVerified'] as bool,
    );

Map<String, dynamic> _$$UserProfileImplToJson(_$UserProfileImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'avatar': instance.avatar,
      'bio': instance.bio,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
      'phoneNumber': instance.phoneNumber,
      'location': instance.location,
      'timezone': instance.timezone,
      'interests': instance.interests,
      'expertise': instance.expertise,
      'experienceYears': instance.experienceYears,
      'tradingStyle': instance.tradingStyle,
      'isVerified': instance.isVerified,
    };

_$UserPreferencesImpl _$$UserPreferencesImplFromJson(
        Map<String, dynamic> json) =>
    _$UserPreferencesImpl(
      riskTolerance:
          RiskTolerance.fromJson(json['riskTolerance'] as Map<String, dynamic>),
      investmentGoals: InvestmentGoals.fromJson(
          json['investmentGoals'] as Map<String, dynamic>),
      preferredSectors: (json['preferredSectors'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      excludedSectors: (json['excludedSectors'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      preferredAssets: (json['preferredAssets'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      excludedAssets: (json['excludedAssets'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      notifications: NotificationSettings.fromJson(
          json['notifications'] as Map<String, dynamic>),
      display:
          DisplaySettings.fromJson(json['display'] as Map<String, dynamic>),
      privacy:
          PrivacySettings.fromJson(json['privacy'] as Map<String, dynamic>),
      dataSources: (json['dataSources'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      newsSources: (json['newsSources'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      enableAIRecommendations: json['enableAIRecommendations'] as bool,
      enableBehavioralLearning: json['enableBehavioralLearning'] as bool,
      enableSocialFeatures: json['enableSocialFeatures'] as bool,
    );

Map<String, dynamic> _$$UserPreferencesImplToJson(
        _$UserPreferencesImpl instance) =>
    <String, dynamic>{
      'riskTolerance': instance.riskTolerance,
      'investmentGoals': instance.investmentGoals,
      'preferredSectors': instance.preferredSectors,
      'excludedSectors': instance.excludedSectors,
      'preferredAssets': instance.preferredAssets,
      'excludedAssets': instance.excludedAssets,
      'notifications': instance.notifications,
      'display': instance.display,
      'privacy': instance.privacy,
      'dataSources': instance.dataSources,
      'newsSources': instance.newsSources,
      'enableAIRecommendations': instance.enableAIRecommendations,
      'enableBehavioralLearning': instance.enableBehavioralLearning,
      'enableSocialFeatures': instance.enableSocialFeatures,
    };

_$RiskToleranceImpl _$$RiskToleranceImplFromJson(Map<String, dynamic> json) =>
    _$RiskToleranceImpl(
      level: json['level'] as String,
      score: (json['score'] as num).toDouble(),
      characteristics: (json['characteristics'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$RiskToleranceImplToJson(_$RiskToleranceImpl instance) =>
    <String, dynamic>{
      'level': instance.level,
      'score': instance.score,
      'characteristics': instance.characteristics,
    };

_$InvestmentGoalsImpl _$$InvestmentGoalsImplFromJson(
        Map<String, dynamic> json) =>
    _$InvestmentGoalsImpl(
      primaryGoals: (json['primaryGoals'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      secondaryGoals: (json['secondaryGoals'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      targetReturn: (json['targetReturn'] as num).toDouble(),
      timeHorizon: (json['timeHorizon'] as num).toInt(),
      initialInvestment: (json['initialInvestment'] as num).toDouble(),
      monthlyContribution: (json['monthlyContribution'] as num).toDouble(),
    );

Map<String, dynamic> _$$InvestmentGoalsImplToJson(
        _$InvestmentGoalsImpl instance) =>
    <String, dynamic>{
      'primaryGoals': instance.primaryGoals,
      'secondaryGoals': instance.secondaryGoals,
      'targetReturn': instance.targetReturn,
      'timeHorizon': instance.timeHorizon,
      'initialInvestment': instance.initialInvestment,
      'monthlyContribution': instance.monthlyContribution,
    };

_$NotificationSettingsImpl _$$NotificationSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationSettingsImpl(
      priceAlerts: json['priceAlerts'] as bool,
      newsAlerts: json['newsAlerts'] as bool,
      sentimentAlerts: json['sentimentAlerts'] as bool,
      volumeAlerts: json['volumeAlerts'] as bool,
      patternAlerts: json['patternAlerts'] as bool,
      earningsAlerts: json['earningsAlerts'] as bool,
      marketOpenClose: json['marketOpenClose'] as bool,
      weeklyDigest: json['weeklyDigest'] as bool,
      pushNotifications: json['pushNotifications'] as bool,
      emailNotifications: json['emailNotifications'] as bool,
      smsNotifications: json['smsNotifications'] as bool,
    );

Map<String, dynamic> _$$NotificationSettingsImplToJson(
        _$NotificationSettingsImpl instance) =>
    <String, dynamic>{
      'priceAlerts': instance.priceAlerts,
      'newsAlerts': instance.newsAlerts,
      'sentimentAlerts': instance.sentimentAlerts,
      'volumeAlerts': instance.volumeAlerts,
      'patternAlerts': instance.patternAlerts,
      'earningsAlerts': instance.earningsAlerts,
      'marketOpenClose': instance.marketOpenClose,
      'weeklyDigest': instance.weeklyDigest,
      'pushNotifications': instance.pushNotifications,
      'emailNotifications': instance.emailNotifications,
      'smsNotifications': instance.smsNotifications,
    };

_$DisplaySettingsImpl _$$DisplaySettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$DisplaySettingsImpl(
      theme: json['theme'] as String,
      currency: json['currency'] as String,
      language: json['language'] as String,
      darkMode: json['darkMode'] as bool,
      compactMode: json['compactMode'] as bool,
      defaultCharts: (json['defaultCharts'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      visibleMetrics: (json['visibleMetrics'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$DisplaySettingsImplToJson(
        _$DisplaySettingsImpl instance) =>
    <String, dynamic>{
      'theme': instance.theme,
      'currency': instance.currency,
      'language': instance.language,
      'darkMode': instance.darkMode,
      'compactMode': instance.compactMode,
      'defaultCharts': instance.defaultCharts,
      'visibleMetrics': instance.visibleMetrics,
    };

_$PrivacySettingsImpl _$$PrivacySettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$PrivacySettingsImpl(
      sharePortfolio: json['sharePortfolio'] as bool,
      shareWatchlist: json['shareWatchlist'] as bool,
      shareActivity: json['shareActivity'] as bool,
      allowAnalytics: json['allowAnalytics'] as bool,
      allowPersonalization: json['allowPersonalization'] as bool,
      blockedUsers: (json['blockedUsers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$PrivacySettingsImplToJson(
        _$PrivacySettingsImpl instance) =>
    <String, dynamic>{
      'sharePortfolio': instance.sharePortfolio,
      'shareWatchlist': instance.shareWatchlist,
      'shareActivity': instance.shareActivity,
      'allowAnalytics': instance.allowAnalytics,
      'allowPersonalization': instance.allowPersonalization,
      'blockedUsers': instance.blockedUsers,
    };

_$UserBehaviorImpl _$$UserBehaviorImplFromJson(Map<String, dynamic> json) =>
    _$UserBehaviorImpl(
      patterns: (json['patterns'] as List<dynamic>)
          .map((e) => BehavioralPattern.fromJson(e as Map<String, dynamic>))
          .toList(),
      interactionPatterns: (json['interactionPatterns'] as List<dynamic>)
          .map((e) => InteractionPattern.fromJson(e as Map<String, dynamic>))
          .toList(),
      learningPreferences: (json['learningPreferences'] as List<dynamic>)
          .map((e) => LearningPreference.fromJson(e as Map<String, dynamic>))
          .toList(),
      decisionPatterns: (json['decisionPatterns'] as List<dynamic>)
          .map((e) => DecisionPattern.fromJson(e as Map<String, dynamic>))
          .toList(),
      riskBehaviors: (json['riskBehaviors'] as List<dynamic>)
          .map((e) => RiskBehavior.fromJson(e as Map<String, dynamic>))
          .toList(),
      timePatterns: (json['timePatterns'] as List<dynamic>)
          .map((e) => TimePattern.fromJson(e as Map<String, dynamic>))
          .toList(),
      devicePatterns: (json['devicePatterns'] as List<dynamic>)
          .map((e) => DevicePattern.fromJson(e as Map<String, dynamic>))
          .toList(),
      engagementScore: (json['engagementScore'] as num).toDouble(),
      consistencyScore: (json['consistencyScore'] as num).toDouble(),
      sophisticationScore: (json['sophisticationScore'] as num).toDouble(),
    );

Map<String, dynamic> _$$UserBehaviorImplToJson(_$UserBehaviorImpl instance) =>
    <String, dynamic>{
      'patterns': instance.patterns,
      'interactionPatterns': instance.interactionPatterns,
      'learningPreferences': instance.learningPreferences,
      'decisionPatterns': instance.decisionPatterns,
      'riskBehaviors': instance.riskBehaviors,
      'timePatterns': instance.timePatterns,
      'devicePatterns': instance.devicePatterns,
      'engagementScore': instance.engagementScore,
      'consistencyScore': instance.consistencyScore,
      'sophisticationScore': instance.sophisticationScore,
    };

_$BehavioralPatternImpl _$$BehavioralPatternImplFromJson(
        Map<String, dynamic> json) =>
    _$BehavioralPatternImpl(
      type: json['type'] as String,
      description: json['description'] as String,
      confidence: (json['confidence'] as num).toDouble(),
      firstObserved: DateTime.parse(json['firstObserved'] as String),
      lastObserved: DateTime.parse(json['lastObserved'] as String),
      frequency: (json['frequency'] as num).toInt(),
      triggers:
          (json['triggers'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$BehavioralPatternImplToJson(
        _$BehavioralPatternImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'description': instance.description,
      'confidence': instance.confidence,
      'firstObserved': instance.firstObserved.toIso8601String(),
      'lastObserved': instance.lastObserved.toIso8601String(),
      'frequency': instance.frequency,
      'triggers': instance.triggers,
    };

_$InteractionPatternImpl _$$InteractionPatternImplFromJson(
        Map<String, dynamic> json) =>
    _$InteractionPatternImpl(
      assetType: json['assetType'] as String,
      interactionType: json['interactionType'] as String,
      frequency: (json['frequency'] as num).toDouble(),
      duration: (json['duration'] as num).toDouble(),
      preferredTimes: (json['preferredTimes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      preferredDays: (json['preferredDays'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$InteractionPatternImplToJson(
        _$InteractionPatternImpl instance) =>
    <String, dynamic>{
      'assetType': instance.assetType,
      'interactionType': instance.interactionType,
      'frequency': instance.frequency,
      'duration': instance.duration,
      'preferredTimes': instance.preferredTimes,
      'preferredDays': instance.preferredDays,
    };

_$LearningPreferenceImpl _$$LearningPreferenceImplFromJson(
        Map<String, dynamic> json) =>
    _$LearningPreferenceImpl(
      style: json['style'] as String,
      preferredFormats: (json['preferredFormats'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      learningSpeed: (json['learningSpeed'] as num).toDouble(),
      topics:
          (json['topics'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$LearningPreferenceImplToJson(
        _$LearningPreferenceImpl instance) =>
    <String, dynamic>{
      'style': instance.style,
      'preferredFormats': instance.preferredFormats,
      'learningSpeed': instance.learningSpeed,
      'topics': instance.topics,
    };

_$DecisionPatternImpl _$$DecisionPatternImplFromJson(
        Map<String, dynamic> json) =>
    _$DecisionPatternImpl(
      type: json['type'] as String,
      confidence: (json['confidence'] as num).toDouble(),
      factors:
          (json['factors'] as List<dynamic>).map((e) => e as String).toList(),
      successRate: (json['successRate'] as num).toDouble(),
      lastDecision: DateTime.parse(json['lastDecision'] as String),
    );

Map<String, dynamic> _$$DecisionPatternImplToJson(
        _$DecisionPatternImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'confidence': instance.confidence,
      'factors': instance.factors,
      'successRate': instance.successRate,
      'lastDecision': instance.lastDecision.toIso8601String(),
    };

_$RiskBehaviorImpl _$$RiskBehaviorImplFromJson(Map<String, dynamic> json) =>
    _$RiskBehaviorImpl(
      assetType: json['assetType'] as String,
      riskLevel: (json['riskLevel'] as num).toDouble(),
      consistency: (json['consistency'] as num).toDouble(),
      riskFactors: (json['riskFactors'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      performance: (json['performance'] as num).toDouble(),
    );

Map<String, dynamic> _$$RiskBehaviorImplToJson(_$RiskBehaviorImpl instance) =>
    <String, dynamic>{
      'assetType': instance.assetType,
      'riskLevel': instance.riskLevel,
      'consistency': instance.consistency,
      'riskFactors': instance.riskFactors,
      'performance': instance.performance,
    };

_$TimePatternImpl _$$TimePatternImplFromJson(Map<String, dynamic> json) =>
    _$TimePatternImpl(
      dayOfWeek: json['dayOfWeek'] as String,
      timeOfDay: json['timeOfDay'] as String,
      activityLevel: (json['activityLevel'] as num).toDouble(),
      activities: (json['activities'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$TimePatternImplToJson(_$TimePatternImpl instance) =>
    <String, dynamic>{
      'dayOfWeek': instance.dayOfWeek,
      'timeOfDay': instance.timeOfDay,
      'activityLevel': instance.activityLevel,
      'activities': instance.activities,
    };

_$DevicePatternImpl _$$DevicePatternImplFromJson(Map<String, dynamic> json) =>
    _$DevicePatternImpl(
      deviceType: json['deviceType'] as String,
      platform: json['platform'] as String,
      usageTime: (json['usageTime'] as num).toDouble(),
      features:
          (json['features'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$DevicePatternImplToJson(_$DevicePatternImpl instance) =>
    <String, dynamic>{
      'deviceType': instance.deviceType,
      'platform': instance.platform,
      'usageTime': instance.usageTime,
      'features': instance.features,
    };

_$WatchlistImpl _$$WatchlistImplFromJson(Map<String, dynamic> json) =>
    _$WatchlistImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      symbols:
          (json['symbols'] as List<dynamic>).map((e) => e as String).toList(),
      isDefault: json['isDefault'] as bool,
      isPublic: json['isPublic'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      alerts: (json['alerts'] as List<dynamic>)
          .map((e) => WatchlistAlert.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WatchlistImplToJson(_$WatchlistImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'symbols': instance.symbols,
      'isDefault': instance.isDefault,
      'isPublic': instance.isPublic,
      'createdAt': instance.createdAt.toIso8601String(),
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'alerts': instance.alerts,
    };

_$WatchlistAlertImpl _$$WatchlistAlertImplFromJson(Map<String, dynamic> json) =>
    _$WatchlistAlertImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      threshold: (json['threshold'] as num).toDouble(),
      isActive: json['isActive'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$WatchlistAlertImplToJson(
        _$WatchlistAlertImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'threshold': instance.threshold,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$PortfolioImpl _$$PortfolioImplFromJson(Map<String, dynamic> json) =>
    _$PortfolioImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      holdings: (json['holdings'] as List<dynamic>)
          .map((e) => PortfolioHolding.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalValue: (json['totalValue'] as num).toDouble(),
      totalReturn: (json['totalReturn'] as num).toDouble(),
      totalReturnPercent: (json['totalReturnPercent'] as num).toDouble(),
      dailyReturn: (json['dailyReturn'] as num).toDouble(),
      dailyReturnPercent: (json['dailyReturnPercent'] as num).toDouble(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      transactions: (json['transactions'] as List<dynamic>)
          .map((e) => PortfolioTransaction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PortfolioImplToJson(_$PortfolioImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'holdings': instance.holdings,
      'totalValue': instance.totalValue,
      'totalReturn': instance.totalReturn,
      'totalReturnPercent': instance.totalReturnPercent,
      'dailyReturn': instance.dailyReturn,
      'dailyReturnPercent': instance.dailyReturnPercent,
      'createdAt': instance.createdAt.toIso8601String(),
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'transactions': instance.transactions,
    };

_$PortfolioHoldingImpl _$$PortfolioHoldingImplFromJson(
        Map<String, dynamic> json) =>
    _$PortfolioHoldingImpl(
      symbol: json['symbol'] as String,
      shares: (json['shares'] as num).toDouble(),
      averagePrice: (json['averagePrice'] as num).toDouble(),
      currentPrice: (json['currentPrice'] as num).toDouble(),
      marketValue: (json['marketValue'] as num).toDouble(),
      totalReturn: (json['totalReturn'] as num).toDouble(),
      totalReturnPercent: (json['totalReturnPercent'] as num).toDouble(),
      firstPurchase: DateTime.parse(json['firstPurchase'] as String),
      lastPurchase: DateTime.parse(json['lastPurchase'] as String),
    );

Map<String, dynamic> _$$PortfolioHoldingImplToJson(
        _$PortfolioHoldingImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'shares': instance.shares,
      'averagePrice': instance.averagePrice,
      'currentPrice': instance.currentPrice,
      'marketValue': instance.marketValue,
      'totalReturn': instance.totalReturn,
      'totalReturnPercent': instance.totalReturnPercent,
      'firstPurchase': instance.firstPurchase.toIso8601String(),
      'lastPurchase': instance.lastPurchase.toIso8601String(),
    };

_$PortfolioTransactionImpl _$$PortfolioTransactionImplFromJson(
        Map<String, dynamic> json) =>
    _$PortfolioTransactionImpl(
      id: json['id'] as String,
      symbol: json['symbol'] as String,
      type: json['type'] as String,
      shares: (json['shares'] as num).toDouble(),
      price: (json['price'] as num).toDouble(),
      total: (json['total'] as num).toDouble(),
      timestamp: DateTime.parse(json['timestamp'] as String),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$PortfolioTransactionImplToJson(
        _$PortfolioTransactionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'type': instance.type,
      'shares': instance.shares,
      'price': instance.price,
      'total': instance.total,
      'timestamp': instance.timestamp.toIso8601String(),
      'notes': instance.notes,
    };

_$AlertImpl _$$AlertImplFromJson(Map<String, dynamic> json) => _$AlertImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      symbol: json['symbol'] as String,
      threshold: (json['threshold'] as num).toDouble(),
      condition: json['condition'] as String,
      isActive: json['isActive'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      triggeredAt: json['triggeredAt'] == null
          ? null
          : DateTime.parse(json['triggeredAt'] as String),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$AlertImplToJson(_$AlertImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'symbol': instance.symbol,
      'threshold': instance.threshold,
      'condition': instance.condition,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt.toIso8601String(),
      'triggeredAt': instance.triggeredAt?.toIso8601String(),
      'message': instance.message,
    };

_$NoteImpl _$$NoteImplFromJson(Map<String, dynamic> json) => _$NoteImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      symbol: json['symbol'] as String?,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      isPrivate: json['isPrivate'] as bool,
    );

Map<String, dynamic> _$$NoteImplToJson(_$NoteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'symbol': instance.symbol,
      'tags': instance.tags,
      'createdAt': instance.createdAt.toIso8601String(),
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'isPrivate': instance.isPrivate,
    };

_$SearchHistoryImpl _$$SearchHistoryImplFromJson(Map<String, dynamic> json) =>
    _$SearchHistoryImpl(
      id: json['id'] as String,
      query: json['query'] as String,
      type: json['type'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      resultCount: (json['resultCount'] as num).toInt(),
      clickedResults: (json['clickedResults'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$SearchHistoryImplToJson(_$SearchHistoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'query': instance.query,
      'type': instance.type,
      'timestamp': instance.timestamp.toIso8601String(),
      'resultCount': instance.resultCount,
      'clickedResults': instance.clickedResults,
    };

_$ViewHistoryImpl _$$ViewHistoryImplFromJson(Map<String, dynamic> json) =>
    _$ViewHistoryImpl(
      id: json['id'] as String,
      symbol: json['symbol'] as String,
      type: json['type'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      duration: (json['duration'] as num).toInt(),
      actions:
          (json['actions'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ViewHistoryImplToJson(_$ViewHistoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'type': instance.type,
      'timestamp': instance.timestamp.toIso8601String(),
      'duration': instance.duration,
      'actions': instance.actions,
    };

_$InteractionImpl _$$InteractionImplFromJson(Map<String, dynamic> json) =>
    _$InteractionImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      target: json['target'] as String,
      action: json['action'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      duration: (json['duration'] as num).toDouble(),
      metadata: json['metadata'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$InteractionImplToJson(_$InteractionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'target': instance.target,
      'action': instance.action,
      'timestamp': instance.timestamp.toIso8601String(),
      'duration': instance.duration,
      'metadata': instance.metadata,
    };

_$RecommendationImpl _$$RecommendationImplFromJson(Map<String, dynamic> json) =>
    _$RecommendationImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      confidence: (json['confidence'] as num).toDouble(),
      reasons:
          (json['reasons'] as List<dynamic>).map((e) => e as String).toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      expiresAt: DateTime.parse(json['expiresAt'] as String),
      isRead: json['isRead'] as bool,
      isAccepted: json['isAccepted'] as bool,
      feedback: json['feedback'] as String?,
    );

Map<String, dynamic> _$$RecommendationImplToJson(
        _$RecommendationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'description': instance.description,
      'confidence': instance.confidence,
      'reasons': instance.reasons,
      'createdAt': instance.createdAt.toIso8601String(),
      'expiresAt': instance.expiresAt.toIso8601String(),
      'isRead': instance.isRead,
      'isAccepted': instance.isAccepted,
      'feedback': instance.feedback,
    };

_$SubscriptionDataImpl _$$SubscriptionDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscriptionDataImpl(
      plan: json['plan'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      price: (json['price'] as num).toDouble(),
      currency: json['currency'] as String,
      isActive: json['isActive'] as bool,
      features:
          (json['features'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$SubscriptionDataImplToJson(
        _$SubscriptionDataImpl instance) =>
    <String, dynamic>{
      'plan': instance.plan,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'price': instance.price,
      'currency': instance.currency,
      'isActive': instance.isActive,
      'features': instance.features,
    };
