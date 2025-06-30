class AppConstants {
  // App Information
  static const String appName = 'Synapse Finance';
  static const String appVersion = '1.0.0';
  static const String appDescription = 'Advanced AI-Powered Financial Intelligence Platform';
  
  // API Configuration
  static const String baseUrl = 'https://api.synapsefinance.com';
  static const String apiVersion = 'v1';
  
  // External API Keys (Replace with actual keys)
  static const String alphaVantageApiKey = 'YOUR_ALPHA_VANTAGE_API_KEY';
  static const String finnhubApiKey = 'YOUR_FINNHUB_API_KEY';
  static const String polygonApiKey = 'YOUR_POLYGON_API_KEY';
  static const String coinGeckoApiKey = 'YOUR_COINGECKO_API_KEY';
  static const String coinMarketCapApiKey = 'YOUR_COINMARKETCAP_API_KEY';
  static const String financialModelingPrepApiKey = 'YOUR_FMP_API_KEY';
  static const String newsApiKey = 'YOUR_NEWS_API_KEY';
  static const String openAiApiKey = 'YOUR_OPENAI_API_KEY';
  static const String anthropicApiKey = 'YOUR_ANTHROPIC_API_KEY';
  
  // API Endpoints
  static const String stockQuoteEndpoint = '/stock/quote';
  static const String stockHistoryEndpoint = '/stock/history';
  static const String stockNewsEndpoint = '/stock/news';
  static const String cryptoQuoteEndpoint = '/crypto/quote';
  static const String cryptoHistoryEndpoint = '/crypto/history';
  static const String cryptoNewsEndpoint = '/crypto/news';
  static const String newsSearchEndpoint = '/news/search';
  static const String newsSummaryEndpoint = '/news/summary';
  static const String userProfileEndpoint = '/user/profile';
  static const String userBehaviorEndpoint = '/user/behavior';
  static const String recommendationsEndpoint = '/recommendations';
  static const String alertsEndpoint = '/alerts';
  static const String watchlistEndpoint = '/watchlist';
  static const String portfolioEndpoint = '/portfolio';
  
  // Database Configuration
  static const String databaseName = 'synapse_finance.db';
  static const int databaseVersion = 1;
  
  // Vector Database Configuration
  static const String vectorDbUrl = 'http://localhost:8000';
  static const String vectorDbCollection = 'news_embeddings';
  
  // AI Model Configuration
  static const String embeddingModel = 'all-MiniLM-L6-v2';
  static const String sentimentModel = 'finbert-sentiment';
  static const String summarizationModel = 'bart-large-cnn';
  static const String questionAnsweringModel = 'distilbert-base-cased-distilled-squad';
  
  // Cache Configuration
  static const int cacheExpirationMinutes = 5;
  static const int newsCacheExpirationMinutes = 15;
  static const int userDataCacheExpirationMinutes = 30;
  
  // Notification Configuration
  static const String notificationChannelId = 'synapse_finance_channel';
  static const String notificationChannelName = 'Synapse Finance';
  static const String notificationChannelDescription = 'Financial alerts and updates';
  
  // File Storage Configuration
  static const String userDataDirectory = 'user_data';
  static const String cacheDirectory = 'cache';
  static const String logsDirectory = 'logs';
  
  // Security Configuration
  static const int sessionTimeoutMinutes = 60;
  static const int maxLoginAttempts = 5;
  static const int lockoutDurationMinutes = 15;
  
  // Feature Flags
  static const bool enableRealTimeData = true;
  static const bool enableAIRecommendations = true;
  static const bool enableBehavioralLearning = true;
  static const bool enableSocialFeatures = false;
  static const bool enableAdvancedCharts = true;
  static const bool enablePortfolioTracking = true;
  static const bool enableNewsRAG = true;
  static const bool enableTechnicalAnalysis = true;
  static const bool enablePatternRecognition = true;
  static const bool enableElliottWaveAnalysis = true;
  static const bool enableFibonacciAnalysis = true;
  static const bool enableSupplyDemandZones = true;
  static const bool enableOptionFlowAnalysis = true;
  static const bool enableInstitutionalActivity = true;
  static const bool enableDeFiMetrics = true;
  static const bool enableOnChainData = true;
  static const bool enableSocialMetrics = true;
  static const bool enableDeveloperMetrics = true;
  
  // Default Values
  static const int defaultPageSize = 20;
  static const int maxWatchlistItems = 100;
  static const int maxPortfolioItems = 50;
  static const int maxAlerts = 20;
  static const int maxNotes = 100;
  static const double defaultRiskTolerance = 0.5;
  static const double defaultTargetReturn = 0.1;
  static const int defaultTimeHorizon = 5;
  
  // Time Intervals
  static const int realTimeUpdateIntervalSeconds = 5;
  static const int marketDataUpdateIntervalSeconds = 30;
  static const int newsUpdateIntervalMinutes = 15;
  static const int sentimentUpdateIntervalMinutes = 30;
  static const int technicalAnalysisUpdateIntervalMinutes = 5;
  static const int patternRecognitionUpdateIntervalMinutes = 10;
  static const int recommendationUpdateIntervalHours = 6;
  static const int behaviorAnalysisUpdateIntervalHours = 24;
  
  // Market Hours (EST)
  static const int marketOpenHour = 9;
  static const int marketOpenMinute = 30;
  static const int marketCloseHour = 16;
  static const int marketCloseMinute = 0;
  
  // Error Messages
  static const String networkErrorMessage = 'Network error. Please check your connection.';
  static const String apiErrorMessage = 'API error. Please try again later.';
  static const String authenticationErrorMessage = 'Authentication failed. Please log in again.';
  static const String dataErrorMessage = 'Data error. Please refresh the page.';
  static const String unknownErrorMessage = 'An unknown error occurred.';
  
  // Success Messages
  static const String dataUpdatedMessage = 'Data updated successfully.';
  static const String settingsSavedMessage = 'Settings saved successfully.';
  static const String alertCreatedMessage = 'Alert created successfully.';
  static const String watchlistUpdatedMessage = 'Watchlist updated successfully.';
  static const String portfolioUpdatedMessage = 'Portfolio updated successfully.';
  
  // Validation Messages
  static const String requiredFieldMessage = 'This field is required.';
  static const String invalidEmailMessage = 'Please enter a valid email address.';
  static const String invalidPasswordMessage = 'Password must be at least 8 characters long.';
  static const String invalidSymbolMessage = 'Please enter a valid symbol.';
  static const String invalidAmountMessage = 'Please enter a valid amount.';
  
  // Onboarding Messages
  static const String welcomeMessage = 'Welcome to Synapse Finance!';
  static const String onboardingCompleteMessage = 'Onboarding completed successfully!';
  static const String profileSetupMessage = 'Let\'s set up your profile.';
  static const String preferencesSetupMessage = 'Configure your preferences.';
  static const String riskAssessmentMessage = 'Complete your risk assessment.';
  
  // Tutorial Messages
  static const String tutorialWelcomeMessage = 'Welcome to the tutorial!';
  static const String tutorialCompleteMessage = 'Tutorial completed!';
  static const String skipTutorialMessage = 'Skip tutorial';
  static const String nextTutorialStepMessage = 'Next';
  static const String previousTutorialStepMessage = 'Previous';
  
  // Subscription Messages
  static const String premiumFeatureMessage = 'This is a premium feature.';
  static const String upgradeMessage = 'Upgrade to premium to access this feature.';
  static const String subscriptionExpiredMessage = 'Your subscription has expired.';
  static const String subscriptionRenewedMessage = 'Subscription renewed successfully.';
  
  // Social Features Messages
  static const String sharePortfolioMessage = 'Share your portfolio';
  static const String shareWatchlistMessage = 'Share your watchlist';
  static const String followUserMessage = 'Follow user';
  static const String unfollowUserMessage = 'Unfollow user';
  static const String blockUserMessage = 'Block user';
  static const String unblockUserMessage = 'Unblock user';
  
  // Analytics Messages
  static const String analyticsEnabledMessage = 'Analytics enabled.';
  static const String analyticsDisabledMessage = 'Analytics disabled.';
  static const String dataExportMessage = 'Data exported successfully.';
  static const String dataImportMessage = 'Data imported successfully.';
  
  // Backup Messages
  static const String backupCreatedMessage = 'Backup created successfully.';
  static const String backupRestoredMessage = 'Backup restored successfully.';
  static const String backupFailedMessage = 'Backup failed. Please try again.';
  static const String restoreFailedMessage = 'Restore failed. Please try again.';
  
  // Export Messages
  static const String exportStartedMessage = 'Export started.';
  static const String exportCompletedMessage = 'Export completed successfully.';
  static const String exportFailedMessage = 'Export failed. Please try again.';
  
  // Import Messages
  static const String importStartedMessage = 'Import started.';
  static const String importCompletedMessage = 'Import completed successfully.';
  static const String importFailedMessage = 'Import failed. Please try again.';
  
  // Sync Messages
  static const String syncStartedMessage = 'Sync started.';
  static const String syncCompletedMessage = 'Sync completed successfully.';
  static const String syncFailedMessage = 'Sync failed. Please try again.';
  
  // Update Messages
  static const String updateAvailableMessage = 'Update available.';
  static const String updateDownloadedMessage = 'Update downloaded.';
  static const String updateInstalledMessage = 'Update installed successfully.';
  static const String updateFailedMessage = 'Update failed. Please try again.';
  
  // Maintenance Messages
  static const String maintenanceModeMessage = 'App is in maintenance mode.';
  static const String maintenanceCompleteMessage = 'Maintenance completed.';
  static const String maintenanceScheduledMessage = 'Maintenance scheduled.';
  
  // Rate Limiting Messages
  static const String rateLimitExceededMessage = 'Rate limit exceeded. Please try again later.';
  static const String quotaExceededMessage = 'Quota exceeded. Please upgrade your plan.';
  
  // Data Quality Messages
  static const String dataQualityWarningMessage = 'Data quality warning.';
  static const String dataQualityErrorMessage = 'Data quality error.';
  static const String dataQualityInfoMessage = 'Data quality information.';
  
  // Performance Messages
  static const String performanceWarningMessage = 'Performance warning.';
  static const String performanceErrorMessage = 'Performance error.';
  static const String performanceInfoMessage = 'Performance information.';
  
  // Security Messages
  static const String securityWarningMessage = 'Security warning.';
  static const String securityErrorMessage = 'Security error.';
  static const String securityInfoMessage = 'Security information.';
  
  // Privacy Messages
  static const String privacyWarningMessage = 'Privacy warning.';
  static const String privacyErrorMessage = 'Privacy error.';
  static const String privacyInfoMessage = 'Privacy information.';
  
  // Compliance Messages
  static const String complianceWarningMessage = 'Compliance warning.';
  static const String complianceErrorMessage = 'Compliance error.';
  static const String complianceInfoMessage = 'Compliance information.';
  
  // Legal Messages
  static const String legalWarningMessage = 'Legal warning.';
  static const String legalErrorMessage = 'Legal error.';
  static const String legalInfoMessage = 'Legal information.';
  
  // Terms of Service
  static const String termsOfServiceUrl = 'https://synapsefinance.com/terms';
  static const String privacyPolicyUrl = 'https://synapsefinance.com/privacy';
  static const String cookiePolicyUrl = 'https://synapsefinance.com/cookies';
  static const String dataPolicyUrl = 'https://synapsefinance.com/data';
  
  // Support
  static const String supportEmail = 'support@synapsefinance.com';
  static const String supportPhone = '+1-555-0123';
  static const String supportUrl = 'https://synapsefinance.com/support';
  static const String feedbackUrl = 'https://synapsefinance.com/feedback';
  
  // Social Media
  static const String twitterUrl = 'https://twitter.com/synapsefinance';
  static const String linkedinUrl = 'https://linkedin.com/company/synapsefinance';
  static const String facebookUrl = 'https://facebook.com/synapsefinance';
  static const String instagramUrl = 'https://instagram.com/synapsefinance';
  static const String youtubeUrl = 'https://youtube.com/synapsefinance';
  
  // Documentation
  static const String documentationUrl = 'https://docs.synapsefinance.com';
  static const String apiDocumentationUrl = 'https://api.synapsefinance.com/docs';
  static const String developerPortalUrl = 'https://developers.synapsefinance.com';
  
  // Blog
  static const String blogUrl = 'https://blog.synapsefinance.com';
  static const String newsletterUrl = 'https://synapsefinance.com/newsletter';
  
  // App Store
  static const String appStoreUrl = 'https://apps.apple.com/app/synapse-finance';
  static const String googlePlayUrl = 'https://play.google.com/store/apps/synapse-finance';
  
  // Website
  static const String websiteUrl = 'https://synapsefinance.com';
  static const String landingPageUrl = 'https://synapsefinance.com/landing';
  static const String pricingUrl = 'https://synapsefinance.com/pricing';
  static const String aboutUrl = 'https://synapsefinance.com/about';
  static const String careersUrl = 'https://synapsefinance.com/careers';
  static const String pressUrl = 'https://synapsefinance.com/press';
  static const String contactUrl = 'https://synapsefinance.com/contact';
} 