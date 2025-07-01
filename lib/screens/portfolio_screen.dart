import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../providers/portfolio_provider.dart';
import '../widgets/portfolio_holding_card.dart';
import '../widgets/add_holding_dialog.dart';
import '../widgets/loading_widget.dart';
import '../widgets/error_widget.dart';
import '../constants/theme_constants.dart';

class PortfolioScreen extends ConsumerStatefulWidget {
  const PortfolioScreen({super.key});

  @override
  ConsumerState<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends ConsumerState<PortfolioScreen> {
  @override
  void initState() {
    super.initState();
    // Refresh portfolio data when screen loads
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(portfolioProvider.notifier).refreshPortfolio();
    });
  }

  @override
  Widget build(BuildContext context) {
    final portfolioState = ref.watch(portfolioProvider);
    final portfolioSummary = ref.watch(portfolioSummaryProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text(
          'Portfolio',
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
            onPressed: () => ref.read(portfolioProvider.notifier).refreshPortfolio(),
            tooltip: 'Refresh portfolio',
          ),
          if (portfolioState.holdings.isNotEmpty)
            PopupMenuButton<String>(
              icon: const Icon(Icons.more_vert, color: AppColors.textPrimary),
              onSelected: (value) {
                if (value == 'clear') {
                  _showClearPortfolioDialog();
                }
              },
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 'clear',
                  child: Row(
                    children: [
                      Icon(Icons.clear_all, color: AppColors.error),
                      SizedBox(width: 8),
                      Text('Clear Portfolio'),
                    ],
                  ),
                ),
              ],
            ),
        ],
      ),
      body: portfolioState.isLoading
          ? const LoadingWidget()
          : portfolioState.error != null
              ? CustomErrorWidget(
                  message: portfolioState.error!,
                  onRetry: () => ref.read(portfolioProvider.notifier).refreshPortfolio(),
                )
              : _buildPortfolioContent(portfolioState, portfolioSummary),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddHoldingDialog,
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildPortfolioContent(PortfolioState portfolioState, Map<String, dynamic> portfolioSummary) {
    if (portfolioState.holdings.isEmpty) {
      return _buildEmptyPortfolio();
    }

    return RefreshIndicator(
      onRefresh: () => ref.read(portfolioProvider.notifier).refreshPortfolio(),
      child: CustomScrollView(
        slivers: [
          // Portfolio summary header
          SliverToBoxAdapter(
            child: _buildPortfolioSummary(portfolioState),
          ),
          
          // Portfolio performance cards
          SliverToBoxAdapter(
            child: _buildPerformanceCards(portfolioSummary),
          ),
          
          // Holdings list
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final holding = portfolioState.holdings[index];
                return PortfolioHoldingCard(
                  holding: holding,
                  onTap: () => _navigateToAnalysis(holding.symbol),
                  onEdit: () => _showEditHoldingDialog(holding),
                  onRemove: () => _showRemoveHoldingDialog(holding.symbol),
                );
              },
              childCount: portfolioState.holdings.length,
            ),
          ),
          
          const SliverToBoxAdapter(
            child: SizedBox(height: 20),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyPortfolio() {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.account_balance_wallet,
            size: 80,
            color: AppColors.textSecondary,
          ),
          const SizedBox(height: 24),
          const Text(
            'Your Portfolio is Empty',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Start building your portfolio by adding your first stock holding.',
            style: TextStyle(
              fontSize: 16,
              color: AppColors.textSecondary,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          ElevatedButton.icon(
            onPressed: _showAddHoldingDialog,
            icon: const Icon(Icons.add),
            label: const Text('Add First Holding'),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPortfolioSummary(PortfolioState portfolioState) {
    final isPositive = portfolioState.totalReturnPercent >= 0;
    
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Portfolio Summary',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
            ),
            const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: _buildSummaryMetric(
                  'Total Value',
                  '\$${portfolioState.totalValue.toStringAsFixed(2)}',
                  AppColors.textPrimary,
                ),
              ),
              Expanded(
                child: _buildSummaryMetric(
                  'Total Return',
                  '\$${portfolioState.totalReturn.toStringAsFixed(2)}',
                  isPositive ? AppColors.success : AppColors.error,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: _buildSummaryMetric(
                  'Return %',
                  '${isPositive ? '+' : ''}${portfolioState.totalReturnPercent.toStringAsFixed(2)}%',
                  isPositive ? AppColors.success : AppColors.error,
                ),
              ),
              Expanded(
                child: _buildSummaryMetric(
                  'Holdings',
                  '${portfolioState.holdings.length}',
                  AppColors.textSecondary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPerformanceCards(Map<String, dynamic> portfolioSummary) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Performance',
            style: TextStyle(
              fontSize: 18,
                fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: _buildPerformanceCard(
                  'Top Gainers',
                  portfolioSummary['topGainers'] as List,
                  AppColors.success,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildPerformanceCard(
                  'Top Losers',
                  portfolioSummary['topLosers'] as List,
                  AppColors.error,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPerformanceCard(String title, List holdings, Color color) {
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
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: color,
              ),
            ),
            const SizedBox(height: 8),
          if (holdings.isEmpty)
            const Text(
              'None',
              style: TextStyle(
                fontSize: 12,
                color: AppColors.textSecondary,
              ),
            )
          else
            ...holdings.map((holding) => Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    holding.symbol,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textPrimary,
                    ),
                  ),
            Text(
                    '${holding.totalReturnPercent >= 0 ? '+' : ''}${holding.totalReturnPercent.toStringAsFixed(1)}%',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: color,
                    ),
                  ),
                ],
              ),
            )),
        ],
      ),
    );
  }

  Widget _buildSummaryMetric(String label, String value, Color color) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
      ],
    );
  }

  void _showAddHoldingDialog() async {
    final result = await showDialog<Map<String, dynamic>>(
      context: context,
      builder: (context) => const AddHoldingDialog(),
    );

    if (result != null) {
      await ref.read(portfolioProvider.notifier).addHolding(
        symbol: result['symbol'],
        shares: result['shares'],
        averagePrice: result['price'],
        companyName: result['companyName'],
        currentPrice: result['currentPrice'],
      );
    }
  }

  void _showEditHoldingDialog(dynamic holding) async {
    final result = await showDialog<Map<String, dynamic>>(
      context: context,
      builder: (context) => AddHoldingDialog(
        initialSymbol: holding.symbol,
      ),
    );

    if (result != null) {
      // Remove old holding and add new one
      await ref.read(portfolioProvider.notifier).removeHolding(holding.symbol);
      await ref.read(portfolioProvider.notifier).addHolding(
        symbol: result['symbol'],
        shares: result['shares'],
        averagePrice: result['price'],
        companyName: result['companyName'],
        currentPrice: result['currentPrice'],
      );
    }
  }

  void _showRemoveHoldingDialog(String symbol) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.surface,
        title: const Text('Remove Holding'),
        content: Text('Are you sure you want to remove $symbol from your portfolio?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              ref.read(portfolioProvider.notifier).removeHolding(symbol);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.error,
              foregroundColor: Colors.white,
            ),
            child: const Text('Remove'),
            ),
          ],
        ),
    );
  }

  void _showClearPortfolioDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.surface,
        title: const Text('Clear Portfolio'),
        content: const Text('Are you sure you want to clear your entire portfolio? This action cannot be undone.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              ref.read(portfolioProvider.notifier).clearPortfolio();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.error,
              foregroundColor: Colors.white,
            ),
            child: const Text('Clear All'),
          ),
        ],
      ),
    );
  }

  void _navigateToAnalysis(String symbol) {
    context.go('/analysis/$symbol');
  }
} 