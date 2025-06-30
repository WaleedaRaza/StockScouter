import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/nvda_analysis_provider.dart';
import '../services/nvda_analysis_service.dart';
import '../widgets/loading_widget.dart';
import '../widgets/error_widget.dart';
import '../constants/theme_constants.dart';

class AnalysisScreen extends ConsumerStatefulWidget {
  const AnalysisScreen({super.key});

  @override
  ConsumerState<AnalysisScreen> createState() => _AnalysisScreenState();
}

class _AnalysisScreenState extends ConsumerState<AnalysisScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final analysisAsync = ref.watch(nvdaAnalysisProvider);
    final summary = ref.watch(nvdaAnalysisSummaryProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text(
          'NVDA Analysis',
          style: TextStyle(
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
              ref.refresh(nvdaAnalysisProvider);
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          indicatorColor: AppColors.primary,
          labelColor: AppColors.primary,
          unselectedLabelColor: AppColors.textSecondary,
          tabs: const [
            Tab(text: 'Overview'),
            Tab(text: 'Technical'),
            Tab(text: 'Elliott Wave'),
            Tab(text: 'Fibonacci'),
            Tab(text: 'Supply/Demand'),
            Tab(text: 'Earnings'),
            Tab(text: 'Sentiment'),
          ],
        ),
      ),
      body: analysisAsync.when(
        data: (analysis) => Column(
          children: [
            // Header with current price and key metrics
            _buildHeader(analysis),
            
            // Alerts section
            if (summary.alerts.isNotEmpty) _buildAlertsSection(summary.alerts),
            
            // Tab content
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  _buildOverviewTab(analysis, summary),
                  _buildTechnicalTab(analysis),
                  _buildElliottWaveTab(analysis),
                  _buildFibonacciTab(analysis),
                  _buildSupplyDemandTab(analysis),
                  _buildEarningsTab(analysis),
                  _buildSentimentTab(analysis),
                ],
              ),
            ),
          ],
        ),
        loading: () => const LoadingWidget(),
        error: (error, stack) => CustomErrorWidget(message: error.toString()),
      ),
    );
  }

  Widget _buildHeader(NVDAAnalysis analysis) {
    final quote = analysis.quote;
    if (quote == null) return const SizedBox.shrink();

    return Container(
      padding: const EdgeInsets.all(16),
      color: AppColors.surface,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'NVDA',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  Text(
                    quote.name,
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '\$${quote.price.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: quote.change >= 0 ? AppColors.success : AppColors.error,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        quote.change >= 0 ? Icons.arrow_upward : Icons.arrow_downward,
                        size: 16,
                        color: quote.change >= 0 ? AppColors.success : AppColors.error,
                      ),
                      Text(
                        '${quote.change.toStringAsFixed(2)} (${quote.changePercent.toStringAsFixed(2)}%)',
                        style: TextStyle(
                          fontSize: 14,
                          color: quote.change >= 0 ? AppColors.success : AppColors.error,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildMetric('Volume', '${(quote.volume / 1000000).toStringAsFixed(1)}M'),
              _buildMetric('High', '\$${quote.high.toStringAsFixed(2)}'),
              _buildMetric('Low', '\$${quote.low.toStringAsFixed(2)}'),
              _buildMetric('Open', '\$${quote.open.toStringAsFixed(2)}'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMetric(String label, String value) {
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: AppColors.textSecondary,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
      ],
    );
  }

  Widget _buildAlertsSection(List<Alert> alerts) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.notifications, color: AppColors.warning, size: 20),
              const SizedBox(width: 8),
              Text(
                'Alerts',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          ...alerts.take(3).map((alert) => Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Row(
              children: [
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: _getAlertColor(alert.severity),
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    alert.message,
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }

  Color _getAlertColor(AlertSeverity severity) {
    switch (severity) {
      case AlertSeverity.low:
        return AppColors.success;
      case AlertSeverity.medium:
        return AppColors.warning;
      case AlertSeverity.high:
        return AppColors.error;
    }
  }

  Widget _buildOverviewTab(NVDAAnalysis analysis, NVDAnalysisSummary summary) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Technical Signals
          _buildSection(
            'Technical Signals',
            Icons.trending_up,
            _buildTechnicalSignals(summary.technicalSignals),
          ),
          
          const SizedBox(height: 16),
          
          // Key Levels
          _buildSection(
            'Key Levels',
            Icons.show_chart,
            _buildKeyLevels(summary.keyLevels),
          ),
          
          const SizedBox(height: 16),
          
          // Quick Stats
          _buildSection(
            'Quick Stats',
            Icons.analytics,
            _buildQuickStats(analysis),
          ),
        ],
      ),
    );
  }

  Widget _buildTechnicalTab(NVDAAnalysis analysis) {
    final technical = analysis.technicalAnalysis;
    
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Moving Averages
          _buildSection(
            'Moving Averages',
            Icons.trending_up,
            _buildMovingAverages(technical),
          ),
          
          const SizedBox(height: 16),
          
          // RSI
          _buildSection(
            'RSI',
            Icons.speed,
            _buildRSI(technical.rsi),
          ),
          
          const SizedBox(height: 16),
          
          // MACD
          _buildSection(
            'MACD',
            Icons.show_chart,
            _buildMACD(technical.macd),
          ),
          
          const SizedBox(height: 16),
          
          // Bollinger Bands
          _buildSection(
            'Bollinger Bands',
            Icons.candlestick_chart,
            _buildBollingerBands(technical.bollingerBands),
          ),
          
          const SizedBox(height: 16),
          
          // Volume Analysis
          _buildSection(
            'Volume Analysis',
            Icons.volume_up,
            _buildVolumeAnalysis(technical.volumeAnalysis),
          ),
          
          const SizedBox(height: 16),
          
          // Patterns
          _buildSection(
            'Patterns',
            Icons.pattern,
            _buildPatterns(technical.patterns),
          ),
        ],
      ),
    );
  }

  Widget _buildElliottWaveTab(NVDAAnalysis analysis) {
    final elliott = analysis.elliottWave;
    
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Current Wave
          _buildSection(
            'Current Wave',
            Icons.waves,
            _buildCurrentWave(elliott),
          ),
          
          const SizedBox(height: 16),
          
          // Next Move Prediction
          _buildSection(
            'Next Move',
            Icons.psychology,
            _buildNextMove(elliott),
          ),
          
          const SizedBox(height: 16),
          
          // Wave Confidence
          _buildSection(
            'Confidence',
            Icons.verified,
            _buildWaveConfidence(elliott.confidence),
          ),
          
          const SizedBox(height: 16),
          
          // Swing Points
          _buildSection(
            'Swing Points',
            Icons.timeline,
            _buildSwingPoints(elliott.swingPoints),
          ),
        ],
      ),
    );
  }

  Widget _buildFibonacciTab(NVDAAnalysis analysis) {
    final fibonacci = analysis.fibonacci;
    
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Retracement Levels
          _buildSection(
            'Retracement Levels',
            Icons.trending_down,
            _buildRetracementLevels(fibonacci),
          ),
          
          const SizedBox(height: 16),
          
          // Extension Levels
          _buildSection(
            'Extension Levels',
            Icons.trending_up,
            _buildExtensionLevels(fibonacci),
          ),
          
          const SizedBox(height: 16),
          
          // Current Position
          _buildSection(
            'Current Position',
            Icons.my_location,
            _buildCurrentPosition(fibonacci),
          ),
        ],
      ),
    );
  }

  Widget _buildSupplyDemandTab(NVDAAnalysis analysis) {
    final supplyDemand = analysis.supplyDemand;
    
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Supply Zones
          _buildSection(
            'Supply Zones',
            Icons.arrow_downward,
            _buildZones(supplyDemand.supplyZones, ZoneType.supply),
          ),
          
          const SizedBox(height: 16),
          
          // Demand Zones
          _buildSection(
            'Demand Zones',
            Icons.arrow_upward,
            _buildZones(supplyDemand.demandZones, ZoneType.demand),
          ),
          
          const SizedBox(height: 16),
          
          // Nearest Zones
          _buildSection(
            'Nearest Zones',
            Icons.near_me,
            _buildNearestZones(supplyDemand),
          ),
        ],
      ),
    );
  }

  Widget _buildEarningsTab(NVDAAnalysis analysis) {
    final earnings = analysis.earningsAnalysis;
    
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Next Earnings
          if (earnings.nextEarnings != null)
            _buildSection(
              'Next Earnings',
              Icons.event,
              _buildNextEarnings(earnings.nextEarnings!),
            ),
          
          if (earnings.nextEarnings != null) const SizedBox(height: 16),
          
          // Recent Earnings
          if (earnings.recentEarnings != null)
            _buildSection(
              'Recent Earnings',
              Icons.history,
              _buildRecentEarnings(earnings.recentEarnings!),
            ),
          
          if (earnings.recentEarnings != null) const SizedBox(height: 16),
          
          // Earnings History
          _buildSection(
            'Earnings History',
            Icons.analytics,
            _buildEarningsHistory(earnings),
          ),
        ],
      ),
    );
  }

  Widget _buildSentimentTab(NVDAAnalysis analysis) {
    final sentiment = analysis.sentimentAnalysis;
    final news = analysis.news;
    
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Overall Sentiment
          _buildSection(
            'Overall Sentiment',
            Icons.sentiment_satisfied,
            _buildOverallSentiment(sentiment),
          ),
          
          const SizedBox(height: 16),
          
          // Sentiment Breakdown
          _buildSection(
            'Sentiment Breakdown',
            Icons.pie_chart,
            _buildSentimentBreakdown(sentiment),
          ),
          
          const SizedBox(height: 16),
          
          // Recent News
          _buildSection(
            'Recent News',
            Icons.article,
            _buildRecentNews(news),
          ),
        ],
      ),
    );
  }

  // Helper methods for building sections
  Widget _buildSection(String title, IconData icon, Widget content) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: AppColors.primary, size: 20),
              const SizedBox(width: 8),
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          content,
        ],
      ),
    );
  }

  // Content builders for each section
  Widget _buildTechnicalSignals(List<TechnicalSignal> signals) {
    if (signals.isEmpty) {
      return Text(
        'No technical signals detected',
        style: TextStyle(color: AppColors.textSecondary),
      );
    }

    return Column(
      children: signals.map((signal) => Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Row(
          children: [
            Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                color: _getSignalColor(signal.type),
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                signal.message,
                style: TextStyle(
                  fontSize: 12,
                  color: AppColors.textSecondary,
                ),
              ),
            ),
            Text(
              signal.value.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
          ],
        ),
      )).toList(),
    );
  }

  Color _getSignalColor(SignalType type) {
    switch (type) {
      case SignalType.bullish:
        return AppColors.success;
      case SignalType.bearish:
        return AppColors.error;
      case SignalType.overbought:
        return AppColors.warning;
      case SignalType.oversold:
        return AppColors.info;
      case SignalType.neutral:
        return AppColors.textSecondary;
    }
  }

  Widget _buildKeyLevels(List<KeyLevel> levels) {
    if (levels.isEmpty) {
      return Text(
        'No key levels identified',
        style: TextStyle(color: AppColors.textSecondary),
      );
    }

    return Column(
      children: levels.take(5).map((level) => Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              level.description,
              style: TextStyle(
                fontSize: 12,
                color: AppColors.textSecondary,
              ),
            ),
            Text(
              '\$${level.price.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: _getLevelColor(level.type),
              ),
            ),
          ],
        ),
      )).toList(),
    );
  }

  Color _getLevelColor(LevelType type) {
    switch (type) {
      case LevelType.support:
        return AppColors.success;
      case LevelType.resistance:
        return AppColors.error;
      case LevelType.fibonacci:
        return AppColors.primary;
    }
  }

  Widget _buildQuickStats(NVDAAnalysis analysis) {
    final technical = analysis.technicalAnalysis;
    final sentiment = analysis.sentimentAnalysis;
    
    return Column(
      children: [
        _buildStatRow('RSI', technical.rsi.toStringAsFixed(1)),
        _buildStatRow('Sentiment', sentiment.overallSentiment.toStringAsFixed(2)),
        _buildStatRow('Volume Ratio', technical.volumeAnalysis.ratio.toStringAsFixed(1)),
        _buildStatRow('Patterns', technical.patterns.length.toString()),
      ],
    );
  }

  Widget _buildStatRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: AppColors.textSecondary,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }

  // Additional content builders for other tabs...
  Widget _buildMovingAverages(TechnicalAnalysis technical) {
    return Column(
      children: [
        _buildStatRow('SMA 20', '\$${technical.sma20.toStringAsFixed(2)}'),
        _buildStatRow('SMA 50', '\$${technical.sma50.toStringAsFixed(2)}'),
        _buildStatRow('SMA 200', '\$${technical.sma200.toStringAsFixed(2)}'),
        _buildStatRow('EMA 12', '\$${technical.ema12.toStringAsFixed(2)}'),
        _buildStatRow('EMA 26', '\$${technical.ema26.toStringAsFixed(2)}'),
      ],
    );
  }

  Widget _buildRSI(double rsi) {
    Color color = AppColors.textSecondary;
    if (rsi > 70) color = AppColors.warning;
    if (rsi < 30) color = AppColors.info;
    
    return Row(
      children: [
        Expanded(
          child: LinearProgressIndicator(
            value: rsi / 100,
            backgroundColor: AppColors.border,
            valueColor: AlwaysStoppedAnimation<Color>(color),
          ),
        ),
        const SizedBox(width: 8),
        Text(
          rsi.toStringAsFixed(1),
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: color,
          ),
        ),
      ],
    );
  }

  Widget _buildMACD(Map<String, double> macd) {
    if (macd.isEmpty) return Text('No MACD data', style: TextStyle(color: AppColors.textSecondary));
    
    return Column(
      children: [
        _buildStatRow('MACD', macd['macd']?.toStringAsFixed(2) ?? 'N/A'),
        _buildStatRow('Signal', macd['signal']?.toStringAsFixed(2) ?? 'N/A'),
        _buildStatRow('Histogram', macd['histogram']?.toStringAsFixed(2) ?? 'N/A'),
      ],
    );
  }

  Widget _buildBollingerBands(Map<String, double> bands) {
    if (bands.isEmpty) return Text('No Bollinger Bands data', style: TextStyle(color: AppColors.textSecondary));
    
    return Column(
      children: [
        _buildStatRow('Upper', '\$${bands['upper']?.toStringAsFixed(2) ?? 'N/A'}'),
        _buildStatRow('Middle', '\$${bands['middle']?.toStringAsFixed(2) ?? 'N/A'}'),
        _buildStatRow('Lower', '\$${bands['lower']?.toStringAsFixed(2) ?? 'N/A'}'),
      ],
    );
  }

  Widget _buildVolumeAnalysis(VolumeAnalysis volume) {
    return Column(
      children: [
        _buildStatRow('Current Volume', '${(volume.currentVolume / 1000000).toStringAsFixed(1)}M'),
        _buildStatRow('Average Volume', '${(volume.averageVolume / 1000000).toStringAsFixed(1)}M'),
        _buildStatRow('Ratio', volume.ratio.toStringAsFixed(1)),
        _buildStatRow('Significance', volume.significance),
      ],
    );
  }

  Widget _buildPatterns(List<Pattern> patterns) {
    if (patterns.isEmpty) {
      return Text('No patterns detected', style: TextStyle(color: AppColors.textSecondary));
    }

    return Column(
      children: patterns.map((pattern) => Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Row(
          children: [
            Icon(
              pattern.type == PatternType.doubleTop ? Icons.trending_down : Icons.trending_up,
              color: pattern.type == PatternType.doubleTop ? AppColors.error : AppColors.success,
              size: 16,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                pattern.description,
                style: TextStyle(
                  fontSize: 12,
                  color: AppColors.textSecondary,
                ),
              ),
            ),
            Text(
              '${(pattern.confidence * 100).toInt()}%',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
          ],
        ),
      )).toList(),
    );
  }

  // Elliott Wave content builders
  Widget _buildCurrentWave(ElliottWaveAnalysis elliott) {
    if (elliott.currentWave == null) {
      return Text('No current wave identified', style: TextStyle(color: AppColors.textSecondary));
    }

    return Column(
      children: [
        _buildStatRow('Wave Number', elliott.currentWave!.number.toString()),
        _buildStatRow('Wave Type', elliott.currentWave!.type.name),
        _buildStatRow('Start Price', '\$${elliott.currentWave!.start.price.toStringAsFixed(2)}'),
        _buildStatRow('End Price', '\$${elliott.currentWave!.end.price.toStringAsFixed(2)}'),
      ],
    );
  }

  Widget _buildNextMove(ElliottWaveAnalysis elliott) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        elliott.nextMove,
        style: TextStyle(
          fontSize: 14,
          color: AppColors.primary,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildWaveConfidence(double confidence) {
    return Row(
      children: [
        Expanded(
          child: LinearProgressIndicator(
            value: confidence,
            backgroundColor: AppColors.border,
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
          ),
        ),
        const SizedBox(width: 8),
        Text(
          '${(confidence * 100).toInt()}%',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: AppColors.primary,
          ),
        ),
      ],
    );
  }

  Widget _buildSwingPoints(List<SwingPoint> swings) {
    if (swings.isEmpty) {
      return Text('No swing points identified', style: TextStyle(color: AppColors.textSecondary));
    }

    return Column(
      children: swings.take(5).map((swing) => Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Row(
          children: [
            Icon(
              swing.type == SwingType.high ? Icons.arrow_upward : Icons.arrow_downward,
              color: swing.type == SwingType.high ? AppColors.error : AppColors.success,
              size: 16,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                '\$${swing.price.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 12,
                  color: AppColors.textSecondary,
                ),
              ),
            ),
            Text(
              swing.timestamp.toString().substring(0, 10),
              style: TextStyle(
                fontSize: 12,
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
      )).toList(),
    );
  }

  // Fibonacci content builders
  Widget _buildRetracementLevels(FibonacciAnalysis fibonacci) {
    if (fibonacci.retracementLevels.isEmpty) {
      return Text('No retracement levels', style: TextStyle(color: AppColors.textSecondary));
    }

    return Column(
      children: fibonacci.retracementLevels.entries.map((entry) => Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${(entry.key * 100).toInt()}%',
              style: TextStyle(
                fontSize: 12,
                color: AppColors.textSecondary,
              ),
            ),
            Text(
              '\$${entry.value.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: AppColors.primary,
              ),
            ),
          ],
        ),
      )).toList(),
    );
  }

  Widget _buildExtensionLevels(FibonacciAnalysis fibonacci) {
    if (fibonacci.extensionLevels.isEmpty) {
      return Text('No extension levels', style: TextStyle(color: AppColors.textSecondary));
    }

    return Column(
      children: fibonacci.extensionLevels.entries.map((entry) => Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${(entry.key * 100).toInt()}%',
              style: TextStyle(
                fontSize: 12,
                color: AppColors.textSecondary,
              ),
            ),
            Text(
              '\$${entry.value.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: AppColors.success,
              ),
            ),
          ],
        ),
      )).toList(),
    );
  }

  Widget _buildCurrentPosition(FibonacciAnalysis fibonacci) {
    return Column(
      children: [
        _buildStatRow('Current Price', '\$${fibonacci.currentPrice.toStringAsFixed(2)}'),
        _buildStatRow('Nearest Level', '\$${fibonacci.nearestLevel.toStringAsFixed(2)}'),
        _buildStatRow('High', '\$${fibonacci.high.toStringAsFixed(2)}'),
        _buildStatRow('Low', '\$${fibonacci.low.toStringAsFixed(2)}'),
      ],
    );
  }

  // Supply/Demand content builders
  Widget _buildZones(List<Zone> zones, ZoneType type) {
    if (zones.isEmpty) {
      return Text('No ${type.name} zones identified', style: TextStyle(color: AppColors.textSecondary));
    }

    return Column(
      children: zones.take(3).map((zone) => Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '\$${zone.price.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: type == ZoneType.supply ? AppColors.error : AppColors.success,
              ),
            ),
            Text(
              'Strength: ${zone.strength.toStringAsFixed(1)}',
              style: TextStyle(
                fontSize: 12,
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
      )).toList(),
    );
  }

  Widget _buildNearestZones(SupplyDemandAnalysis supplyDemand) {
    return Column(
      children: [
        if (supplyDemand.nearestSupply != null)
          _buildStatRow('Nearest Supply', '\$${supplyDemand.nearestSupply!.price.toStringAsFixed(2)}'),
        if (supplyDemand.nearestDemand != null)
          _buildStatRow('Nearest Demand', '\$${supplyDemand.nearestDemand!.price.toStringAsFixed(2)}'),
        _buildStatRow('Current Price', '\$${supplyDemand.currentPrice.toStringAsFixed(2)}'),
      ],
    );
  }

  // Earnings content builders
  Widget _buildNextEarnings(EarningsEvent earnings) {
    final daysUntil = earnings.date.difference(DateTime.now()).inDays;
    
    return Column(
      children: [
        _buildStatRow('Date', earnings.date.toString().substring(0, 10)),
        _buildStatRow('Days Until', daysUntil.toString()),
        if (earnings.epsEstimate != null)
          _buildStatRow('EPS Estimate', earnings.epsEstimate!.toStringAsFixed(2)),
        if (earnings.revenueEstimate != null)
          _buildStatRow('Revenue Estimate', '\$${(earnings.revenueEstimate! / 1000000).toStringAsFixed(1)}M'),
      ],
    );
  }

  Widget _buildRecentEarnings(EarningsEvent earnings) {
    List<Widget> children = [
      _buildStatRow('Date', earnings.date.toString().substring(0, 10)),
    ];
    if (earnings.epsActual != null && earnings.epsEstimate != null) {
      final beat = (earnings.epsActual! - earnings.epsEstimate!) / earnings.epsEstimate!;
      children.add(_buildStatRow('EPS Beat', '${(beat * 100).toStringAsFixed(1)}%'));
    }
    if (earnings.epsActual != null) {
      children.add(_buildStatRow('EPS Actual', earnings.epsActual!.toStringAsFixed(2)));
    }
    if (earnings.revenueActual != null) {
      children.add(_buildStatRow('Revenue Actual', '\$${(earnings.revenueActual! / 1000000).toStringAsFixed(1)}M'));
    }
    return Column(children: children);
  }

  Widget _buildEarningsHistory(EarningsAnalysis earnings) {
    return Column(
      children: [
        _buildStatRow('Average Beat', '${(earnings.averageBeat * 100).toStringAsFixed(1)}%'),
        _buildStatRow('History Count', earnings.earningsHistory.length.toString()),
      ],
    );
  }

  // Sentiment content builders
  Widget _buildOverallSentiment(SentimentAnalysis sentiment) {
    Color color = AppColors.textSecondary;
    if (sentiment.overallSentiment > 0.1) color = AppColors.success;
    if (sentiment.overallSentiment < -0.1) color = AppColors.error;
    
    return Row(
      children: [
        Expanded(
          child: LinearProgressIndicator(
            value: (sentiment.overallSentiment + 1) / 2,
            backgroundColor: AppColors.border,
            valueColor: AlwaysStoppedAnimation<Color>(color),
          ),
        ),
        const SizedBox(width: 8),
        Text(
          sentiment.overallSentiment.toStringAsFixed(2),
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: color,
          ),
        ),
      ],
    );
  }

  Widget _buildSentimentBreakdown(SentimentAnalysis sentiment) {
    return Column(
      children: [
        _buildStatRow('Positive Articles', sentiment.positiveArticles.toString()),
        _buildStatRow('Negative Articles', sentiment.negativeArticles.toString()),
        _buildStatRow('Neutral Articles', sentiment.neutralArticles.toString()),
        _buildStatRow('Total Articles', sentiment.totalArticles.toString()),
      ],
    );
  }

  Widget _buildRecentNews(List<NewsItem> news) {
    if (news.isEmpty) {
      return Text('No recent news', style: TextStyle(color: AppColors.textSecondary));
    }

    return Column(
      children: news.take(3).map((item) => Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.headline,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              item.source,
              style: TextStyle(
                fontSize: 10,
                color: AppColors.textSecondary,
              ),
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Icon(
                  item.sentiment > 0 ? Icons.sentiment_satisfied : Icons.sentiment_dissatisfied,
                  color: item.sentiment > 0 ? AppColors.success : AppColors.error,
                  size: 16,
                ),
                const SizedBox(width: 4),
                Text(
                  item.sentiment.toStringAsFixed(2),
                  style: TextStyle(
                    fontSize: 10,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ],
        ),
      )).toList(),
    );
  }
}