import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../constants/theme_constants.dart';
import '../constants/feature_flags.dart';
import '../models/news_model.dart';
import '../models/financial_news_models.dart';
import '../models/analytics_models.dart';
import '../providers/app_providers.dart';
import '../providers/analytics_provider.dart';
import '../widgets/loading_widget.dart';
import '../widgets/error_widget.dart';
import '../widgets/enhanced_news_card.dart';

class NewsScreen extends ConsumerStatefulWidget {
  const NewsScreen({super.key});

  @override
  ConsumerState<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends ConsumerState<NewsScreen> with TickerProviderStateMixin {
  late TabController _tabController;
  int _currentTabIndex = 0;
  bool _showDetailedAnalytics = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _currentTabIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      appBar: AppBar(
        title: const Text(
          'Financial News',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
        backgroundColor: AppColors.surface,
        elevation: 0,
        actions: [
          if (FeatureFlagHelper.isFeatureEnabled('enhanced_sentiment'))
            IconButton(
              icon: Icon(
                _showDetailedAnalytics ? Icons.analytics : Icons.analytics_outlined,
                color: AppColors.primary,
              ),
              onPressed: () => setState(() {
                _showDetailedAnalytics = !_showDetailedAnalytics;
              }),
              tooltip: 'Toggle Analytics',
            ),
          IconButton(
            icon: const Icon(Icons.refresh, color: AppColors.primary),
            onPressed: () => _refreshCurrentTab(),
            tooltip: 'Refresh',
          ),
          IconButton(
            icon: const Icon(Icons.search, color: AppColors.textPrimary),
            onPressed: () => _showSearchDialog(),
            tooltip: 'Search',
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          indicatorColor: AppColors.primary,
          labelColor: AppColors.primary,
          unselectedLabelColor: AppColors.textSecondary,
          tabs: const [
            Tab(text: 'Headlines'),
            Tab(text: 'Earnings'),
            Tab(text: 'Key Figures'),
            Tab(text: 'Economic'),
            Tab(text: 'Trending'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildHeadlinesTab(),
          _buildEarningsTab(),
          _buildKeyFiguresTab(),
          _buildEconomicTab(),
          _buildTrendingTab(),
        ],
      ),
    );
  }

  Widget _buildHeadlinesTab() {
    final newsState = ref.watch(newsProvider);

    return RefreshIndicator(
      onRefresh: () => ref.read(newsProvider.notifier).refreshNews(),
      child: newsState.isLoading
          ? const LoadingWidget()
          : newsState.error != null
              ? CustomErrorWidget(
                  message: newsState.error!,
                  onRetry: () => ref.read(newsProvider.notifier).refreshNews(),
                )
              : newsState.articles?.isEmpty == true
                  ? _buildEmptyState('No headlines available')
                  : ListView.builder(
                      padding: const EdgeInsets.all(16),
                      itemCount: newsState.articles?.length ?? 0,
                      itemBuilder: (context, index) {
                        final article = newsState.articles![index];
                        return FeatureFlagHelper.isFeatureEnabled('enhanced_sentiment')
                            ? EnhancedNewsCard(
                                article: article,
                                showDetailedAnalytics: _showDetailedAnalytics,
                              )
                            : _buildNewsCard(article);
                      },
                    ),
    );
  }

  Widget _buildEarningsTab() {
    return FutureBuilder<List<EarningsCall>>(
      future: _getEarningsCalls(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingWidget();
        }
        
        if (snapshot.hasError) {
          return CustomErrorWidget(
            message: 'Failed to load earnings calls',
            onRetry: () => setState(() {}),
          );
        }

        final earningsCalls = snapshot.data ?? [];
        
        if (earningsCalls.isEmpty) {
          return _buildEmptyState('No earnings calls scheduled');
        }

        return ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: earningsCalls.length,
          itemBuilder: (context, index) {
            final call = earningsCalls[index];
            return _buildEarningsCard(call);
          },
        );
      },
    );
  }

  Widget _buildKeyFiguresTab() {
    return FutureBuilder<List<KeyFigure>>(
      future: _getKeyFigures(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingWidget();
        }
        
        if (snapshot.hasError) {
          return CustomErrorWidget(
            message: 'Failed to load key figures',
            onRetry: () => setState(() {}),
          );
        }

        final keyFigures = snapshot.data ?? [];
        
        if (keyFigures.isEmpty) {
          return _buildEmptyState('No key figures available');
        }

        return ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: keyFigures.length,
          itemBuilder: (context, index) {
            final figure = keyFigures[index];
            return _buildKeyFigureCard(figure);
          },
        );
      },
    );
  }

  Widget _buildEconomicTab() {
    return FutureBuilder<List<EconomicEvent>>(
      future: _getEconomicEvents(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingWidget();
        }
        
        if (snapshot.hasError) {
          return CustomErrorWidget(
            message: 'Failed to load economic events',
            onRetry: () => setState(() {}),
          );
        }

        final events = snapshot.data ?? [];
        
        if (events.isEmpty) {
          return _buildEmptyState('No economic events scheduled');
        }

        return ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: events.length,
          itemBuilder: (context, index) {
            final event = events[index];
            return _buildEconomicEventCard(event);
          },
        );
      },
    );
  }

  Widget _buildTrendingTab() {
    return FutureBuilder<List<TrendingTopic>>(
      future: _getTrendingTopics(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingWidget();
        }
        
        if (snapshot.hasError) {
          return CustomErrorWidget(
            message: 'Failed to load trending topics',
            onRetry: () => setState(() {}),
          );
        }

        final topics = snapshot.data ?? [];
        
        if (topics.isEmpty) {
          return _buildEmptyState('No trending topics available');
        }

        return ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: topics.length,
          itemBuilder: (context, index) {
            final topic = topics[index];
            return _buildTrendingTopicCard(topic);
          },
        );
      },
    );
  }

  Widget _buildNewsCard(NewsArticle article) {
    final theme = Theme.of(context);
    final isPositive = article.sentiment > 0.1;
    final isNegative = article.sentiment < -0.1;

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        onTap: () => _openArticle(article),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              Text(
                article.summary,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: AppColors.textSecondary,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 12),
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

  Widget _buildEarningsCard(EarningsCall call) {
    final theme = Theme.of(context);
    final isCompleted = call.isCompleted;
    final isToday = call.callDate.day == DateTime.now().day;

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        onTap: () => _openEarningsCall(call),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: AppColors.primary.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.attach_money,
                      color: AppColors.primary,
                      size: 20,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          call.companyName,
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        Text(
                          '${call.quarter} ${call.year}',
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: isToday 
                          ? Colors.orange.withOpacity(0.1)
                          : isCompleted 
                              ? Colors.green.withOpacity(0.1)
                              : Colors.blue.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      isToday ? 'Today' : isCompleted ? 'Completed' : 'Scheduled',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: isToday 
                            ? Colors.orange
                            : isCompleted 
                                ? Colors.green
                                : Colors.blue,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              if (call.epsForecast != null || call.revenueForecast != null)
                Row(
                  children: [
                    if (call.epsForecast != null) ...[
                      Expanded(
                        child: _buildMetric('EPS Forecast', '\$${call.epsForecast!.toStringAsFixed(2)}'),
                      ),
                    ],
                    if (call.revenueForecast != null) ...[
                      Expanded(
                        child: _buildMetric('Revenue Forecast', '\$${call.revenueForecast!.toStringAsFixed(1)}B'),
                      ),
                    ],
                  ],
                ),
              const SizedBox(height: 8),
              Text(
                _formatDate(call.callDate),
                style: theme.textTheme.bodySmall?.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildKeyFigureCard(KeyFigure figure) {
    final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        onTap: () => _openKeyFigure(figure),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: AppColors.primary.withOpacity(0.1),
                child: figure.photoUrl != null
                    ? ClipOval(
                        child: Image.network(
                          figure.photoUrl!,
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Icon(
                              Icons.person,
                              color: AppColors.primary,
                              size: 30,
                            );
                          },
                        ),
                      )
                    : Icon(
                        Icons.person,
                        color: AppColors.primary,
                        size: 30,
                      ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      figure.name,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    Text(
                      figure.title,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: AppColors.textSecondary,
                      ),
                    ),
                    Text(
                      figure.company,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: AppColors.primary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Net Worth: \$${_formatNetWorth(figure.netWorth)}',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: AppColors.textSecondary,
                size: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEconomicEventCard(EconomicEvent event) {
    final theme = Theme.of(context);
    final isHighImpact = event.isHighImpact;
    final isToday = event.date.day == DateTime.now().day;

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        onTap: () => _openEconomicEvent(event),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: isHighImpact 
                          ? Colors.red.withOpacity(0.1)
                          : AppColors.primary.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.trending_up,
                      color: isHighImpact ? Colors.red : AppColors.primary,
                      size: 20,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          event.title,
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        Text(
                          '${event.country} • ${event.currency}',
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (isToday)
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.orange.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        'Today',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: Colors.orange,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 12),
              if (event.forecastValue != null || event.previousValue != null)
                Row(
                  children: [
                    if (event.previousValue != null) ...[
                      Expanded(
                        child: _buildMetric('Previous', '${event.previousValue!.toStringAsFixed(2)} ${event.unit}'),
                      ),
                    ],
                    if (event.forecastValue != null) ...[
                      Expanded(
                        child: _buildMetric('Forecast', '${event.forecastValue!.toStringAsFixed(2)} ${event.unit}'),
                      ),
                    ],
                  ],
                ),
              const SizedBox(height: 8),
              Text(
                _formatDate(event.date),
                style: theme.textTheme.bodySmall?.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTrendingTopicCard(TrendingTopic topic) {
    final theme = Theme.of(context);
    final isPositive = topic.sentiment > 0.1;
    final isNegative = topic.sentiment < -0.1;

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        onTap: () => _openTrendingTopic(topic),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: AppColors.primary.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.trending_up,
                      color: AppColors.primary,
                      size: 20,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      topic.topic,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary,
                      ),
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
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: _buildMetric('Volume', '${topic.volume.toStringAsFixed(0)}'),
                  ),
                  Expanded(
                    child: _buildMetric('Change', '${topic.volumeChange >= 0 ? '+' : ''}${topic.volumeChange.toStringAsFixed(1)}%'),
                  ),
                  Expanded(
                    child: _buildMetric('Sentiment', '${topic.sentiment >= 0 ? '+' : ''}${topic.sentiment.toStringAsFixed(2)}'),
                  ),
                ],
              ),
              if (topic.relatedSymbols.isNotEmpty) ...[
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  children: topic.relatedSymbols.take(5).map((symbol) {
                    return Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: AppColors.primary.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        symbol,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: AppColors.primary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMetric(String label, String value) {
    final theme = Theme.of(context);
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: theme.textTheme.bodySmall?.copyWith(
            color: AppColors.textSecondary,
          ),
        ),
        Text(
          value,
          style: theme.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
      ],
    );
  }

  Widget _buildEmptyState(String message) {
    final theme = Theme.of(context);
    
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.article_outlined,
            size: 64,
            color: AppColors.textSecondary,
          ),
          const SizedBox(height: 16),
          Text(
            message,
            style: theme.textTheme.titleMedium?.copyWith(
              color: AppColors.textSecondary,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  // Mock data methods (replace with actual API calls)
  Future<List<EarningsCall>> _getEarningsCalls() async {
    await Future.delayed(const Duration(seconds: 1)); // Simulate API call
    
    return [
      EarningsCall(
        id: '1',
        symbol: 'AAPL',
        companyName: 'Apple Inc.',
        callDate: DateTime.now().add(const Duration(days: 1)),
        earningsDate: DateTime.now().add(const Duration(days: 1)),
        quarter: 'Q4',
        year: 2024,
        epsForecast: 1.85,
        revenueForecast: 89.5,
        epsActual: null,
        revenueActual: null,
        callUrl: 'https://example.com',
        transcriptUrl: 'https://example.com',
        keyTopics: ['iPhone sales', 'Services growth', 'China market'],
        sentimentScores: {'overall': 0.7, 'revenue': 0.8, 'eps': 0.6},
        participants: ['Tim Cook', 'Luca Maestri'],
        isCompleted: false,
        status: 'scheduled',
      ),
      EarningsCall(
        id: '2',
        symbol: 'MSFT',
        companyName: 'Microsoft Corporation',
        callDate: DateTime.now().add(const Duration(days: 3)),
        earningsDate: DateTime.now().add(const Duration(days: 3)),
        quarter: 'Q4',
        year: 2024,
        epsForecast: 2.15,
        revenueForecast: 54.2,
        epsActual: null,
        revenueActual: null,
        callUrl: 'https://example.com',
        transcriptUrl: 'https://example.com',
        keyTopics: ['Azure growth', 'AI investments', 'Gaming'],
        sentimentScores: {'overall': 0.8, 'revenue': 0.9, 'eps': 0.7},
        participants: ['Satya Nadella', 'Amy Hood'],
        isCompleted: false,
        status: 'scheduled',
      ),
    ];
  }

  Future<List<KeyFigure>> _getKeyFigures() async {
    await Future.delayed(const Duration(seconds: 1));
    
    return [
      KeyFigure(
        id: '1',
        name: 'Elon Musk',
        title: 'CEO & Founder',
        company: 'Tesla, SpaceX',
        photoUrl: null,
        recentActions: ['Sold 10M Tesla shares', 'Announced new AI project'],
        holdings: ['TSLA', 'SPACE'],
        netWorth: 180000000000,
        source: 'Forbes',
        lastUpdated: DateTime.now(),
        relatedNews: ['Tesla earnings', 'SpaceX launch'],
      ),
      KeyFigure(
        id: '2',
        name: 'Warren Buffett',
        title: 'CEO & Chairman',
        company: 'Berkshire Hathaway',
        photoUrl: null,
        recentActions: ['Bought more Apple shares', 'Sold bank stocks'],
        holdings: ['AAPL', 'BRK.A', 'BRK.B'],
        netWorth: 95000000000,
        source: 'Forbes',
        lastUpdated: DateTime.now(),
        relatedNews: ['Berkshire portfolio changes', 'Annual letter'],
      ),
    ];
  }

  Future<List<EconomicEvent>> _getEconomicEvents() async {
    await Future.delayed(const Duration(seconds: 1));
    
    return [
      EconomicEvent(
        id: '1',
        title: 'Federal Reserve Interest Rate Decision',
        description: 'FOMC meeting to decide on federal funds rate',
        date: DateTime.now().add(const Duration(days: 2)),
        country: 'United States',
        currency: 'USD',
        impact: 'High',
        previousValue: 5.25,
        forecastValue: 5.25,
        actualValue: null,
        unit: '%',
        affectedAssets: ['USD', 'SPY', 'QQQ'],
        isHighImpact: true,
        source: 'Federal Reserve',
      ),
      EconomicEvent(
        id: '2',
        title: 'Non-Farm Payrolls',
        description: 'Employment situation report',
        date: DateTime.now().add(const Duration(days: 5)),
        country: 'United States',
        currency: 'USD',
        impact: 'High',
        previousValue: 216000,
        forecastValue: 185000,
        actualValue: null,
        unit: 'K',
        affectedAssets: ['USD', 'SPY', 'QQQ'],
        isHighImpact: true,
        source: 'Bureau of Labor Statistics',
      ),
    ];
  }

  Future<List<TrendingTopic>> _getTrendingTopics() async {
    await Future.delayed(const Duration(seconds: 1));
    
    return [
      TrendingTopic(
        id: '1',
        topic: 'Artificial Intelligence',
        volume: 1250,
        volumeChange: 15.5,
        sentiment: 0.75,
        sentimentChange: 0.12,
        relatedSymbols: ['NVDA', 'MSFT', 'GOOGL'],
        topArticles: ['AI revolution', 'Chip demand'],
        startDate: DateTime.now().subtract(const Duration(days: 7)),
        endDate: DateTime.now(),
      ),
      TrendingTopic(
        id: '2',
        topic: 'Electric Vehicles',
        volume: 890,
        volumeChange: -8.2,
        sentiment: -0.15,
        sentimentChange: -0.25,
        relatedSymbols: ['TSLA', 'NIO', 'RIVN'],
        topArticles: ['EV sales decline', 'Battery costs'],
        startDate: DateTime.now().subtract(const Duration(days: 7)),
        endDate: DateTime.now(),
      ),
    ];
  }

  // Helper methods
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

  String _formatNetWorth(double netWorth) {
    if (netWorth >= 1e12) {
      return '${(netWorth / 1e12).toStringAsFixed(1)}T';
    } else if (netWorth >= 1e9) {
      return '${(netWorth / 1e9).toStringAsFixed(1)}B';
    } else if (netWorth >= 1e6) {
      return '${(netWorth / 1e6).toStringAsFixed(1)}M';
    } else {
      return netWorth.toStringAsFixed(0);
    }
  }

  void _refreshCurrentTab() {
    switch (_currentTabIndex) {
      case 0:
        ref.read(newsProvider.notifier).refreshNews();
        break;
      case 1:
      case 2:
      case 3:
      case 4:
        setState(() {}); // Trigger rebuild for mock data
        break;
    }
  }

  void _showSearchDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Search News'),
        content: const TextField(
          decoration: InputDecoration(
            hintText: 'Enter search terms...',
            border: OutlineInputBorder(),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              // Implement search functionality
            },
            child: const Text('Search'),
          ),
        ],
      ),
    );
  }

  void _openArticle(NewsArticle article) {
    // Implement article detail view
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Opening: ${article.title}')),
    );
  }

  void _openEarningsCall(EarningsCall call) {
    // Implement earnings call detail view
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Opening: ${call.companyName} Earnings Call')),
    );
  }

  void _openKeyFigure(KeyFigure figure) {
    // Implement key figure detail view
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Opening: ${figure.name} Profile')),
    );
  }

  void _openEconomicEvent(EconomicEvent event) {
    // Implement economic event detail view
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Opening: ${event.title}')),
    );
  }

  void _openTrendingTopic(TrendingTopic topic) {
    // Implement trending topic detail view
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Opening: ${topic.topic}')),
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
} 