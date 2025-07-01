// Feature flags to control the rollout of new analytics features
// This allows us to build features incrementally without breaking the app
class FeatureFlags {
  // Analytics Foundation
  static const bool enableAnalyticsFoundation = true;
  
  // Enhanced Sentiment Analysis
  static const bool enableEnhancedSentiment = true;
  
  // Reddit Integration
  static const bool enableRedditIntegration = false;
  
  // Volume Analysis
  static const bool enableVolumeAnalysis = false;
  
  // Enhanced Earnings Analytics
  static const bool enableEnhancedEarnings = false;
  
  // Correlation Engine
  static const bool enableCorrelationEngine = false;
  
  // Market Impact Analysis
  static const bool enableMarketImpactAnalysis = false;
  
  // Social Sentiment Analysis
  static const bool enableSocialSentiment = false;
  
  // Real-time Processing
  static const bool enableRealTimeProcessing = false;
  
  // Advanced Visualizations
  static const bool enableAdvancedVisualizations = false;
  
  // Machine Learning Models
  static const bool enableMachineLearning = false;
  
  // Institutional Data
  static const bool enableInstitutionalData = false;
}

// Helper methods for feature flag checks
class FeatureFlagHelper {
  static bool isFeatureEnabled(String featureName) {
    switch (featureName) {
      case 'analytics_foundation':
        return FeatureFlags.enableAnalyticsFoundation;
      case 'enhanced_sentiment':
        return FeatureFlags.enableEnhancedSentiment;
      case 'reddit_integration':
        return FeatureFlags.enableRedditIntegration;
      case 'volume_analysis':
        return FeatureFlags.enableVolumeAnalysis;
      case 'enhanced_earnings':
        return FeatureFlags.enableEnhancedEarnings;
      case 'correlation_engine':
        return FeatureFlags.enableCorrelationEngine;
      case 'market_impact':
        return FeatureFlags.enableMarketImpactAnalysis;
      case 'social_sentiment':
        return FeatureFlags.enableSocialSentiment;
      case 'real_time_processing':
        return FeatureFlags.enableRealTimeProcessing;
      case 'advanced_visualizations':
        return FeatureFlags.enableAdvancedVisualizations;
      case 'machine_learning':
        return FeatureFlags.enableMachineLearning;
      case 'institutional_data':
        return FeatureFlags.enableInstitutionalData;
      default:
        return false;
    }
  }
} 