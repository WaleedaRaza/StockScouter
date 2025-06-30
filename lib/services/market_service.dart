import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import '../models/stock_model.dart';
import '../models/crypto_model.dart';
import '../constants/app_constants.dart';
import '../constants/api_constants.dart';
import '../models/price_point.dart';
import '../models/stock.dart';

part 'market_service.g.dart';

@RestApi(baseUrl: AppConstants.baseUrl)
abstract class MarketService {
  factory MarketService(Dio dio, {String baseUrl}) = _MarketService;

  // Stock Market Data
  @GET('/stock/quote/{symbol}')
  Future<Stock> getStockQuote(@Path('symbol') String symbol);

  @GET('/stock/history/{symbol}')
  Future<List<PricePoint>> getStockHistory(
    @Path('symbol') String symbol,
    @Query('interval') String interval,
    @Query('period') String period,
  );

  @GET('/stock/search')
  Future<List<Stock>> searchStocks(@Query('query') String query);

  @GET('/stock/top-gainers')
  Future<List<Stock>> getTopGainers();

  @GET('/stock/top-losers')
  Future<List<Stock>> getTopLosers();

  @GET('/stock/most-active')
  Future<List<Stock>> getMostActive();

  @GET('/stock/unusual-volume')
  Future<List<Stock>> getUnusualVolume();

  // Crypto Market Data
  @GET('/crypto/quote/{symbol}')
  Future<Crypto> getCryptoQuote(@Path('symbol') String symbol);

  @GET('/crypto/history/{symbol}')
  Future<List<PricePoint>> getCryptoHistory(
    @Path('symbol') String symbol,
    @Query('interval') String interval,
    @Query('period') String period,
  );

  @GET('/crypto/search')
  Future<List<Crypto>> searchCryptos(@Query('query') String query);

  @GET('/crypto/top-gainers')
  Future<List<Crypto>> getTopCryptoGainers();

  @GET('/crypto/top-losers')
  Future<List<Crypto>> getTopCryptoLosers();

  @GET('/crypto/trending')
  Future<List<Crypto>> getTrendingCryptos();

  // Market Indices
  @GET('/market/indices')
  Future<Map<String, double>> getMarketIndices();

  @GET('/market/sectors')
  Future<Map<String, double>> getSectorPerformance();

  // Technical Analysis
  @GET('/technical/indicators/{symbol}')
  Future<TechnicalIndicators> getTechnicalIndicators(
    @Path('symbol') String symbol,
    @Query('interval') String interval,
  );

  @GET('/technical/patterns/{symbol}')
  Future<PatternRecognition> getPatternRecognition(
    @Path('symbol') String symbol,
  );

  @GET('/technical/supply-demand/{symbol}')
  Future<SupplyDemandZones> getSupplyDemandZones(
    @Path('symbol') String symbol,
  );

  @GET('/technical/elliott-wave/{symbol}')
  Future<ElliottWaveData> getElliottWaveData(
    @Path('symbol') String symbol,
  );

  @GET('/technical/fibonacci/{symbol}')
  Future<FibonacciLevels> getFibonacciLevels(
    @Path('symbol') String symbol,
  );

  // Options Data
  @GET('/options/flow/{symbol}')
  Future<OptionFlow> getOptionFlow(@Path('symbol') String symbol);

  @GET('/options/unusual-activity')
  Future<List<OptionTrade>> getUnusualOptionsActivity();

  // Institutional Activity
  @GET('/institutional/activity/{symbol}')
  Future<InstitutionalActivity> getInstitutionalActivity(
    @Path('symbol') String symbol,
  );

  @GET('/institutional/large-trades')
  Future<List<InstitutionalTrade>> getLargeTrades();
}

class MarketServiceImplementation {
  final MarketService _marketService;
  final Dio _dio;
  final SharedPreferences _prefs;

  MarketServiceImplementation(this._marketService, this._dio, this._prefs);

  // Cache keys
  static const String _stockCacheKey = 'stock_cache';
  static const String _cryptoCacheKey = 'crypto_cache';
  static const String _indicesCacheKey = 'indices_cache';
  static const String _lastUpdateKey = 'last_update';

  final http.Client _client = http.Client();

