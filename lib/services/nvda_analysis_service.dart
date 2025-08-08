import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;
import '../constants/api_constants.dart';
import '../models/price_point.dart';
import '../models/stock.dart';

class NVDAAnalysisService {
  static final NVDAAnalysisService _instance = NVDAAnalysisService._internal();
  factory NVDAAnalysisService() => _instance;
  NVDAAnalysisService._internal();

  final http.Client _client = http.Client();

  /// Comprehensive NVDA analysis with all advanced features
  Future<NVDAAnalysis> getComprehensiveAnalysis() async {
    try {
      // Fetch all data in parallel
      final futures = await Future.wait([
        getHistoricalData(),
        getEnhancedQuote(),
        getEarningsCalendar(),
        getNewsSentiment(),
        getOptionsFlow(),
      ]);

      final historicalData = futures[0] as List<PricePoint>;
      final quote = futures[1] as Stock?;
      final earnings = futures[2] as List<EarningsEvent>;
      final news = futures[3] as List<NewsItem>;
      final optionsFlow = futures[4] as OptionsFlowData;

      // Perform advanced analysis
      final technicalAnalysis = performTechnicalAnalysis(historicalData);
      final elliottWave = performElliottWaveAnalysis(historicalData);
      final fibonacci = performFibonacciAnalysis(historicalData);
      final supplyDemand = performSupplyDemandAnalysis(historicalData);
      final sentimentAnalysis = performSentimentAnalysis(news);
      final earningsAnalysis = performEarningsAnalysis(earnings);

      return NVDAAnalysis(
        symbol: 'NVDA',
        quote: quote,
        historicalData: historicalData,
        technicalAnalysis: technicalAnalysis,
        elliottWave: elliottWave,
        fibonacci: fibonacci,
        supplyDemand: supplyDemand,
        sentimentAnalysis: sentimentAnalysis,
        earningsAnalysis: earningsAnalysis,
        optionsFlow: optionsFlow,
        news: news,
        lastUpdated: DateTime.now(),
      );
    } catch (e) {
      print('Error in comprehensive NVDA analysis: $e');
      return NVDAAnalysis.empty();
    }
  }

