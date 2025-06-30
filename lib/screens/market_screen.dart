import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import '../providers/market_provider.dart';
import '../models/stock.dart';
import '../widgets/loading_widget.dart';
import '../widgets/error_widget.dart' as custom_error;
import '../constants/api_constants.dart';

class MarketScreen extends ConsumerStatefulWidget {
  const MarketScreen({super.key});

  @override
  ConsumerState<MarketScreen> createState() => _MarketScreenState();
}

class _MarketScreenState extends ConsumerState<MarketScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  late TextEditingController _searchController;
  String _searchQuery = '';
  MarketTab _currentTab = MarketTab.stocks;
  MarketFilter _currentFilter = MarketFilter.all;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _searchController = TextEditingController();

    _tabController.addListener(() {
      setState(() {
        _currentTab = _tabController.index == 0 ? MarketTab.stocks : MarketTab.crypto;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      body: Column(
        children: [
          // App Bar
          Container(
            padding: const EdgeInsets.fromLTRB(16, 60, 16, 16),
            decoration: BoxDecoration(
              color: theme.colorScheme.surface,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: theme.colorScheme.onSurface,
                      ),
                      onPressed: () => context.pop(),
                    ),
                    Expanded(
                      child: Text(
                        'Market',
                        style: theme.textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.refresh,
                        color: theme.colorScheme.onSurface,
                      ),
                      onPressed: () {
                        // Refresh market data
                        ref.invalidate(popularStocksProvider);
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                // Search Bar
                Container(
                  decoration: BoxDecoration(
                    color: theme.colorScheme.surface,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: theme.colorScheme.outline.withOpacity(0.2),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _searchController,
                          decoration: InputDecoration(
                            hintText: 'Search stocks, crypto, or companies...',
                            hintStyle: TextStyle(
                              color: theme.colorScheme.onSurfaceVariant.withOpacity(0.6),
                            ),
                            prefixIcon: Icon(
                              Icons.search,
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
                          ),
                          onChanged: (query) {
                            setState(() {
                              _searchQuery = query;
                            });
                          },
                          onSubmitted: (query) {
                            setState(() {
                              _searchQuery = query;
                            });
                          },
                        ),
                      ),
                      if (_searchQuery.isNotEmpty)
                        IconButton(
                          icon: Icon(
                            Icons.clear,
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                          onPressed: () {
                            _searchController.clear();
                            setState(() {
                              _searchQuery = '';
                            });
                          },
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Market Indices
          Container(
            height: 100,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: _buildMarketIndices(theme),
          ),

          // Filter Chips
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                _buildFilterChip(theme, 'All', MarketFilter.all),
                const SizedBox(width: 8),
                _buildFilterChip(theme, 'Gainers', MarketFilter.gainers),
                const SizedBox(width: 8),
                _buildFilterChip(theme, 'Losers', MarketFilter.losers),
                const SizedBox(width: 8),
                _buildFilterChip(theme, 'Volume', MarketFilter.volume),
              ],
            ),
          ),

          // Tab Bar
          Container(
            color: theme.colorScheme.surface,
            child: TabBar(
              controller: _tabController,
              labelColor: theme.colorScheme.primary,
              unselectedLabelColor: theme.colorScheme.onSurfaceVariant,
              indicatorColor: theme.colorScheme.primary,
              tabs: const [
                Tab(text: 'Stocks'),
                Tab(text: 'Crypto'),
              ],
            ),
          ),

          // Tab Content
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildStocksTab(theme),
                _buildCryptoTab(theme),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMarketIndices(ThemeData theme) {
    final indices = [
      MarketIndex('S&P 500', 4567.89, 1.2, true),
      MarketIndex('NASDAQ', 14234.56, 0.8, true),
      MarketIndex('DOW', 35678.90, -0.3, false),
    ];

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: indices.length,
      itemBuilder: (context, index) {
        final indexData = indices[index];
        return Container(
          width: 120,
          margin: const EdgeInsets.only(right: 12),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: theme.colorScheme.outline.withOpacity(0.1),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                indexData.name,
                style: theme.textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w500,
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                indexData.value.toStringAsFixed(2),
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Icon(
                    indexData.isPositive ? Icons.trending_up : Icons.trending_down,
                    size: 12,
                    color: indexData.isPositive ? Colors.green : Colors.red,
                  ),
                  const SizedBox(width: 2),
                  Text(
                    '${indexData.isPositive ? '+' : ''}${indexData.change.toStringAsFixed(1)}%',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: indexData.isPositive ? Colors.green : Colors.red,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildFilterChip(ThemeData theme, String label, MarketFilter filter) {
    final isSelected = _currentFilter == filter;
    
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentFilter = filter;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected
              ? theme.colorScheme.primary
              : theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected
                ? theme.colorScheme.primary
                : theme.colorScheme.outline.withOpacity(0.2),
          ),
        ),
        child: Text(
          label,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: isSelected
                ? theme.colorScheme.onPrimary
                : theme.colorScheme.onSurface,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget _buildStocksTab(ThemeData theme) {
    // Only show search results when user searches
    final searchQuery = _searchQuery.trim();
    
    if (searchQuery.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.search,
              size: 64,
              color: theme.colorScheme.onSurfaceVariant,
            ),
            const SizedBox(height: 16),
            Text(
              'Search for a Stock',
              style: theme.textTheme.headlineSmall?.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Enter a ticker symbol to analyze',
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: theme.colorScheme.surface,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: theme.colorScheme.outline.withOpacity(0.2),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    'Popular Analysis Tools',
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 12),
                  _buildAnalysisToolCard(
                    theme,
                    'Technical Analysis',
                    'RSI, MACD, Moving Averages',
                    Icons.trending_up,
                    () {
                      // Navigate to analysis screen
                      context.go('/analysis');
                    },
                  ),
                  const SizedBox(height: 8),
                  _buildAnalysisToolCard(
                    theme,
                    'Portfolio Analysis',
                    'Risk assessment & optimization',
                    Icons.analytics,
                    () {
                      // Navigate to portfolio screen
                      context.go('/portfolio');
                    },
                  ),
                  const SizedBox(height: 8),
                  _buildAnalysisToolCard(
                    theme,
                    'News Sentiment',
                    'AI-powered news analysis',
                    Icons.article,
                    () {
                      // Navigate to news screen
                      context.go('/news');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    // Show search results when user searches
    final searchResultsAsync = ref.watch(stockSearchProvider(searchQuery));
    
    return searchResultsAsync.when(
      data: (stocks) {
        if (stocks.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.search_off,
                  size: 64,
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                const SizedBox(height: 16),
                Text(
                  'No stocks found',
                  style: theme.textTheme.titleLarge?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Try a different search term',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          );
        }

        final filteredStocks = _filterRealStocks(stocks);

        return ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: filteredStocks.length,
          itemBuilder: (context, index) {
            final stock = filteredStocks[index];
            return _buildSearchResultCard(theme, stock);
          },
        );
      },
      loading: () => const Center(
        child: LoadingWidget(),
      ),
      error: (error, stack) => Center(
        child: custom_error.CustomErrorWidget(
          message: 'Failed to search stocks: $error',
          onRetry: () {
            ref.invalidate(stockSearchProvider(searchQuery));
          },
        ),
      ),
    );
  }

  Widget _buildAnalysisToolCard(
    ThemeData theme,
    String title,
    String description,
    IconData icon,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: theme.colorScheme.surfaceVariant.withOpacity(0.3),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: theme.colorScheme.outline.withOpacity(0.1),
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: theme.colorScheme.primary,
              size: 24,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    description,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: theme.colorScheme.onSurfaceVariant,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchResultCard(ThemeData theme, Stock stock) {
    final isPositive = stock.changePercent >= 0;
    
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: theme.colorScheme.outline.withOpacity(0.1),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  Icons.business,
                  color: theme.colorScheme.primary,
                  size: 20,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      stock.symbol,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      stock.name,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '\$${stock.price.toStringAsFixed(2)}',
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        isPositive ? Icons.trending_up : Icons.trending_down,
                        size: 16,
                        color: isPositive ? Colors.green : Colors.red,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '${isPositive ? '+' : ''}${stock.changePercent.toStringAsFixed(2)}%',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: isPositive ? Colors.green : Colors.red,
                          fontWeight: FontWeight.w500,
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
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: () {
                    // Open Yahoo Finance
                    _openYahooFinance(stock.symbol);
                  },
                  icon: const Icon(Icons.open_in_new, size: 16),
                  label: const Text('Yahoo Finance'),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Navigate to detailed analysis
                    _openStockAnalysis(stock);
                  },
                  icon: const Icon(Icons.analytics, size: 16),
                  label: const Text('Analyze'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _openYahooFinance(String symbol) async {
    final url = 'https://finance.yahoo.com/quote/$symbol';
    final uri = Uri.parse(url);
    
    try {
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      } else {
        print('Could not launch $url');
      }
    } catch (e) {
      print('Error launching Yahoo Finance: $e');
    }
  }

  void _openStockAnalysis(Stock stock) {
    // TODO: Navigate to detailed analysis screen with stock data
    print('Opening analysis for ${stock.symbol}');
  }

  Widget _buildCryptoTab(ThemeData theme) {
    // Only show search results when user searches
    final searchQuery = _searchQuery.trim();
    
    if (searchQuery.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.currency_bitcoin,
              size: 64,
              color: theme.colorScheme.onSurfaceVariant,
            ),
            const SizedBox(height: 16),
            Text(
              'Search for Cryptocurrency',
              style: theme.textTheme.headlineSmall?.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Enter a crypto symbol to analyze',
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: theme.colorScheme.surface,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: theme.colorScheme.outline.withOpacity(0.2),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    'Crypto Analysis Tools',
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 12),
                  _buildAnalysisToolCard(
                    theme,
                    'Technical Analysis',
                    'RSI, MACD, Moving Averages',
                    Icons.trending_up,
                    () {
                      // Navigate to analysis screen
                      context.go('/analysis');
                    },
                  ),
                  const SizedBox(height: 8),
                  _buildAnalysisToolCard(
                    theme,
                    'Market Sentiment',
                    'Social media & news analysis',
                    Icons.psychology,
                    () {
                      // Navigate to news screen
                      context.go('/news');
                    },
                  ),
                  const SizedBox(height: 8),
                  _buildAnalysisToolCard(
                    theme,
                    'Portfolio Tracking',
                    'Track your crypto holdings',
                    Icons.account_balance_wallet,
                    () {
                      // Navigate to portfolio screen
                      context.go('/portfolio');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    // For now, show a placeholder since we haven't implemented crypto search yet
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.search_off,
            size: 64,
            color: theme.colorScheme.onSurfaceVariant,
          ),
          const SizedBox(height: 16),
          Text(
            'Crypto Search Coming Soon',
            style: theme.textTheme.titleLarge?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'We\'re working on crypto analysis features',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }

  List<Stock> _filterRealStocks(List<Stock> stocks) {
    List<Stock> filtered = stocks;

    // Apply search filter
    if (_searchQuery.isNotEmpty) {
      filtered = filtered.where((stock) {
        return stock.symbol.toLowerCase().contains(_searchQuery.toLowerCase()) ||
               stock.name.toLowerCase().contains(_searchQuery.toLowerCase());
      }).toList();
    }

    // Apply market filter
    switch (_currentFilter) {
      case MarketFilter.gainers:
        filtered = filtered.where((stock) => stock.changePercent > 0).toList();
        break;
      case MarketFilter.losers:
        filtered = filtered.where((stock) => stock.changePercent < 0).toList();
        break;
      case MarketFilter.volume:
        // Sort by volume (highest first)
        filtered.sort((a, b) => b.volume.compareTo(a.volume));
        break;
      case MarketFilter.all:
      default:
        break;
    }

    return filtered;
  }

  List<CryptoData> _filterCryptos(List<CryptoData> cryptos) {
    List<CryptoData> filtered = cryptos;

    // Apply search filter
    if (_searchQuery.isNotEmpty) {
      filtered = filtered.where((crypto) {
        return crypto.symbol.toLowerCase().contains(_searchQuery.toLowerCase()) ||
               crypto.name.toLowerCase().contains(_searchQuery.toLowerCase());
      }).toList();
    }

    // Apply market filter
    switch (_currentFilter) {
      case MarketFilter.gainers:
        filtered = filtered.where((crypto) => crypto.isPositive).toList();
        break;
      case MarketFilter.losers:
        filtered = filtered.where((crypto) => !crypto.isPositive).toList();
        break;
      case MarketFilter.volume:
        // In a real app, this would filter by volume
        break;
      case MarketFilter.all:
      default:
        break;
    }

    return filtered;
  }

  Widget _buildCryptoCard(ThemeData theme, CryptoData crypto) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: theme.colorScheme.outline.withOpacity(0.1),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: theme.colorScheme.secondary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              Icons.currency_bitcoin,
              color: theme.colorScheme.secondary,
              size: 20,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  crypto.symbol,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  crypto.name,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '\$${crypto.price.toStringAsFixed(2)}',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Icon(
                    crypto.isPositive ? Icons.trending_up : Icons.trending_down,
                    size: 16,
                    color: crypto.isPositive ? Colors.green : Colors.red,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '${crypto.isPositive ? '+' : ''}${crypto.change.toStringAsFixed(2)}%',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: crypto.isPositive ? Colors.green : Colors.red,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

enum MarketTab { stocks, crypto }

enum MarketFilter { all, gainers, losers, volume }

class MarketIndex {
  final String name;
  final double value;
  final double change;
  final bool isPositive;

  MarketIndex(this.name, this.value, this.change, this.isPositive);
}

class StockData {
  final String symbol;
  final String name;
  final double price;
  final double change;
  final bool isPositive;

  StockData(this.symbol, this.name, this.price, this.change, this.isPositive);
}

class CryptoData {
  final String symbol;
  final String name;
  final double price;
  final double change;
  final bool isPositive;

  CryptoData(this.symbol, this.name, this.price, this.change, this.isPositive);
} 