  // Fetch historical data for technical analysis
  Future<List<PricePoint>> getHistoricalData(String symbol, {int days = 252}) async {
    try {
      // Using Yahoo Finance API for historical data (free and reliable)
      final url = Uri.parse(
        'https://query1.finance.yahoo.com/v8/finance/chart/$symbol?interval=1d&range=${days}d'
      );
      
      final response = await _client.get(url).timeout(const Duration(seconds: 30));
      
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final chart = data['chart'];
        
        if (chart != null && chart['result'] != null && chart['result'].isNotEmpty) {
          final result = chart['result'][0];
          final timestamps = result['timestamp'] as List?;
          final quotes = result['indicators']['quote'][0];
          
          if (timestamps != null && quotes != null) {
            final List<PricePoint> pricePoints = [];
            
            for (int i = 0; i < timestamps.length; i++) {
              final timestamp = timestamps[i] * 1000; // Convert to milliseconds
              final open = quotes['open']?[i]?.toDouble() ?? 0.0;
              final high = quotes['high']?[i]?.toDouble() ?? 0.0;
              final low = quotes['low']?[i]?.toDouble() ?? 0.0;
              final close = quotes['close']?[i]?.toDouble() ?? 0.0;
              final volume = quotes['volume']?[i]?.toInt() ?? 0;
              
              if (close > 0) { // Only add valid data points
                pricePoints.add(PricePoint(
                  timestamp: DateTime.fromMillisecondsSinceEpoch(timestamp.toInt()),
                  open: open,
                  high: high,
                  low: low,
                  close: close,
                  volume: volume,
                ));
              }
            }
            
            return pricePoints;
          }
        }
      }
    } catch (e) {
      print('Error fetching historical data for $symbol: $e');
    }
    
