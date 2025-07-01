import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../constants/theme_constants.dart';
import '../models/news_model.dart';
import '../models/analytics_models.dart';
import '../providers/analytics_provider.dart';
import '../constants/feature_flags.dart';

class EnhancedNewsCard extends ConsumerWidget {
  final NewsArticle article;
  final VoidCallback? onTap;
  final bool showDetailedAnalytics;

  const EnhancedNewsCard({
    super.key,
    required this.article,
    this.onTap,
    this.showDetailedAnalytics = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final isPositive = article.sentiment > 0.1;
    final isNegative = article.sentiment < -0.1;

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        onTap: onTap ?? () => _openArticle(context, article),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with title and sentiment indicators
              Row(
                children: [
                  Expanded(
                    child: Text(
                      article.title,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  if (isPositive || isNegative)
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: isPositive ? Colors.green.withOpacity(0.1) : Colors.red.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        isPositive ? Icons.trending_up : Icons.trending_down,
                        color: isPositive ? Colors.green : Colors.red,
                        size: 16,
                      ),
                    ),
                  if (FeatureFlagHelper.isFeatureEnabled('analytics_foundation'))
                    _buildAnalyticsIndicator(article),
                ],
              ),
              
              const SizedBox(height: 8),
              
              // Article summary
              Text(
                article.summary,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: AppColors.textSecondary,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              
              const SizedBox(height: 12),
              
              // Enhanced analytics section
              if (FeatureFlagHelper.isFeatureEnabled('enhanced_sentiment') && showDetailedAnalytics)
                _buildEnhancedAnalytics(ref),
              
              const SizedBox(height: 12),
              
              // Footer with source and date
              Row(
                children: [
                  Text(
                    article.source,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    _formatDate(article.publishedAt),
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAnalyticsIndicator(NewsArticle article) {
    return Consumer(
      builder: (context, ref, child) {
        final analyticsAsync = ref.watch(sentimentAnalysisProvider(article));
        
        return analyticsAsync.when(
          data: (analytics) {
            final confidence = analytics.confidence;
            final confidenceColor = confidence > 0.8 
                ? Colors.green 
                : confidence > 0.6 
                    ? Colors.orange 
                    : Colors.red;
            
            return Container(
              margin: const EdgeInsets.only(left: 8),
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: confidenceColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: confidenceColor.withOpacity(0.3),
                  width: 1,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.analytics,
                    size: 12,
                    color: confidenceColor,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '${(confidence * 100).toInt()}%',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: confidenceColor,
                    ),
                  ),
                ],
              ),
            );
          },
          loading: () => Container(
            margin: const EdgeInsets.only(left: 8),
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const SizedBox(
              width: 12,
              height: 12,
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
          ),
          error: (error, stack) => Container(
            margin: const EdgeInsets.only(left: 8),
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: Colors.red.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.error_outline,
              size: 12,
              color: Colors.red,
            ),
          ),
        );
      },
    );
  }

  Widget _buildEnhancedAnalytics(WidgetRef ref) {
    return Consumer(
      builder: (context, ref, child) {
        final enhancedSentimentAsync = ref.watch(enhancedSentimentProvider(article));
        
        return enhancedSentimentAsync.when(
          data: (enhancedSentiment) {
            return Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.surface.withOpacity(0.5),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: AppColors.primary.withOpacity(0.2),
                  width: 1,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Analytics header
                  Row(
                    children: [
                      Icon(
                        Icons.psychology,
                        size: 16,
                        color: AppColors.primary,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Enhanced Analysis',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 8),
                  
                  // Confidence and reliability metrics
                  Row(
                    children: [
                      Expanded(
                        child: _buildMetricChip(
                          'Confidence',
                          '${(enhancedSentiment.confidence * 100).toInt()}%',
                          _getConfidenceColor(enhancedSentiment.confidence),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: _buildMetricChip(
                          'Reliability',
                          '${(enhancedSentiment.reliability * 100).toInt()}%',
                          _getConfidenceColor(enhancedSentiment.reliability),
                        ),
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 8),
                  
                  // Entity sentiment
                  if (enhancedSentiment.entitySentiment.isNotEmpty) ...[
                    Text(
                      'Entity Sentiment',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: AppColors.textSecondary,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Wrap(
                      spacing: 4,
                      runSpacing: 4,
                      children: enhancedSentiment.entitySentiment.entries.map((entry) {
                        return _buildEntitySentimentChip(entry.key, entry.value);
                      }).toList(),
                    ),
                  ],
                  
                  // Dominant entity
                  if (enhancedSentiment.dominantEntity != null) ...[
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 12,
                          color: Colors.amber,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'Dominant: ${enhancedSentiment.dominantEntity}',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: Colors.amber.shade700,
                          ),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            );
          },
          loading: () => Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.surface.withOpacity(0.5),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Row(
              children: [
                SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
                SizedBox(width: 8),
                Text(
                  'Analyzing...',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
          error: (error, stack) => Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.red.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.error_outline,
                  size: 16,
                  color: Colors.red,
                ),
                const SizedBox(width: 8),
                Text(
                  'Analysis failed',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildMetricChip(String label, String value, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: color.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 10,
              color: AppColors.textSecondary,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: color,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEntitySentimentChip(String symbol, double sentiment) {
    final color = sentiment > 0.1 
        ? Colors.green 
        : sentiment < -0.1 
            ? Colors.red 
            : Colors.grey;
    
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: color.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            symbol,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: color,
            ),
          ),
          const SizedBox(width: 4),
          Icon(
            sentiment > 0.1 
                ? Icons.trending_up 
                : sentiment < -0.1 
                    ? Icons.trending_down 
                    : Icons.remove,
            size: 10,
            color: color,
          ),
        ],
      ),
    );
  }

  Color _getConfidenceColor(double value) {
    if (value > 0.8) return Colors.green;
    if (value > 0.6) return Colors.orange;
    return Colors.red;
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date).inDays;
    
    if (difference == 0) {
      return 'Today';
    } else if (difference == 1) {
      return 'Yesterday';
    } else if (difference < 7) {
      return '$difference days ago';
    } else {
      return '${date.month}/${date.day}/${date.year}';
    }
  }

  void _openArticle(BuildContext context, NewsArticle article) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Opening: ${article.title}')),
    );
  }
} 