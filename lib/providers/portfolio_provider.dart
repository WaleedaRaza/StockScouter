import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import '../models/user_model.dart';
import '../services/universal_analysis_service.dart';

// Portfolio State
class PortfolioState {
  final List<PortfolioHolding> holdings;
  final double totalValue;
  final double totalReturn;
  final double totalReturnPercent;
  final double dailyReturn;
  final double dailyReturnPercent;
  final bool isLoading;
  final String? error;

  const PortfolioState({
    this.holdings = const [],
    this.totalValue = 0.0,
    this.totalReturn = 0.0,
    this.totalReturnPercent = 0.0,
    this.dailyReturn = 0.0,
    this.dailyReturnPercent = 0.0,
    this.isLoading = false,
    this.error,
  });

  PortfolioState copyWith({
    List<PortfolioHolding>? holdings,
    double? totalValue,
    double? totalReturn,
    double? totalReturnPercent,
    double? dailyReturn,
    double? dailyReturnPercent,
    bool? isLoading,
    String? error,
  }) {
    return PortfolioState(
      holdings: holdings ?? this.holdings,
      totalValue: totalValue ?? this.totalValue,
      totalReturn: totalReturn ?? this.totalReturn,
      totalReturnPercent: totalReturnPercent ?? this.totalReturnPercent,
      dailyReturn: dailyReturn ?? this.dailyReturn,
      dailyReturnPercent: dailyReturnPercent ?? this.dailyReturnPercent,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }
}

// Portfolio Notifier
class PortfolioNotifier extends StateNotifier<PortfolioState> {
  final UniversalAnalysisService _analysisService;
  static const String _storageKey = 'portfolio_holdings';

  PortfolioNotifier(this._analysisService) : super(const PortfolioState()) {
    _loadPortfolio();
  }

  // Load portfolio from local storage
  Future<void> _loadPortfolio() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final holdingsJson = prefs.getString(_storageKey);
      
