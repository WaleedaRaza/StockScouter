import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/universal_analysis_provider.dart';
import '../constants/theme_constants.dart';

class UniversalAnalysisScreen extends ConsumerStatefulWidget {
  final String ticker;
  
  const UniversalAnalysisScreen({
    super.key,
    required this.ticker,
  });

  @override
  ConsumerState<UniversalAnalysisScreen> createState() => _UniversalAnalysisScreenState();
}

class _UniversalAnalysisScreenState extends ConsumerState<UniversalAnalysisScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
    
    // Add to analysis history
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(analysisHistoryProvider.notifier).addTicker(widget.ticker);
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final analysisAsync = ref.watch(universalAnalysisProvider(widget.ticker));

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text(
          '${widget.ticker} Analysis',
          style: const TextStyle(
            color: AppColors.textPrimary,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: AppColors.surface,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh, color: AppColors.primary),
            onPressed: () {
              ref.refresh(universalAnalysisProvider(widget.ticker));
            },
          ),
        ],
      ),
      body: analysisAsync.when(
        data: (analysis) {
          if (analysis.containsKey('error')) {
            return _buildErrorState(analysis['error']);
          }
          return _buildAnalysisContent(analysis);
        },
        loading: () => const Center(
          child: CircularProgressIndicator(color: AppColors.primary),
        ),
        error: (error, stack) => _buildErrorState('Error loading analysis: $error'),
      ),
    );
  }

  Widget _buildAnalysisContent(Map<String, dynamic> analysis) {
    final quote = analysis['quote'] as Map<String, dynamic>? ?? {};
    final profile = analysis['profile'] as Map<String, dynamic>? ?? {};
    final news = analysis['news'] as Map<String, dynamic>? ?? {};
    final technical = analysis['technical'] as Map<String, dynamic>? ?? {};
    final earnings = analysis['earnings'] as Map<String, dynamic>? ?? {};
    final analysisData = analysis['analysis'] as Map<String, dynamic>? ?? {};

    return Column(
      children: [
        // Header with key metrics
        _buildHeader(quote, profile),
        
        // Tab bar
        Container(
          color: AppColors.surface,
          child: TabBar(
            controller: _tabController,
            labelColor: AppColors.primary,
            unselectedLabelColor: AppColors.textSecondary,
            indicatorColor: AppColors.primary,
            tabs: const [
              Tab(text: 'Overview'),
              Tab(text: 'Technical'),
              Tab(text: 'News'),
              Tab(text: 'Earnings'),
              Tab(text: 'Insights'),
              Tab(text: 'Alerts'),
            ],
          ),
        ),
        
        // Tab content
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              _buildOverviewTab(quote, profile, analysisData),
              _buildTechnicalTab(technical),
              _buildNewsTab(news),
              _buildEarningsTab(earnings),
              _buildInsightsTab(analysisData),
              _buildAlertsTab(analysisData),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildHeader(Map<String, dynamic> quote, Map<String, dynamic> profile) {
    final currentPrice = quote['currentPrice'] ?? 0.0;
    final change = quote['change'] ?? 0.0;
    final changePercent = quote['changePercent'] ?? 0.0;
    final isPositive = changePercent >= 0;

    return Container(
      padding: const EdgeInsets.all(16),
      color: AppColors.surface,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.ticker,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    Text(
                      profile['name'] ?? 'Unknown Company',
                      style: const TextStyle(
                        fontSize: 14,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '\$${currentPrice.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        isPositive ? Icons.trending_up : Icons.trending_down,
                        color: isPositive ? AppColors.success : AppColors.error,
                        size: 16,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '${isPositive ? '+' : ''}${changePercent.toStringAsFixed(2)}%',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: isPositive ? AppColors.success : AppColors.error,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              _buildMetricChip('Sector', profile['sector'] ?? 'Unknown'),
              const SizedBox(width: 8),
              _buildMetricChip('Market Cap', _formatMarketCap(profile['marketCap'] ?? 0.0)),
              const SizedBox(width: 8),
              _buildMetricChip('P/E', (profile['peRatio'] ?? 0.0).toStringAsFixed(2)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMetricChip(String label, String value) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 10,
              color: AppColors.textSecondary,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOverviewTab(Map<String, dynamic> quote, Map<String, dynamic> profile, Map<String, dynamic> analysis) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle('Key Metrics'),
          const SizedBox(height: 12),
          _buildKeyMetricsGrid(quote, profile),
          
          const SizedBox(height: 24),
          _buildSectionTitle('Analysis Summary'),
          const SizedBox(height: 12),
          _buildAnalysisSummary(analysis),
          
          const SizedBox(height: 24),
          _buildSectionTitle('Company Information'),
          const SizedBox(height: 12),
          _buildCompanyInfo(profile),
        ],
      ),
    );
  }

  Widget _buildTechnicalTab(Map<String, dynamic> technical) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle('Technical Indicators'),
          const SizedBox(height: 12),
          _buildTechnicalIndicators(technical),
          
          const SizedBox(height: 24),
          _buildSectionTitle('Price Analysis'),
          const SizedBox(height: 12),
          _buildPriceAnalysis(technical),
        ],
      ),
    );
  }

  Widget _buildNewsTab(Map<String, dynamic> news) {
    final headlines = news['recentHeadlines'] as List? ?? [];
    final sentimentScore = news['sentimentScore'] ?? 0.0;
    final positiveCount = news['positiveNews'] ?? 0;
    final negativeCount = news['negativeNews'] ?? 0;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle('News Sentiment'),
          const SizedBox(height: 12),
          _buildSentimentSummary(sentimentScore, positiveCount, negativeCount),
          
          const SizedBox(height: 24),
          _buildSectionTitle('Recent Headlines'),
          const SizedBox(height: 12),
          ...headlines.map((headline) => _buildNewsItem(headline.toString())),
        ],
      ),
    );
  }

  Widget _buildEarningsTab(Map<String, dynamic> earnings) {
    if (earnings.isEmpty) {
      return const Center(
        child: Text(
          'No earnings data available',
          style: TextStyle(color: AppColors.textSecondary),
        ),
      );
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle('Latest Earnings'),
          const SizedBox(height: 12),
          _buildEarningsData(earnings),
        ],
      ),
    );
  }

  Widget _buildInsightsTab(Map<String, dynamic> analysis) {
    final insights = analysis['insights'] as List? ?? [];
    final overallSentiment = analysis['overallSentiment'] ?? 'Neutral';
    final riskLevel = analysis['riskLevel'] ?? 'Unknown';

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle('Market Insights'),
          const SizedBox(height: 12),
          _buildSentimentCard(overallSentiment, riskLevel),
          
          const SizedBox(height: 24),
          _buildSectionTitle('Key Insights'),
          const SizedBox(height: 12),
          ...insights.map((insight) => _buildInsightItem(insight.toString())),
        ],
      ),
    );
  }

  Widget _buildAlertsTab(Map<String, dynamic> analysis) {
    final alerts = analysis['alerts'] as List? ?? [];
    final recommendation = analysis['recommendation'] ?? 'No recommendation available';

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle('Active Alerts'),
          const SizedBox(height: 12),
          if (alerts.isEmpty)
            const Text(
              'No active alerts',
              style: TextStyle(color: AppColors.textSecondary),
            )
          else
            ...alerts.map((alert) => _buildAlertItem(alert.toString())),
          
          const SizedBox(height: 24),
          _buildSectionTitle('Recommendation'),
          const SizedBox(height: 12),
          _buildRecommendationCard(recommendation),
        ],
      ),
    );
  }

  // Helper widgets
  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
      ),
    );
  }

  Widget _buildKeyMetricsGrid(Map<String, dynamic> quote, Map<String, dynamic> profile) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
      childAspectRatio: 2.5,
      children: [
        _buildMetricCard('Open', '\$${(quote['open'] ?? 0.0).toStringAsFixed(2)}'),
        _buildMetricCard('High', '\$${(quote['high'] ?? 0.0).toStringAsFixed(2)}'),
        _buildMetricCard('Low', '\$${(quote['low'] ?? 0.0).toStringAsFixed(2)}'),
        _buildMetricCard('Previous Close', '\$${(quote['previousClose'] ?? 0.0).toStringAsFixed(2)}'),
      ],
    );
  }

  Widget _buildMetricCard(String label, String value) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              color: AppColors.textSecondary,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAnalysisSummary(Map<String, dynamic> analysis) {
    final overallSentiment = analysis['overallSentiment'] ?? 'Neutral';
    final riskLevel = analysis['riskLevel'] ?? 'Unknown';
    final insights = analysis['insights'] as List? ?? [];

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              _buildSentimentBadge(overallSentiment),
              const SizedBox(width: 12),
              _buildRiskBadge(riskLevel),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            '${insights.length} insights generated',
            style: const TextStyle(
              fontSize: 14,
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSentimentBadge(String sentiment) {
    Color color;
    switch (sentiment.toLowerCase()) {
      case 'bullish':
        color = AppColors.success;
        break;
      case 'bearish':
        color = AppColors.error;
        break;
      default:
        color = AppColors.warning;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color),
      ),
      child: Text(
        sentiment,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: color,
        ),
      ),
    );
  }

  Widget _buildRiskBadge(String risk) {
    Color color;
    switch (risk.toLowerCase()) {
      case 'high':
        color = AppColors.error;
        break;
      case 'medium':
        color = AppColors.warning;
        break;
      default:
        color = AppColors.success;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color),
      ),
      child: Text(
        'Risk: $risk',
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: color,
        ),
      ),
    );
  }

  Widget _buildCompanyInfo(Map<String, dynamic> profile) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        children: [
          _buildInfoRow('Sector', profile['sector'] ?? 'Unknown'),
          _buildInfoRow('Country', profile['country'] ?? 'Unknown'),
          _buildInfoRow('Exchange', profile['exchange'] ?? 'Unknown'),
          _buildInfoRow('Currency', profile['currency'] ?? 'USD'),
          _buildInfoRow('Beta', (profile['beta'] ?? 0.0).toStringAsFixed(2)),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 14,
              color: AppColors.textSecondary,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTechnicalIndicators(Map<String, dynamic> technical) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        children: [
          _buildInfoRow('RSI', (technical['rsi'] ?? 0.0).toStringAsFixed(1)),
          _buildInfoRow('20-Day SMA', '\$${(technical['sma20'] ?? 0.0).toStringAsFixed(2)}'),
          _buildInfoRow('50-Day SMA', '\$${(technical['sma50'] ?? 0.0).toStringAsFixed(2)}'),
          _buildInfoRow('20-Day Change', '${(technical['priceChange20d'] ?? 0.0).toStringAsFixed(2)}%'),
          _buildInfoRow('Volatility', (technical['volatility'] ?? 0.0).toStringAsFixed(2)),
        ],
      ),
    );
  }

  Widget _buildPriceAnalysis(Map<String, dynamic> technical) {
    final currentPrice = technical['currentPrice'] ?? 0.0;
    final sma20 = technical['sma20'] ?? 0.0;
    final sma50 = technical['sma50'] ?? 0.0;

    String trend = 'Sideways';
    if (currentPrice > sma20 && sma20 > sma50) {
      trend = 'Bullish';
    } else if (currentPrice < sma20 && sma20 < sma50) {
      trend = 'Bearish';
    }

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Trend Analysis',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 12),
          _buildSentimentBadge(trend),
        ],
      ),
    );
  }

  Widget _buildSentimentSummary(double sentimentScore, int positiveCount, int negativeCount) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        children: [
          Text(
            'Sentiment Score: ${sentimentScore.toStringAsFixed(2)}',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildSentimentStat('Positive', positiveCount, AppColors.success),
              _buildSentimentStat('Negative', negativeCount, AppColors.error),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSentimentStat(String label, int count, Color color) {
    return Column(
      children: [
        Text(
          count.toString(),
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: AppColors.textSecondary,
          ),
        ),
      ],
    );
  }

  Widget _buildNewsItem(String headline) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.border),
      ),
      child: Text(
        headline,
        style: const TextStyle(
          fontSize: 14,
          color: AppColors.textPrimary,
        ),
      ),
    );
  }

  Widget _buildEarningsData(Map<String, dynamic> earnings) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        children: [
          _buildInfoRow('Quarter', 'Q${earnings['quarter']} ${earnings['year']}'),
          _buildInfoRow('Actual', (earnings['actual'] ?? 0.0).toStringAsFixed(2)),
          _buildInfoRow('Estimate', (earnings['estimate'] ?? 0.0).toStringAsFixed(2)),
          _buildInfoRow('Surprise', '${(earnings['surprisePercent'] ?? 0.0).toStringAsFixed(1)}%'),
        ],
      ),
    );
  }

  Widget _buildSentimentCard(String overallSentiment, String riskLevel) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        children: [
          _buildSentimentBadge(overallSentiment),
          const SizedBox(width: 12),
          _buildRiskBadge(riskLevel),
        ],
      ),
    );
  }

  Widget _buildInsightItem(String insight) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.lightbulb_outline,
            color: AppColors.primary,
            size: 20,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              insight,
              style: const TextStyle(
                fontSize: 14,
                color: AppColors.textPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAlertItem(String alert) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.error.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.error),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.warning_amber,
            color: AppColors.error,
            size: 20,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              alert,
              style: const TextStyle(
                fontSize: 14,
                color: AppColors.textPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecommendationCard(String recommendation) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.primary),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Trading Recommendation',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            recommendation,
            style: const TextStyle(
              fontSize: 14,
              color: AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState(String error) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.error_outline,
            size: 64,
            color: AppColors.error,
          ),
          const SizedBox(height: 16),
          Text(
            'Analysis Error',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            error,
            style: const TextStyle(
              fontSize: 14,
              color: AppColors.textSecondary,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              ref.refresh(universalAnalysisProvider(widget.ticker));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: Colors.white,
            ),
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }

  String _formatMarketCap(double marketCap) {
    if (marketCap >= 1e12) {
      return '\$${(marketCap / 1e12).toStringAsFixed(1)}T';
    } else if (marketCap >= 1e9) {
      return '\$${(marketCap / 1e9).toStringAsFixed(1)}B';
    } else if (marketCap >= 1e6) {
      return '\$${(marketCap / 1e6).toStringAsFixed(1)}M';
    } else {
      return '\$${marketCap.toStringAsFixed(0)}';
    }
  }
} 