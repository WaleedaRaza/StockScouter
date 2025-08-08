import 'dart:convert';
import 'package:http/http.dart' as http;
import '../constants/api_constants.dart';
import '../models/stock.dart';

class FinnhubService {
  static final FinnhubService _instance = FinnhubService._internal();
  factory FinnhubService() => _instance;
  FinnhubService._internal();

  final http.Client _client = http.Client();

  /// Fetch real-time quote for a single stock
  Future<Stock?> getStockQuote(String symbol) async {
    try {
      final url = Uri.parse('${ApiConstants.finnhubBaseUrl}${ApiConstants.finnhubQuoteEndpoint}?symbol=$symbol&token=${ApiConstants.finnhubApiKey}');
      
      final response = await _client.get(url).timeout(ApiConstants.requestTimeout);
      
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        
        // Check for API error messages
        if (data.containsKey('error')) {
          print('Finnhub API Error: ${data['error']}');
          return null;
        }
        
        // Finnhub returns different data structure
        if (data['c'] != null) { // current price
          final currentPrice = data['c']?.toDouble() ?? 0.0;
          final previousClose = data['pc']?.toDouble() ?? 0.0;
          final change = currentPrice - previousClose;
          final changePercent = previousClose > 0 ? (change / previousClose) * 100 : 0.0;
          
          return Stock(
            symbol: symbol,
            name: symbol, // We'll get company name separately if needed
            price: currentPrice,
            change: change,
            changePercent: changePercent,
            volume: data['v']?.toInt() ?? 0,
            marketCap: 0.0, // Not provided in quote endpoint
            high: data['h']?.toDouble() ?? 0.0,
            low: data['l']?.toDouble() ?? 0.0,
            open: data['o']?.toDouble() ?? 0.0,
            previousClose: previousClose,
          );
        }
      }
    } catch (e) {
      print('Error fetching stock quote for $symbol: $e');
    }
    return null;
  }

  /// Fetch quotes for multiple stocks (much faster than Alpha Vantage)
  Future<List<Stock>> getMultipleStockQuotes(List<String> symbols) async {
    final List<Stock> stocks = [];
    
    // With Finnhub's 60 requests/minute limit, we can fetch more stocks faster
    for (int i = 0; i < symbols.length; i++) {
      final stock = await getStockQuote(symbols[i]);
      if (stock != null) {
        stocks.add(stock);
      }
      
      // Small delay between requests (1 second instead of 12 for Alpha Vantage)
      if (i < symbols.length - 1) {
        await Future.delayed(const Duration(seconds: 1));
      }
    }
    
    return stocks;
  }

  /// Search for stocks by keyword
  Future<List<Stock>> searchStocks(String keyword) async {
    try {
      final url = Uri.parse('${ApiConstants.finnhubBaseUrl}${ApiConstants.finnhubSymbolSearchEndpoint}?q=$keyword&token=${ApiConstants.finnhubApiKey}');
      
      final response = await _client.get(url).timeout(ApiConstants.requestTimeout);
      
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        
        if (data.containsKey('error')) {
          return [];
        }
        
        final matches = data['result'] as List?;
        if (matches != null) {
          final List<Stock> stocks = [];
          for (final match in matches.take(10)) { // Limit to 10 results
            stocks.add(Stock(
              symbol: match['symbol'] ?? '',
              name: match['description'] ?? '',
              price: 0.0, // Search doesn't provide price
              change: 0.0,
              changePercent: 0.0,
              volume: 0,
              marketCap: 0.0,
              high: 0.0,
              low: 0.0,
              open: 0.0,
              previousClose: 0.0,
            ));
          }
          return stocks;
        }
      }
    } catch (e) {
      print('Error searching stocks: $e');
    }
    return [];
  }

  /// Get company profile (name, sector, etc.)
  Future<Map<String, dynamic>?> getCompanyProfile(String symbol) async {
    try {
      final url = Uri.parse('${ApiConstants.finnhubBaseUrl}${ApiConstants.finnhubCompanyProfileEndpoint}?symbol=$symbol&token=${ApiConstants.finnhubApiKey}');
      
      final response = await _client.get(url).timeout(ApiConstants.requestTimeout);
      
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        
        if (data.containsKey('error')) {
          return null;
        }
        
        return data;
      }
    } catch (e) {
      print('Error fetching company profile for $symbol: $e');
    }
    return null;
  }

  void dispose() {
    _client.close();
  }
} 