      if (holdingsJson != null) {
        final List<dynamic> holdingsList = json.decode(holdingsJson);
        final holdings = holdingsList
            .map((json) => PortfolioHolding.fromJson(json))
            .toList();
        
        state = state.copyWith(holdings: holdings);
        await _updatePortfolioMetrics();
      }
    } catch (e) {
      state = state.copyWith(error: 'Failed to load portfolio: $e');
    }
  }

  // Save portfolio to local storage
  Future<void> _savePortfolio() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final holdingsJson = json.encode(
        state.holdings.map((holding) => holding.toJson()).toList(),
      );
      await prefs.setString(_storageKey, holdingsJson);
    } catch (e) {
      state = state.copyWith(error: 'Failed to save portfolio: $e');
    }
  }

  // Add a new holding to portfolio
  Future<void> addHolding({
    required String symbol,
    required double shares,
    required double averagePrice,
    String? companyName,
    double? currentPrice,
  }) async {
    try {
      state = state.copyWith(isLoading: true, error: null);

      // Check if holding already exists
      final existingIndex = state.holdings.indexWhere(
        (holding) => holding.symbol.toUpperCase() == symbol.toUpperCase(),
      );

      if (existingIndex != -1) {
        // Update existing holding
        final existing = state.holdings[existingIndex];
        final totalShares = existing.shares + shares;
        final newAveragePrice = totalShares > 0 
            ? ((existing.shares * existing.averagePrice) + (shares * averagePrice)) / totalShares
            : 0.0;

        // Ensure no NaN values
        final safeTotalShares = totalShares.isNaN ? existing.shares : totalShares;
        final safeNewAveragePrice = newAveragePrice.isNaN ? existing.averagePrice : newAveragePrice;

        final updatedHolding = existing.copyWith(
          shares: safeTotalShares,
          averagePrice: safeNewAveragePrice,
          lastPurchase: DateTime.now(),
        );

        final updatedHoldings = List<PortfolioHolding>.from(state.holdings);
        updatedHoldings[existingIndex] = updatedHolding;

        state = state.copyWith(holdings: updatedHoldings);
      } else {
        // Add new holding
        final finalCurrentPrice = currentPrice ?? averagePrice;
        final marketValue = shares * finalCurrentPrice;
        
        // Ensure no NaN values
        final safeShares = shares.isNaN ? 0.0 : shares;
        final safeAveragePrice = averagePrice.isNaN ? 0.0 : averagePrice;
        final safeCurrentPrice = finalCurrentPrice.isNaN ? 0.0 : finalCurrentPrice;
        final safeMarketValue = marketValue.isNaN ? 0.0 : marketValue;
        
        final newHolding = PortfolioHolding(
          symbol: symbol.toUpperCase(),
          shares: safeShares,
          averagePrice: safeAveragePrice,
          currentPrice: safeCurrentPrice,
          marketValue: safeMarketValue,
          totalReturn: 0.0,
          totalReturnPercent: 0.0,
          firstPurchase: DateTime.now(),
          lastPurchase: DateTime.now(),
          companyName: companyName,
        );

        final updatedHoldings = [...state.holdings, newHolding];
        state = state.copyWith(holdings: updatedHoldings);
      }

      await _savePortfolio();
      await _updatePortfolioMetrics();
    } catch (e) {
      state = state.copyWith(error: 'Failed to add holding: $e');
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  // Remove a holding from portfolio
  Future<void> removeHolding(String symbol) async {
    try {
      state = state.copyWith(isLoading: true, error: null);

      final updatedHoldings = state.holdings
          .where((holding) => holding.symbol.toUpperCase() != symbol.toUpperCase())
          .toList();

      state = state.copyWith(holdings: updatedHoldings);
      await _savePortfolio();
      await _updatePortfolioMetrics();
    } catch (e) {
      state = state.copyWith(error: 'Failed to remove holding: $e');
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  // Update holding shares
  Future<void> updateHoldingShares({
    required String symbol,
    required double newShares,
  }) async {
    try {
      state = state.copyWith(isLoading: true, error: null);

      final updatedHoldings = state.holdings.map((holding) {
        if (holding.symbol.toUpperCase() == symbol.toUpperCase()) {
          return holding.copyWith(
            shares: newShares,
            marketValue: newShares * holding.currentPrice,
            lastPurchase: DateTime.now(),
          );
        }
        return holding;
      }).toList();

      state = state.copyWith(holdings: updatedHoldings);
      await _savePortfolio();
      await _updatePortfolioMetrics();
    } catch (e) {
      state = state.copyWith(error: 'Failed to update holding: $e');
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  // Update portfolio metrics with live data
  Future<void> _updatePortfolioMetrics() async {
    try {
      if (state.holdings.isEmpty) {
        state = state.copyWith(
          totalValue: 0.0,
          totalReturn: 0.0,
          totalReturnPercent: 0.0,
          dailyReturn: 0.0,
          dailyReturnPercent: 0.0,
        );
        return;
      }

      final updatedHoldings = <PortfolioHolding>[];
      double totalValue = 0.0;
      double totalCost = 0.0;

      for (final holding in state.holdings) {
        try {
          // Get current price from analysis service
          final analysis = await _analysisService.getComprehensiveAnalysis(holding.symbol);
          final quote = analysis['quote'] as Map<String, dynamic>? ?? {};
          final currentPrice = quote['currentPrice']?.toDouble() ?? holding.currentPrice;

          final marketValue = holding.shares * currentPrice;
          final totalReturn = marketValue - (holding.shares * holding.averagePrice);
          final totalReturnPercent = (holding.averagePrice > 0 && holding.shares > 0) 
              ? (totalReturn / (holding.shares * holding.averagePrice)) * 100 
              : 0.0;

          // Ensure no NaN values
          final safeMarketValue = marketValue.isNaN ? 0.0 : marketValue;
          final safeTotalReturn = totalReturn.isNaN ? 0.0 : totalReturn;
          final safeTotalReturnPercent = totalReturnPercent.isNaN ? 0.0 : totalReturnPercent;
          final safeCurrentPrice = currentPrice.isNaN ? holding.currentPrice : currentPrice;

          final updatedHolding = holding.copyWith(
            currentPrice: safeCurrentPrice,
            marketValue: safeMarketValue,
            totalReturn: safeTotalReturn,
            totalReturnPercent: safeTotalReturnPercent,
          );

          updatedHoldings.add(updatedHolding);
          totalValue += marketValue;
          totalCost += holding.shares * holding.averagePrice;
        } catch (e) {
          // If we can't get current price, use existing data
          updatedHoldings.add(holding);
          totalValue += holding.marketValue;
          totalCost += holding.shares * holding.averagePrice;
        }
      }

      final totalReturn = totalValue - totalCost;
      final totalReturnPercent = totalCost > 0 ? (totalReturn / totalCost) * 100 : 0.0;

      // Ensure no NaN values in portfolio totals
      final safeTotalValue = totalValue.isNaN ? 0.0 : totalValue;
      final safeTotalReturn = totalReturn.isNaN ? 0.0 : totalReturn;
      final safeTotalReturnPercent = totalReturnPercent.isNaN ? 0.0 : totalReturnPercent;

      state = state.copyWith(
        holdings: updatedHoldings,
        totalValue: safeTotalValue,
        totalReturn: safeTotalReturn,
        totalReturnPercent: safeTotalReturnPercent,
        // Daily return calculation would require historical data
        dailyReturn: 0.0,
        dailyReturnPercent: 0.0,
      );

      await _savePortfolio();
    } catch (e) {
      state = state.copyWith(error: 'Failed to update metrics: $e');
    }
  }

  // Refresh portfolio data
  Future<void> refreshPortfolio() async {
    await _updatePortfolioMetrics();
  }

  // Clear portfolio
  Future<void> clearPortfolio() async {
    try {
      state = state.copyWith(isLoading: true, error: null);
      
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_storageKey);
      
      state = const PortfolioState();
    } catch (e) {
      state = state.copyWith(error: 'Failed to clear portfolio: $e');
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  // Get holding by symbol
  PortfolioHolding? getHolding(String symbol) {
    try {
      return state.holdings.firstWhere(
        (holding) => holding.symbol.toUpperCase() == symbol.toUpperCase(),
      );
    } catch (e) {
      return null;
    }
  }

  // Check if symbol is in portfolio
  bool hasHolding(String symbol) {
    return state.holdings.any(
      (holding) => holding.symbol.toUpperCase() == symbol.toUpperCase(),
    );
  }
}

// Providers
final portfolioProvider = StateNotifierProvider<PortfolioNotifier, PortfolioState>((ref) {
  final analysisService = UniversalAnalysisService();
  return PortfolioNotifier(analysisService);
});

// Individual holding provider
final holdingProvider = Provider.family<PortfolioHolding?, String>((ref, symbol) {
  final portfolio = ref.watch(portfolioProvider);
  return portfolio.holdings.firstWhere(
    (holding) => holding.symbol.toUpperCase() == symbol.toUpperCase(),
    orElse: () => throw Exception('Holding not found'),
  );
});

// Portfolio summary provider
final portfolioSummaryProvider = Provider<Map<String, dynamic>>((ref) {
  final portfolio = ref.watch(portfolioProvider);
  
  if (portfolio.holdings.isEmpty) {
    return {
      'totalHoldings': 0,
      'topGainers': <PortfolioHolding>[],
      'topLosers': <PortfolioHolding>[],
      'largestPositions': <PortfolioHolding>[],
    };
  }

  final sortedByReturn = List<PortfolioHolding>.from(portfolio.holdings)
    ..sort((a, b) => b.totalReturnPercent.compareTo(a.totalReturnPercent));

  final sortedByValue = List<PortfolioHolding>.from(portfolio.holdings)
    ..sort((a, b) => b.marketValue.compareTo(a.marketValue));

  return {
    'totalHoldings': portfolio.holdings.length,
    'topGainers': sortedByReturn.take(3).toList(),
    'topLosers': sortedByReturn.reversed.take(3).toList(),
    'largestPositions': sortedByValue.take(3).toList(),
  };
}); 