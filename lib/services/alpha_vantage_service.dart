import 'dart:convert';
import 'package:http/http.dart' as http;
import '../constants/api_constants.dart';
import '../models/stock.dart';

class AlphaVantageService {
  static final AlphaVantageService _instance = AlphaVantageService._internal();
  factory AlphaVantageService() => _instance;
  AlphaVantageService._internal();

  final http.Client _client = http.Client();

  /// Fetch real-time quote for a single stock
  Future<Stock?> getStockQuote(String symbol) async {
    try {
      final url = Uri.parse('${ApiConstants.alphaVantageBaseUrl}?function=${ApiConstants.stockQuoteEndpoint}&symbol=$symbol&apikey=${ApiConstants.alphaVantageApiKey}');
      
      final response = await _client.get(url).timeout(ApiConstants.requestTimeout);
      
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        
        // Check for API error messages
        if (data.containsKey('Error Message')) {
          print('API Error: ${data['Error Message']}');
          return null;
        }
        
        if (data.containsKey('Note')) {
          print('API Rate Limit: ${data['Note']}');
          return null;
        }
        
        final quote = data['Global Quote'];
        if (quote != null) {
          return Stock(
            symbol: quote['01. symbol'] ?? symbol,
            name: quote['01. symbol'] ?? symbol, // Alpha Vantage doesn't provide company name in quote
            price: double.tryParse(quote['05. price'] ?? '0') ?? 0.0,
            change: double.tryParse(quote['09. change'] ?? '0') ?? 0.0,
            changePercent: double.tryParse(quote['10. change percent']?.replaceAll('%', '') ?? '0') ?? 0.0,
            volume: int.tryParse(quote['06. volume'] ?? '0') ?? 0,
            marketCap: 0.0, // Not provided in quote endpoint
            high: double.tryParse(quote['03. high'] ?? '0') ?? 0.0,
            low: double.tryParse(quote['04. low'] ?? '0') ?? 0.0,
            open: double.tryParse(quote['02. open'] ?? '0') ?? 0.0,
            previousClose: double.tryParse(quote['08. previous close'] ?? '0') ?? 0.0,
          );
        }
      }
    } catch (e) {
      print('Error fetching stock quote for $symbol: $e');
    }
    return null;
  }

  /// Fetch quotes for multiple stocks (with rate limiting)
  Future<List<Stock>> getMultipleStockQuotes(List<String> symbols) async {
    final List<Stock> stocks = [];
    
    for (int i = 0; i < symbols.length; i++) {
      final stock = await getStockQuote(symbols[i]);
      if (stock != null) {
        stocks.add(stock);
      }
      
      // Rate limiting: wait 12 seconds between requests (5 calls per minute = 12 seconds per call)
      if (i < symbols.length - 1) {
        await Future.delayed(const Duration(seconds: 12));
      }
    }
    
    return stocks;
  }

  /// Search for stocks by keyword
  Future<List<Stock>> searchStocks(String keyword) async {
    try {
      final url = Uri.parse('${ApiConstants.alphaVantageBaseUrl}?function=${ApiConstants.stockSearchEndpoint}&keywords=$keyword&apikey=${ApiConstants.alphaVantageApiKey}');
      
      final response = await _client.get(url).timeout(ApiConstants.requestTimeout);
      
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        
        if (data.containsKey('Error Message') || data.containsKey('Note')) {
          return [];
        }
        
        final matches = data['bestMatches'] as List?;
        if (matches != null) {
          final List<Stock> stocks = [];
          for (final match in matches.take(10)) { // Limit to 10 results
            stocks.add(Stock(
              symbol: match['1. symbol'] ?? '',
              name: match['2. name'] ?? '',
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

  void dispose() {
    _client.close();
  }
} 