    return [];
  }

  // Get real-time quote with enhanced data
  Future<Stock?> getEnhancedQuote(String symbol) async {
    try {
      // Get real-time quote from Finnhub
      final quoteUrl = Uri.parse(
        '${ApiConstants.finnhubBaseUrl}${ApiConstants.finnhubQuoteEndpoint}?symbol=$symbol&token=${ApiConstants.finnhubApiKey}'
      );
      
      final response = await _client.get(quoteUrl).timeout(const Duration(seconds: 10));
      
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        
        if (data.containsKey('error')) {
          print('Finnhub API Error: ${data['error']}');
          return null;
        }
        
        if (data['c'] != null) {
          final currentPrice = data['c']?.toDouble() ?? 0.0;
          final previousClose = data['pc']?.toDouble() ?? 0.0;
          final change = currentPrice - previousClose;
          final changePercent = previousClose > 0 ? (change / previousClose) * 100 : 0.0;
          
          // Get company profile for additional info
          final profile = await getCompanyProfile(symbol);
          
          return Stock(
            symbol: symbol,
            name: profile?['name'] ?? symbol,
            price: currentPrice,
            change: change,
            changePercent: changePercent,
            volume: data['v']?.toInt() ?? 0,
            marketCap: profile?['marketCapitalization']?.toDouble() ?? 0.0,
            high: data['h']?.toDouble() ?? 0.0,
            low: data['l']?.toDouble() ?? 0.0,
            open: data['o']?.toDouble() ?? 0.0,
            previousClose: previousClose,
          );
        }
      }
    } catch (e) {
      print('Error fetching enhanced quote for $symbol: $e');
    }
    return null;
  }

  // Get company profile
  Future<Map<String, dynamic>?> getCompanyProfile(String symbol) async {
    try {
      final url = Uri.parse(
        '${ApiConstants.finnhubBaseUrl}${ApiConstants.finnhubCompanyProfileEndpoint}?symbol=$symbol&token=${ApiConstants.finnhubApiKey}'
      );
      
      final response = await _client.get(url).timeout(const Duration(seconds: 10));
      
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

  // Get earnings calendar data
  Future<List<EarningsEvent>> getEarningsCalendar(String symbol) async {
    try {
      final url = Uri.parse(
        '${ApiConstants.finnhubBaseUrl}/calendar/earnings?symbol=$symbol&from=${DateTime.now().subtract(const Duration(days: 30)).toIso8601String()}&to=${DateTime.now().add(const Duration(days: 90)).toIso8601String()}&token=${ApiConstants.finnhubApiKey}'
      );
      
      final response = await _client.get(url).timeout(const Duration(seconds: 10));
      
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        
        if (data.containsKey('error')) {
          return [];
        }
        
        final earnings = data['earningsCalendar'] as List?;
        if (earnings != null) {
          return earnings.map((e) => EarningsEvent(
            date: DateTime.parse(e['date']),
            epsEstimate: e['epsEstimate']?.toDouble(),
            epsActual: e['epsActual']?.toDouble(),
            revenueEstimate: e['revenueEstimate']?.toDouble(),
            revenueActual: e['revenueActual']?.toDouble(),
            time: e['time'],
          )).toList();
        }
      }
    } catch (e) {
      print('Error fetching earnings calendar for $symbol: $e');
    }
    
    return [];
  }

  // Get news sentiment for a symbol
  Future<List<NewsItem>> getNewsSentiment(String symbol) async {
    try {
      final url = Uri.parse(
        '${ApiConstants.finnhubBaseUrl}/company-news?symbol=$symbol&from=${DateTime.now().subtract(const Duration(days: 7)).toIso8601String()}&to=${DateTime.now().toIso8601String()}&token=${ApiConstants.finnhubApiKey}'
      );
      
      final response = await _client.get(url).timeout(const Duration(seconds: 10));
      
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        
        if (data.containsKey('error')) {
          return [];
        }
        
        final news = data as List?;
        if (news != null) {
          return news.take(10).map((n) => NewsItem(
            headline: n['headline'] ?? '',
            summary: n['summary'] ?? '',
            url: n['url'] ?? '',
            source: n['source'] ?? '',
            datetime: DateTime.fromMillisecondsSinceEpoch(n['datetime'] * 1000),
            sentiment: n['sentiment']?.toDouble() ?? 0.0,
          )).toList();
        }
      }
    } catch (e) {
      print('Error fetching news sentiment for $symbol: $e');
    }
    
    return [];
  }

  // Calculate technical indicators
  Map<String, dynamic> calculateTechnicalIndicators(List<PricePoint> data) {
    if (data.length < 20) return {};
    
    final closes = data.map((p) => p.close).toList();
    final volumes = data.map((p) => p.volume).toList();
    
    return {
      'sma_20': _calculateSMA(closes, 20),
      'sma_50': _calculateSMA(closes, 50),
      'ema_12': _calculateEMA(closes, 12),
      'ema_26': _calculateEMA(closes, 26),
      'rsi': _calculateRSI(closes, 14),
      'macd': _calculateMACD(closes),
      'bollinger_bands': _calculateBollingerBands(closes, 20),
      'volume_sma': _calculateSMA(volumes.map((v) => v.toDouble()).toList(), 20),
    };
  }

  double _calculateSMA(List<double> data, int period) {
    if (data.length < period) return 0.0;
    final sum = data.take(period).reduce((a, b) => a + b);
    return sum / period;
  }

  double _calculateEMA(List<double> data, int period) {
    if (data.length < period) return 0.0;
    
    double ema = data.take(period).reduce((a, b) => a + b) / period;
    final multiplier = 2.0 / (period + 1);
    
    for (int i = period; i < data.length; i++) {
      ema = (data[i] * multiplier) + (ema * (1 - multiplier));
    }
    
    return ema;
  }

  double _calculateRSI(List<double> data, int period) {
    if (data.length < period + 1) return 50.0;
    
    final gains = <double>[];
    final losses = <double>[];
    
    for (int i = 1; i < data.length; i++) {
      final change = data[i] - data[i - 1];
      gains.add(change > 0 ? change : 0);
      losses.add(change < 0 ? -change : 0);
    }
    
    final avgGain = gains.take(period).reduce((a, b) => a + b) / period;
    final avgLoss = losses.take(period).reduce((a, b) => a + b) / period;
    
    if (avgLoss == 0) return 100.0;
    
    final rs = avgGain / avgLoss;
    return 100 - (100 / (1 + rs));
  }

  Map<String, double> _calculateMACD(List<double> data) {
    final ema12 = _calculateEMA(data, 12);
    final ema26 = _calculateEMA(data, 26);
    final macd = ema12 - ema26;
    final signal = _calculateEMA(data.map((d) => d - ema26).toList(), 9);
    
    return {
      'macd': macd,
      'signal': signal,
      'histogram': macd - signal,
    };
  }

  Map<String, double> _calculateBollingerBands(List<double> data, int period) {
    if (data.length < period) return {};
    
    final sma = _calculateSMA(data, period);
    final variance = data.take(period).map((d) => pow(d - sma, 2)).reduce((a, b) => a + b) / period;
    final stdDev = sqrt(variance);
    
    return {
      'upper': sma + (2 * stdDev),
      'middle': sma,
      'lower': sma - (2 * stdDev),
    };
  }

  // Get top stocks with caching
  Future<List<Stock>> getTopStocks() async {
    try {
      // Check cache first
      final cached = await _getCachedStocks();
      if (cached != null) {
        return cached;
      }

      // Fetch from API
      final gainers = await _marketService.getTopGainers();
      final losers = await _marketService.getTopLosers();
      final active = await _marketService.getMostActive();

      final allStocks = [...gainers, ...losers, ...active];
      
      // Cache the results
      await _cacheStocks(allStocks);
      
      return allStocks;
    } catch (e) {
      // Return cached data if available
      final cached = await _getCachedStocks();
      if (cached != null) {
        return cached;
      }
      rethrow;
    }
  }

  // Get top cryptos with caching
  Future<List<Crypto>> getTopCryptos() async {
    try {
      // Check cache first
      final cached = await _getCachedCryptos();
      if (cached != null) {
        return cached;
      }

      // Fetch from API
      final gainers = await _marketService.getTopCryptoGainers();
      final losers = await _marketService.getTopCryptoLosers();
      final trending = await _marketService.getTrendingCryptos();

      final allCryptos = [...gainers, ...losers, ...trending];
      
      // Cache the results
      await _cacheCryptos(allCryptos);
      
      return allCryptos;
    } catch (e) {
      // Return cached data if available
      final cached = await _getCachedCryptos();
      if (cached != null) {
        return cached;
      }
      rethrow;
    }
  }

  // Get market indices
  Future<Map<String, double>> getMarketIndices() async {
    try {
      final cached = await _getCachedIndices();
      if (cached != null) {
        return cached;
      }

      final indices = await _marketService.getMarketIndices();
      await _cacheIndices(indices);
      return indices;
    } catch (e) {
      final cached = await _getCachedIndices();
      if (cached != null) {
        return cached;
      }
      rethrow;
    }
  }

  // Get detailed stock data
  Future<Stock?> getStockData(String symbol) async {
    try {
      final stock = await _marketService.getStockQuote(symbol);
      final history = await _marketService.getStockHistory(symbol, '1d', '1y');
      final indicators = await _marketService.getTechnicalIndicators(symbol, '1d');
      final patterns = await _marketService.getPatternRecognition(symbol);
      final supplyDemand = await _marketService.getSupplyDemandZones(symbol);
      final elliottWave = await _marketService.getElliottWaveData(symbol);
      final fibonacci = await _marketService.getFibonacciLevels(symbol);
      final optionFlow = await _marketService.getOptionFlow(symbol);
      final institutional = await _marketService.getInstitutionalActivity(symbol);

      // Create comprehensive stock object
      return stock.copyWith(
        priceHistory: history,
        technicalIndicators: indicators,
        patternRecognition: patterns,
        supplyDemandZones: supplyDemand,
        elliottWaveData: elliottWave,
        fibonacciLevels: fibonacci,
        optionFlow: [optionFlow],
        institutionalActivity: institutional,
      );
    } catch (e) {
      return null;
    }
  }

  // Get detailed crypto data
  Future<Crypto?> getCryptoData(String symbol) async {
    try {
      final crypto = await _marketService.getCryptoQuote(symbol);
      final history = await _marketService.getCryptoHistory(symbol, '1d', '1y');
      
      // Create comprehensive crypto object
      return crypto.copyWith(
        priceHistory: history,
      );
    } catch (e) {
      return null;
    }
  }

  // Search stocks
  Future<List<Stock>> searchStocks(String query) async {
    try {
      if (query.length < 2) return [];
      return await _marketService.searchStocks(query);
    } catch (e) {
      return [];
    }
  }

  // Search cryptos
  Future<List<Crypto>> searchCryptos(String query) async {
    try {
      if (query.length < 2) return [];
      return await _marketService.searchCryptos(query);
    } catch (e) {
      return [];
    }
  }

  // Get unusual volume stocks
  Future<List<Stock>> getUnusualVolumeStocks() async {
    try {
      return await _marketService.getUnusualVolume();
    } catch (e) {
      return [];
    }
  }

  // Get unusual options activity
  Future<List<OptionTrade>> getUnusualOptionsActivity() async {
    try {
      return await _marketService.getUnusualOptionsActivity();
    } catch (e) {
      return [];
    }
  }

  // Get large institutional trades
  Future<List<InstitutionalTrade>> getLargeInstitutionalTrades() async {
    try {
      return await _marketService.getLargeTrades();
    } catch (e) {
      return [];
    }
  }

  // Check network connectivity
  Future<bool> isConnected() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    return connectivityResult != ConnectivityResult.none;
  }

  // Cache management
  Future<void> _cacheStocks(List<Stock> stocks) async {
    final now = DateTime.now();
    final cacheData = {
      'timestamp': now.millisecondsSinceEpoch,
      'data': stocks.map((s) => s.toJson()).toList(),
    };
    await _prefs.setString(_stockCacheKey, jsonEncode(cacheData));
  }

  Future<List<Stock>?> _getCachedStocks() async {
    final cached = _prefs.getString(_stockCacheKey);
    if (cached == null) return null;

    try {
      final data = jsonDecode(cached) as Map<String, dynamic>;
      final timestamp = data['timestamp'] as int;
      final now = DateTime.now().millisecondsSinceEpoch;
      
      // Check if cache is still valid (5 minutes)
      if (now - timestamp > 5 * 60 * 1000) return null;
      
      final stockList = data['data'] as List;
      return stockList.map((json) => Stock.fromJson(json)).toList();
    } catch (e) {
      return null;
    }
  }

  Future<void> _cacheCryptos(List<Crypto> cryptos) async {
    final now = DateTime.now();
    final cacheData = {
      'timestamp': now.millisecondsSinceEpoch,
      'data': cryptos.map((c) => c.toJson()).toList(),
    };
    await _prefs.setString(_cryptoCacheKey, jsonEncode(cacheData));
  }

  Future<List<Crypto>?> _getCachedCryptos() async {
    final cached = _prefs.getString(_cryptoCacheKey);
    if (cached == null) return null;

    try {
      final data = jsonDecode(cached) as Map<String, dynamic>;
      final timestamp = data['timestamp'] as int;
      final now = DateTime.now().millisecondsSinceEpoch;
      
      // Check if cache is still valid (5 minutes)
      if (now - timestamp > 5 * 60 * 1000) return null;
      
      final cryptoList = data['data'] as List;
      return cryptoList.map((json) => Crypto.fromJson(json)).toList();
    } catch (e) {
      return null;
    }
  }

  Future<void> _cacheIndices(Map<String, double> indices) async {
    final now = DateTime.now();
    final cacheData = {
      'timestamp': now.millisecondsSinceEpoch,
      'data': indices,
    };
    await _prefs.setString(_indicesCacheKey, jsonEncode(cacheData));
  }

  Future<Map<String, double>?> _getCachedIndices() async {
    final cached = _prefs.getString(_indicesCacheKey);
    if (cached == null) return null;

    try {
      final data = jsonDecode(cached) as Map<String, dynamic>;
      final timestamp = data['timestamp'] as int;
      final now = DateTime.now().millisecondsSinceEpoch;
      
      // Check if cache is still valid (5 minutes)
      if (now - timestamp > 5 * 60 * 1000) return null;
      
      final indicesData = data['data'] as Map<String, dynamic>;
      return indicesData.map((key, value) => MapEntry(key, (value as num).toDouble()));
    } catch (e) {
      return null;
    }
  }

  // Clear cache
  Future<void> clearCache() async {
    await _prefs.remove(_stockCacheKey);
    await _prefs.remove(_cryptoCacheKey);
    await _prefs.remove(_indicesCacheKey);
  }

  // Refresh data
  Future<void> refreshData() async {
    await clearCache();
    await getTopStocks();
    await getTopCryptos();
    await getMarketIndices();
  }

  void dispose() {
    _client.close();
  }
}

class EarningsEvent {
  final DateTime date;
  final double? epsEstimate;
  final double? epsActual;
  final double? revenueEstimate;
  final double? revenueActual;
  final String? time;

  EarningsEvent({
    required this.date,
    this.epsEstimate,
    this.epsActual,
    this.revenueEstimate,
    this.revenueActual,
    this.time,
  });
}

class NewsItem {
  final String headline;
  final String summary;
  final String url;
  final String source;
  final DateTime datetime;
  final double sentiment;

  NewsItem({
    required this.headline,
    required this.summary,
    required this.url,
    required this.source,
    required this.datetime,
    required this.sentiment,
  });
} 