import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/stock.dart';
import '../services/finnhub_service.dart';
import '../constants/api_constants.dart';

// Provider for the Finnhub service
final finnhubServiceProvider = Provider<FinnhubService>((ref) {
  return FinnhubService();
});

// Provider for popular stocks data (now using Finnhub)
final popularStocksProvider = FutureProvider<List<Stock>>((ref) async {
  final service = ref.read(finnhubServiceProvider);
  final stocksToLoad = ref.watch(stocksToLoadProvider);
  
  // With Finnhub's 60 requests/minute, we can fetch more stocks
  final initialStocks = ApiConstants.popularStocks.take(stocksToLoad).toList();
  
  try {
    final stocks = await service.getMultipleStockQuotes(initialStocks);
    return stocks;
  } catch (e) {
    print('Error fetching popular stocks: $e');
    return [];
  }
});

// Provider for stock search results (using Finnhub)
final stockSearchProvider = FutureProvider.family<List<Stock>, String>((ref, query) async {
  if (query.isEmpty) return [];
  
  final service = ref.read(finnhubServiceProvider);
  
  try {
    final searchResults = await service.searchStocks(query);
    
    // For each search result, fetch the actual quote data
    final List<Stock> stocksWithQuotes = [];
    for (final stock in searchResults.take(10)) { // Increased from 5 to 10
      final quote = await service.getStockQuote(stock.symbol);
      if (quote != null) {
        stocksWithQuotes.add(quote);
      }
      // Small delay between requests
      await Future.delayed(const Duration(seconds: 1));
    }
    
    return stocksWithQuotes;
  } catch (e) {
    print('Error searching stocks: $e');
    return [];
  }
});

// Provider for individual stock quote (using Finnhub)
final stockQuoteProvider = FutureProvider.family<Stock?, String>((ref, symbol) async {
  final service = ref.read(finnhubServiceProvider);
  
  try {
    return await service.getStockQuote(symbol);
  } catch (e) {
    print('Error fetching stock quote for $symbol: $e');
    return null;
  }
});

// State provider for market data loading state
final marketLoadingProvider = StateProvider<bool>((ref) => false);

// State provider for market data error state
final marketErrorProvider = StateProvider<String?>((ref) => null);

// State provider to track how many stocks to load
final stocksToLoadProvider = StateProvider<int>((ref) => 15);

// Provider for loading more stocks
final loadMoreStocksProvider = FutureProvider.family<List<Stock>, int>((ref, count) async {
  final service = ref.read(finnhubServiceProvider);
  
  // Get the next batch of stocks
  final allStocks = ApiConstants.popularStocks;
  final startIndex = count;
  final endIndex = (startIndex + 10).clamp(0, allStocks.length);
  final nextBatch = allStocks.sublist(startIndex, endIndex);
  
  try {
    final stocks = await service.getMultipleStockQuotes(nextBatch);
    return stocks;
  } catch (e) {
    print('Error loading more stocks: $e');
    return [];
  }
}); 