  /// Fetch historical data for NVDA
  Future<List<PricePoint>> getHistoricalData({int days = 252}) async {
    try {
      final url = Uri.parse(
        'https://query1.finance.yahoo.com/v8/finance/chart/NVDA?interval=1d&range=${days}d'
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
              final timestamp = timestamps[i] * 1000;
              final open = quotes['open']?[i]?.toDouble() ?? 0.0;
              final high = quotes['high']?[i]?.toDouble() ?? 0.0;
              final low = quotes['low']?[i]?.toDouble() ?? 0.0;
              final close = quotes['close']?[i]?.toDouble() ?? 0.0;
              final volume = quotes['volume']?[i]?.toInt() ?? 0;
              
              if (close > 0) {
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
      print('Error fetching NVDA historical data: $e');
    }
    
    return [];
  }

  /// Get enhanced quote with company profile
  Future<Stock?> getEnhancedQuote() async {
    try {
      final quoteUrl = Uri.parse(
        '${ApiConstants.finnhubBaseUrl}${ApiConstants.finnhubQuoteEndpoint}?symbol=NVDA&token=${ApiConstants.finnhubApiKey}'
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
          
          final profile = await getCompanyProfile();
          
          return Stock(
            symbol: 'NVDA',
            name: profile?['name'] ?? 'NVIDIA Corporation',
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
      print('Error fetching NVDA quote: $e');
    }
    return null;
  }

  /// Get company profile
  Future<Map<String, dynamic>?> getCompanyProfile() async {
    try {
      final url = Uri.parse(
        '${ApiConstants.finnhubBaseUrl}${ApiConstants.finnhubCompanyProfileEndpoint}?symbol=NVDA&token=${ApiConstants.finnhubApiKey}'
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
      print('Error fetching NVDA company profile: $e');
    }
    return null;
  }

  /// Get earnings calendar
  Future<List<EarningsEvent>> getEarningsCalendar() async {
    try {
      final url = Uri.parse(
        '${ApiConstants.finnhubBaseUrl}/calendar/earnings?symbol=NVDA&from=${DateTime.now().subtract(const Duration(days: 30)).toIso8601String()}&to=${DateTime.now().add(const Duration(days: 90)).toIso8601String()}&token=${ApiConstants.finnhubApiKey}'
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
      print('Error fetching NVDA earnings calendar: $e');
    }
    
    return [];
  }

  /// Get news sentiment
  Future<List<NewsItem>> getNewsSentiment() async {
    try {
      final url = Uri.parse(
        '${ApiConstants.finnhubBaseUrl}/company-news?symbol=NVDA&from=${DateTime.now().subtract(const Duration(days: 7)).toIso8601String()}&to=${DateTime.now().toIso8601String()}&token=${ApiConstants.finnhubApiKey}'
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
      print('Error fetching NVDA news sentiment: $e');
    }
    
    return [];
  }

  /// Get options flow data (simulated for now)
  Future<OptionsFlowData> getOptionsFlow() async {
    // Simulate options flow data since Finnhub doesn't provide this
    return OptionsFlowData(
      putCallRatio: 0.85,
      unusualActivity: [
        UnusualOptionActivity(
          strike: 500.0,
          expiry: DateTime.now().add(const Duration(days: 30)),
          type: OptionType.call,
          volume: 1500,
          openInterest: 2500,
          premium: 25000.0,
        ),
        UnusualOptionActivity(
          strike: 450.0,
          expiry: DateTime.now().add(const Duration(days: 30)),
          type: OptionType.put,
          volume: 800,
          openInterest: 1200,
          premium: 18000.0,
        ),
      ],
      totalVolume: 50000,
      totalPremium: 1500000.0,
    );
  }

  /// Perform comprehensive technical analysis
  TechnicalAnalysis performTechnicalAnalysis(List<PricePoint> data) {
    if (data.length < 50) return TechnicalAnalysis.empty();

    final closes = data.map((p) => p.close).toList();
    final volumes = data.map((p) => p.volume).toList();
    final highs = data.map((p) => p.high).toList();
    final lows = data.map((p) => p.low).toList();

    return TechnicalAnalysis(
      sma20: _calculateSMA(closes, 20),
      sma50: _calculateSMA(closes, 50),
      sma200: _calculateSMA(closes, 200),
      ema12: _calculateEMA(closes, 12),
      ema26: _calculateEMA(closes, 26),
      rsi: _calculateRSI(closes, 14),
      macd: _calculateMACD(closes),
      bollingerBands: _calculateBollingerBands(closes, 20),
      volumeAnalysis: _analyzeVolume(volumes),
      supportLevels: _findSupportLevels(lows),
      resistanceLevels: _findResistanceLevels(highs),
      patterns: _detectPatterns(data),
    );
  }

  /// Perform Elliott Wave analysis
  ElliottWaveAnalysis performElliottWaveAnalysis(List<PricePoint> data) {
    if (data.length < 100) return ElliottWaveAnalysis.empty();

    final swings = _identifySwingPoints(data);
    final waves = _labelElliottWaves(swings);
    final nextMove = _predictNextMove(waves);

    return ElliottWaveAnalysis(
      currentWave: waves.isNotEmpty ? waves.last : null,
      waveCount: waves.length,
      swingPoints: swings,
      nextMove: nextMove,
      confidence: _calculateWaveConfidence(waves),
    );
  }

  /// Perform Fibonacci analysis
  FibonacciAnalysis performFibonacciAnalysis(List<PricePoint> data) {
    if (data.length < 50) return FibonacciAnalysis.empty();

    final swings = _identifySwingPoints(data);
    if (swings.length < 2) return FibonacciAnalysis.empty();

    final high = swings.map((s) => s.price).reduce(max);
    final low = swings.map((s) => s.price).reduce(min);
    final range = high - low;

    return FibonacciAnalysis(
      high: high,
      low: low,
      retracementLevels: {
        0.236: low + (range * 0.236),
        0.382: low + (range * 0.382),
        0.500: low + (range * 0.500),
        0.618: low + (range * 0.618),
        0.786: low + (range * 0.786),
      },
      extensionLevels: {
        1.272: high + (range * 0.272),
        1.618: high + (range * 0.618),
        2.000: high + (range * 1.000),
        2.618: high + (range * 1.618),
      },
      currentPrice: data.last.close,
      nearestLevel: _findNearestFibonacciLevel(data.last.close, low, high),
    );
  }

  /// Perform supply and demand analysis
  SupplyDemandAnalysis performSupplyDemandAnalysis(List<PricePoint> data) {
    if (data.length < 50) return SupplyDemandAnalysis.empty();

    final zones = _identifySupplyDemandZones(data);
    final currentPrice = data.last.close;

    return SupplyDemandAnalysis(
      supplyZones: zones.where((z) => z.type == ZoneType.supply).toList(),
      demandZones: zones.where((z) => z.type == ZoneType.demand).toList(),
      currentPrice: currentPrice,
      nearestSupply: _findNearestZone(currentPrice, zones.where((z) => z.type == ZoneType.supply).toList()),
      nearestDemand: _findNearestZone(currentPrice, zones.where((z) => z.type == ZoneType.demand).toList()),
    );
  }

  /// Perform sentiment analysis
  SentimentAnalysis performSentimentAnalysis(List<NewsItem> news) {
    if (news.isEmpty) return SentimentAnalysis.empty();

    final sentiments = news.map((n) => n.sentiment).toList();
    final avgSentiment = sentiments.reduce((a, b) => a + b) / sentiments.length;
    final positiveCount = sentiments.where((s) => s > 0.1).length;
    final negativeCount = sentiments.where((s) => s < -0.1).length;
    final neutralCount = sentiments.length - positiveCount - negativeCount;

    return SentimentAnalysis(
      overallSentiment: avgSentiment,
      positiveArticles: positiveCount,
      negativeArticles: negativeCount,
      neutralArticles: neutralCount,
      totalArticles: news.length,
      recentNews: news.take(5).toList(),
    );
  }

  /// Perform earnings analysis
  EarningsAnalysis performEarningsAnalysis(List<EarningsEvent> earnings) {
    if (earnings.isEmpty) return EarningsAnalysis.empty();

    final upcoming = earnings.where((e) => e.date.isAfter(DateTime.now())).toList();
    final recent = earnings.where((e) => e.date.isBefore(DateTime.now())).toList();

    return EarningsAnalysis(
      nextEarnings: upcoming.isNotEmpty ? upcoming.first : null,
      recentEarnings: recent.isNotEmpty ? recent.first : null,
      earningsHistory: recent,
      averageBeat: _calculateAverageBeat(recent),
    );
  }

  // Helper methods for technical analysis
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

  VolumeAnalysis _analyzeVolume(List<int> volumes) {
    if (volumes.length < 20) return VolumeAnalysis.empty();
    
    final recentVolume = volumes.last;
    final avgVolume = volumes.take(20).reduce((a, b) => a + b) / 20;
    final ratio = recentVolume / avgVolume;
    
    return VolumeAnalysis(
      currentVolume: recentVolume,
      averageVolume: avgVolume,
      ratio: ratio,
      isUnusual: ratio > 2.0,
      significance: ratio > 3.0 ? 'High' : ratio > 2.0 ? 'Medium' : 'Low',
    );
  }

  List<double> _findSupportLevels(List<double> lows) {
    // Simple support level detection
    final sortedLows = List<double>.from(lows)..sort();
    return sortedLows.take(3).toList(); // Top 3 support levels
  }

  List<double> _findResistanceLevels(List<double> highs) {
    // Simple resistance level detection
    final sortedHighs = List<double>.from(highs)..sort((a, b) => b.compareTo(a));
    return sortedHighs.take(3).toList(); // Top 3 resistance levels
  }

  List<Pattern> _detectPatterns(List<PricePoint> data) {
    final patterns = <Pattern>[];
    
    // Detect double top
    if (_isDoubleTop(data)) {
      patterns.add(Pattern(
        type: PatternType.doubleTop,
        confidence: 0.8,
        description: 'Double top pattern detected',
      ));
    }
    
    // Detect double bottom
    if (_isDoubleBottom(data)) {
      patterns.add(Pattern(
        type: PatternType.doubleBottom,
        confidence: 0.8,
        description: 'Double bottom pattern detected',
      ));
    }
    
    return patterns;
  }

  bool _isDoubleTop(List<PricePoint> data) {
    if (data.length < 20) return false;
    
    final highs = data.map((p) => p.high).toList();
    final peaks = <int>[];
    
    for (int i = 1; i < highs.length - 1; i++) {
      if (highs[i] > highs[i - 1] && highs[i] > highs[i + 1]) {
        peaks.add(i);
      }
    }
    
    if (peaks.length < 2) return false;
    
    final lastTwoPeaks = peaks.sublist(peaks.length - 2);
    final peak1 = highs[lastTwoPeaks[0]];
    final peak2 = highs[lastTwoPeaks[1]];
    
    // Check if peaks are similar in height
    return (peak1 - peak2).abs() / peak1 < 0.05;
  }

  bool _isDoubleBottom(List<PricePoint> data) {
    if (data.length < 20) return false;
    
    final lows = data.map((p) => p.low).toList();
    final troughs = <int>[];
    
    for (int i = 1; i < lows.length - 1; i++) {
      if (lows[i] < lows[i - 1] && lows[i] < lows[i + 1]) {
        troughs.add(i);
      }
    }
    
    if (troughs.length < 2) return false;
    
    final lastTwoTroughs = troughs.sublist(troughs.length - 2);
    final trough1 = lows[lastTwoTroughs[0]];
    final trough2 = lows[lastTwoTroughs[1]];
    
    // Check if troughs are similar in height
    return (trough1 - trough2).abs() / trough1 < 0.05;
  }

  // Helper methods for Elliott Wave analysis
  List<SwingPoint> _identifySwingPoints(List<PricePoint> data) {
    final swings = <SwingPoint>[];
    
    for (int i = 1; i < data.length - 1; i++) {
      final current = data[i];
      final prev = data[i - 1];
      final next = data[i + 1];
      
      // High swing point
      if (current.high > prev.high && current.high > next.high) {
        swings.add(SwingPoint(
          index: i,
          price: current.high,
          type: SwingType.high,
          timestamp: current.timestamp,
        ));
      }
      
      // Low swing point
      if (current.low < prev.low && current.low < next.low) {
        swings.add(SwingPoint(
          index: i,
          price: current.low,
          type: SwingType.low,
          timestamp: current.timestamp,
        ));
      }
    }
    
    return swings;
  }

  List<Wave> _labelElliottWaves(List<SwingPoint> swings) {
    // Simplified Elliott Wave labeling
    final waves = <Wave>[];
    
    for (int i = 0; i < swings.length && i < 5; i++) {
      waves.add(Wave(
        number: i + 1,
        start: swings[i],
        end: i < swings.length - 1 ? swings[i + 1] : swings[i],
        type: i < 3 ? WaveType.impulse : WaveType.correction,
      ));
    }
    
    return waves;
  }

  String _predictNextMove(List<Wave> waves) {
    if (waves.isEmpty) return 'Insufficient data';
    
    final lastWave = waves.last;
    
    if (lastWave.number == 5) {
      return 'Expecting ABC correction';
    } else if (lastWave.number == 3) {
      return 'Expecting wave 4 correction';
    } else {
      return 'Wave ${lastWave.number + 1} continuation expected';
    }
  }

  double _calculateWaveConfidence(List<Wave> waves) {
    if (waves.length < 3) return 0.3;
    if (waves.length < 5) return 0.6;
    return 0.8;
  }

  // Helper methods for Fibonacci analysis
  double _findNearestFibonacciLevel(double currentPrice, double low, double high) {
    final range = high - low;
    final levels = [0.236, 0.382, 0.500, 0.618, 0.786];
    
    double nearest = low;
    double minDistance = double.infinity;
    
    for (final level in levels) {
      final fibLevel = low + (range * level);
      final distance = (currentPrice - fibLevel).abs();
      
      if (distance < minDistance) {
        minDistance = distance;
        nearest = fibLevel;
      }
    }
    
    return nearest;
  }

  // Helper methods for supply/demand analysis
  List<Zone> _identifySupplyDemandZones(List<PricePoint> data) {
    final zones = <Zone>[];
    
    // Simple zone identification based on volume clusters
    for (int i = 10; i < data.length - 10; i++) {
      final current = data[i];
      final volume = current.volume;
      final avgVolume = data.sublist(i - 10, i + 10).map((p) => p.volume).reduce((a, b) => a + b) / 20;
      
      if (volume > avgVolume * 1.5) {
        zones.add(Zone(
          price: current.close,
          volume: volume,
          type: current.close > data[i - 1].close ? ZoneType.supply : ZoneType.demand,
          strength: volume / avgVolume,
        ));
      }
    }
    
    return zones;
  }

  Zone? _findNearestZone(double price, List<Zone> zones) {
    if (zones.isEmpty) return null;
    
    Zone? nearest;
    double minDistance = double.infinity;
    
    for (final zone in zones) {
      final distance = (price - zone.price).abs();
      if (distance < minDistance) {
        minDistance = distance;
        nearest = zone;
      }
    }
    
    return nearest;
  }

  // Helper methods for earnings analysis
  double _calculateAverageBeat(List<EarningsEvent> earnings) {
    if (earnings.isEmpty) return 0.0;
    
    final beats = <double>[];
    for (final earning in earnings) {
      if (earning.epsEstimate != null && earning.epsActual != null) {
        final beat = (earning.epsActual! - earning.epsEstimate!) / earning.epsEstimate!;
        beats.add(beat);
      }
    }
    
    if (beats.isEmpty) return 0.0;
    return beats.reduce((a, b) => a + b) / beats.length;
  }

  void dispose() {
    _client.close();
  }
}

// Data classes for analysis results
class NVDAAnalysis {
  final String symbol;
  final Stock? quote;
  final List<PricePoint> historicalData;
  final TechnicalAnalysis technicalAnalysis;
  final ElliottWaveAnalysis elliottWave;
  final FibonacciAnalysis fibonacci;
  final SupplyDemandAnalysis supplyDemand;
  final SentimentAnalysis sentimentAnalysis;
  final EarningsAnalysis earningsAnalysis;
  final OptionsFlowData optionsFlow;
  final List<NewsItem> news;
  final DateTime lastUpdated;

  NVDAAnalysis({
    required this.symbol,
    this.quote,
    required this.historicalData,
    required this.technicalAnalysis,
    required this.elliottWave,
    required this.fibonacci,
    required this.supplyDemand,
    required this.sentimentAnalysis,
    required this.earningsAnalysis,
    required this.optionsFlow,
    required this.news,
    required this.lastUpdated,
  });

  factory NVDAAnalysis.empty() => NVDAAnalysis(
    symbol: 'NVDA',
    historicalData: [],
    technicalAnalysis: TechnicalAnalysis.empty(),
    elliottWave: ElliottWaveAnalysis.empty(),
    fibonacci: FibonacciAnalysis.empty(),
    supplyDemand: SupplyDemandAnalysis.empty(),
    sentimentAnalysis: SentimentAnalysis.empty(),
    earningsAnalysis: EarningsAnalysis.empty(),
    optionsFlow: OptionsFlowData.empty(),
    news: [],
    lastUpdated: DateTime.now(),
  );
}

class TechnicalAnalysis {
  final double sma20;
  final double sma50;
  final double sma200;
  final double ema12;
  final double ema26;
  final double rsi;
  final Map<String, double> macd;
  final Map<String, double> bollingerBands;
  final VolumeAnalysis volumeAnalysis;
  final List<double> supportLevels;
  final List<double> resistanceLevels;
  final List<Pattern> patterns;

  TechnicalAnalysis({
    required this.sma20,
    required this.sma50,
    required this.sma200,
    required this.ema12,
    required this.ema26,
    required this.rsi,
    required this.macd,
    required this.bollingerBands,
    required this.volumeAnalysis,
    required this.supportLevels,
    required this.resistanceLevels,
    required this.patterns,
  });

  factory TechnicalAnalysis.empty() => TechnicalAnalysis(
    sma20: 0.0,
    sma50: 0.0,
    sma200: 0.0,
    ema12: 0.0,
    ema26: 0.0,
    rsi: 50.0,
    macd: {},
    bollingerBands: {},
    volumeAnalysis: VolumeAnalysis.empty(),
    supportLevels: [],
    resistanceLevels: [],
    patterns: [],
  );
}

class VolumeAnalysis {
  final int currentVolume;
  final double averageVolume;
  final double ratio;
  final bool isUnusual;
  final String significance;

  VolumeAnalysis({
    required this.currentVolume,
    required this.averageVolume,
    required this.ratio,
    required this.isUnusual,
    required this.significance,
  });

  factory VolumeAnalysis.empty() => VolumeAnalysis(
    currentVolume: 0,
    averageVolume: 0.0,
    ratio: 1.0,
    isUnusual: false,
    significance: 'Normal',
  );
}

class Pattern {
  final PatternType type;
  final double confidence;
  final String description;

  Pattern({
    required this.type,
    required this.confidence,
    required this.description,
  });
}

enum PatternType { doubleTop, doubleBottom, headAndShoulders, triangle }

class ElliottWaveAnalysis {
  final Wave? currentWave;
  final int waveCount;
  final List<SwingPoint> swingPoints;
  final String nextMove;
  final double confidence;

  ElliottWaveAnalysis({
    this.currentWave,
    required this.waveCount,
    required this.swingPoints,
    required this.nextMove,
    required this.confidence,
  });

  factory ElliottWaveAnalysis.empty() => ElliottWaveAnalysis(
    waveCount: 0,
    swingPoints: [],
    nextMove: 'Insufficient data',
    confidence: 0.0,
  );
}

class Wave {
  final int number;
  final SwingPoint start;
  final SwingPoint end;
  final WaveType type;

  Wave({
    required this.number,
    required this.start,
    required this.end,
    required this.type,
  });
}

enum WaveType { impulse, correction }

class SwingPoint {
  final int index;
  final double price;
  final SwingType type;
  final DateTime timestamp;

  SwingPoint({
    required this.index,
    required this.price,
    required this.type,
    required this.timestamp,
  });
}

enum SwingType { high, low }

class FibonacciAnalysis {
  final double high;
  final double low;
  final Map<double, double> retracementLevels;
  final Map<double, double> extensionLevels;
  final double currentPrice;
  final double nearestLevel;

  FibonacciAnalysis({
    required this.high,
    required this.low,
    required this.retracementLevels,
    required this.extensionLevels,
    required this.currentPrice,
    required this.nearestLevel,
  });

  factory FibonacciAnalysis.empty() => FibonacciAnalysis(
    high: 0.0,
    low: 0.0,
    retracementLevels: {},
    extensionLevels: {},
    currentPrice: 0.0,
    nearestLevel: 0.0,
  );
}

class SupplyDemandAnalysis {
  final List<Zone> supplyZones;
  final List<Zone> demandZones;
  final double currentPrice;
  final Zone? nearestSupply;
  final Zone? nearestDemand;

  SupplyDemandAnalysis({
    required this.supplyZones,
    required this.demandZones,
    required this.currentPrice,
    this.nearestSupply,
    this.nearestDemand,
  });

  factory SupplyDemandAnalysis.empty() => SupplyDemandAnalysis(
    supplyZones: [],
    demandZones: [],
    currentPrice: 0.0,
  );
}

class Zone {
  final double price;
  final int volume;
  final ZoneType type;
  final double strength;

  Zone({
    required this.price,
    required this.volume,
    required this.type,
    required this.strength,
  });
}

enum ZoneType { supply, demand }

class SentimentAnalysis {
  final double overallSentiment;
  final int positiveArticles;
  final int negativeArticles;
  final int neutralArticles;
  final int totalArticles;
  final List<NewsItem> recentNews;

  SentimentAnalysis({
    required this.overallSentiment,
    required this.positiveArticles,
    required this.negativeArticles,
    required this.neutralArticles,
    required this.totalArticles,
    required this.recentNews,
  });

  factory SentimentAnalysis.empty() => SentimentAnalysis(
    overallSentiment: 0.0,
    positiveArticles: 0,
    negativeArticles: 0,
    neutralArticles: 0,
    totalArticles: 0,
    recentNews: [],
  );
}

class EarningsAnalysis {
  final EarningsEvent? nextEarnings;
  final EarningsEvent? recentEarnings;
  final List<EarningsEvent> earningsHistory;
  final double averageBeat;

  EarningsAnalysis({
    this.nextEarnings,
    this.recentEarnings,
    required this.earningsHistory,
    required this.averageBeat,
  });

  factory EarningsAnalysis.empty() => EarningsAnalysis(
    earningsHistory: [],
    averageBeat: 0.0,
  );
}

class OptionsFlowData {
  final double putCallRatio;
  final List<UnusualOptionActivity> unusualActivity;
  final int totalVolume;
  final double totalPremium;

  OptionsFlowData({
    required this.putCallRatio,
    required this.unusualActivity,
    required this.totalVolume,
    required this.totalPremium,
  });

  factory OptionsFlowData.empty() => OptionsFlowData(
    putCallRatio: 1.0,
    unusualActivity: [],
    totalVolume: 0,
    totalPremium: 0.0,
  );
}

class UnusualOptionActivity {
  final double strike;
  final DateTime expiry;
  final OptionType type;
  final int volume;
  final int openInterest;
  final double premium;

  UnusualOptionActivity({
    required this.strike,
    required this.expiry,
    required this.type,
    required this.volume,
    required this.openInterest,
    required this.premium,
  });
}

enum OptionType { call, put }

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