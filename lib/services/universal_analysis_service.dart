import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;
import '../models/stock.dart';
import '../constants/api_constants.dart';

class UniversalAnalysisService {
  static const String _baseUrl = 'https://finnhub.io/api/v1';
  static const String _apiKey = ApiConstants.finnhubApiKey;

  // Core Analysis Methods
  Future<Map<String, dynamic>> getComprehensiveAnalysis(String ticker) async {
    try {
      // Get basic quote data
      final quoteData = await _getStockQuote(ticker);
      if (quoteData == null) {
        throw Exception('Unable to fetch quote data for $ticker');
      }

      // Get company profile
      final profileData = await _getCompanyProfile(ticker);
      
      // Get news sentiment
      final newsData = await _getNewsSentiment(ticker);
      
      // Get technical indicators
      final technicalData = await _getTechnicalIndicators(ticker);
      
      // Get earnings data
      final earningsData = await _getEarningsData(ticker);

      return {
        'ticker': ticker,
        'quote': quoteData,
        'profile': profileData,
        'news': newsData,
        'technical': technicalData,
        'earnings': earningsData,
        'analysis': _generateAnalysis(quoteData, profileData, newsData, technicalData, earningsData),
        'timestamp': DateTime.now().toIso8601String(),
      };
    } catch (e) {
      print('Error in comprehensive analysis for $ticker: $e');
      return {
        'ticker': ticker,
        'error': 'Unable to complete analysis: $e',
        'timestamp': DateTime.now().toIso8601String(),
      };
    }
  }

  // Basic Quote Data
  Future<Map<String, dynamic>?> _getStockQuote(String ticker) async {
    try {
      final response = await http.get(
        Uri.parse('$_baseUrl/quote?symbol=$ticker&token=$_apiKey'),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return {
          'currentPrice': data['c']?.toDouble() ?? 0.0,
          'change': data['d']?.toDouble() ?? 0.0,
          'changePercent': data['dp']?.toDouble() ?? 0.0,
          'high': data['h']?.toDouble() ?? 0.0,
          'low': data['l']?.toDouble() ?? 0.0,
          'open': data['o']?.toDouble() ?? 0.0,
          'previousClose': data['pc']?.toDouble() ?? 0.0,
        };
      }
      return null;
    } catch (e) {
      print('Error fetching quote for $ticker: $e');
      return null;
    }
  }

  // Company Profile
  Future<Map<String, dynamic>> _getCompanyProfile(String ticker) async {
    try {
      final response = await http.get(
        Uri.parse('$_baseUrl/stock/profile2?symbol=$ticker&token=$_apiKey'),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return {
          'name': data['name'] ?? 'Unknown',
          'sector': data['finnhubIndustry'] ?? 'Unknown',
          'marketCap': data['marketCapitalization']?.toDouble() ?? 0.0,
          'peRatio': data['pe']?.toDouble() ?? 0.0,
          'dividendYield': data['dividendYield']?.toDouble() ?? 0.0,
          'beta': data['beta']?.toDouble() ?? 0.0,
          'country': data['country'] ?? 'Unknown',
          'currency': data['currency'] ?? 'USD',
          'exchange': data['exchange'] ?? 'Unknown',
        };
      }
      return {};
    } catch (e) {
      print('Error fetching profile for $ticker: $e');
      return {};
    }
  }

  // News Sentiment
  Future<Map<String, dynamic>> _getNewsSentiment(String ticker) async {
    try {
      final response = await http.get(
        Uri.parse('$_baseUrl/company-news?symbol=$ticker&from=2024-01-01&to=2024-12-31&token=$_apiKey'),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body) as List;
        final recentNews = data.take(10).toList();
        
        // Simple sentiment analysis based on news volume and keywords
        double sentimentScore = 0.0;
        int positiveCount = 0;
        int negativeCount = 0;
        
        for (final news in recentNews) {
          final headline = (news['headline'] ?? '').toString().toLowerCase();
          final summary = (news['summary'] ?? '').toString().toLowerCase();
          
          // Simple keyword-based sentiment
          if (headline.contains('positive') || headline.contains('up') || headline.contains('gain') ||
              summary.contains('positive') || summary.contains('up') || summary.contains('gain')) {
            positiveCount++;
            sentimentScore += 0.1;
          } else if (headline.contains('negative') || headline.contains('down') || headline.contains('loss') ||
                     summary.contains('negative') || summary.contains('down') || summary.contains('loss')) {
            negativeCount++;
            sentimentScore -= 0.1;
          }
        }
        
        return {
          'sentimentScore': sentimentScore.clamp(-1.0, 1.0),
          'positiveNews': positiveCount,
          'negativeNews': negativeCount,
          'totalNews': recentNews.length,
          'recentHeadlines': recentNews.map((n) => n['headline']).toList(),
        };
      }
      return {};
    } catch (e) {
      print('Error fetching news for $ticker: $e');
      return {};
    }
  }

  // Technical Indicators (Simulated)
  Future<Map<String, dynamic>> _getTechnicalIndicators(String ticker) async {
    try {
      // Get historical data for technical analysis
      final response = await http.get(
        Uri.parse('$_baseUrl/stock/candle?symbol=$ticker&resolution=D&from=${DateTime.now().subtract(Duration(days: 60)).millisecondsSinceEpoch ~/ 1000}&to=${DateTime.now().millisecondsSinceEpoch ~/ 1000}&token=$_apiKey'),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final closes = (data['c'] as List?)?.cast<double>() ?? [];
        
        if (closes.length >= 20) {
          // Calculate RSI
          final rsi = _calculateRSI(closes);
          
          // Calculate Moving Averages
          final sma20 = _calculateSMA(closes, 20);
          final sma50 = _calculateSMA(closes, 50);
          
          // Calculate MACD
          final macd = _calculateMACD(closes);
          
          return {
            'rsi': rsi,
            'sma20': sma20,
            'sma50': sma50,
            'macd': macd,
            'currentPrice': closes.isNotEmpty ? closes.last : 0.0,
            'priceChange20d': closes.length >= 20 ? ((closes.last - closes[closes.length - 20]) / closes[closes.length - 20] * 100) : 0.0,
            'volatility': _calculateVolatility(closes),
          };
        }
      }
      return {};
    } catch (e) {
      print('Error calculating technical indicators for $ticker: $e');
      return {};
    }
  }

  // Earnings Data
  Future<Map<String, dynamic>> _getEarningsData(String ticker) async {
    try {
      final response = await http.get(
        Uri.parse('$_baseUrl/stock/earnings?symbol=$ticker&token=$_apiKey'),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final earnings = data['earnings'] as List? ?? [];
        
        if (earnings.isNotEmpty) {
          final latest = earnings.first;
          return {
            'quarter': latest['quarter'] ?? 'Unknown',
            'year': latest['year'] ?? 0,
            'actual': latest['actual']?.toDouble() ?? 0.0,
            'estimate': latest['estimate']?.toDouble() ?? 0.0,
            'surprise': latest['surprise']?.toDouble() ?? 0.0,
            'surprisePercent': latest['surprisePercent']?.toDouble() ?? 0.0,
            'period': latest['period'] ?? 'Unknown',
          };
        }
      }
      return {};
    } catch (e) {
      print('Error fetching earnings for $ticker: $e');
      return {};
    }
  }

  // Analysis Generation
  Map<String, dynamic> _generateAnalysis(
    Map<String, dynamic>? quote,
    Map<String, dynamic> profile,
    Map<String, dynamic> news,
    Map<String, dynamic> technical,
    Map<String, dynamic> earnings,
  ) {
    final currentPrice = quote?['currentPrice'] ?? 0.0;
    final changePercent = quote?['changePercent'] ?? 0.0;
    final sentimentScore = news['sentimentScore'] ?? 0.0;
    final rsi = technical['rsi'] ?? 50.0;
    final sma20 = technical['sma20'] ?? 0.0;
    final sma50 = technical['sma50'] ?? 0.0;
    
    // Generate insights
    List<String> insights = [];
    List<String> alerts = [];
    
    // Price movement insights
    if (changePercent > 5) {
      insights.add('Strong upward momentum with ${changePercent.toStringAsFixed(2)}% gain');
      alerts.add('High volatility alert - consider position sizing');
    } else if (changePercent < -5) {
      insights.add('Significant decline of ${changePercent.toStringAsFixed(2)}%');
      alerts.add('Potential oversold conditions - monitor for reversal');
    }
    
    // Technical insights
    if (rsi > 70) {
      insights.add('RSI indicates overbought conditions (${rsi.toStringAsFixed(1)})');
      alerts.add('Overbought alert - consider taking profits');
    } else if (rsi < 30) {
      insights.add('RSI indicates oversold conditions (${rsi.toStringAsFixed(1)})');
      alerts.add('Oversold alert - potential buying opportunity');
    }
    
    // Moving average insights
    if (currentPrice > sma20 && sma20 > sma50) {
      insights.add('Price above 20-day and 50-day moving averages - bullish trend');
    } else if (currentPrice < sma20 && sma20 < sma50) {
      insights.add('Price below 20-day and 50-day moving averages - bearish trend');
    }
    
    // Sentiment insights
    if (sentimentScore > 0.3) {
      insights.add('Positive news sentiment detected');
    } else if (sentimentScore < -0.3) {
      insights.add('Negative news sentiment detected');
    }
    
    // Earnings insights
    if (earnings.isNotEmpty) {
      final surprisePercent = earnings['surprisePercent'] ?? 0.0;
      if (surprisePercent > 10) {
        insights.add('Recent earnings beat expectations by ${surprisePercent.toStringAsFixed(1)}%');
      } else if (surprisePercent < -10) {
        insights.add('Recent earnings missed expectations by ${surprisePercent.toStringAsFixed(1)}%');
      }
    }
    
    return {
      'insights': insights,
      'alerts': alerts,
      'overallSentiment': _calculateOverallSentiment(sentimentScore, rsi, changePercent),
      'riskLevel': _calculateRiskLevel(technical['volatility'] ?? 0.0, changePercent),
      'recommendation': _generateRecommendation(insights, alerts),
    };
  }

  // Helper Methods
  double _calculateRSI(List<double> prices) {
    if (prices.length < 14) return 50.0;
    
    double gains = 0.0;
    double losses = 0.0;
    
    for (int i = 1; i < 15; i++) {
      double change = prices[i] - prices[i - 1];
      if (change > 0) {
        gains += change;
      } else {
        losses -= change;
      }
    }
    
    double avgGain = gains / 14;
    double avgLoss = losses / 14;
    
    if (avgLoss == 0) return 100.0;
    
    double rs = avgGain / avgLoss;
    return 100.0 - (100.0 / (1.0 + rs));
  }

  double _calculateSMA(List<double> prices, int period) {
    if (prices.length < period) return 0.0;
    double sum = 0.0;
    for (int i = prices.length - period; i < prices.length; i++) {
      sum += prices[i];
    }
    return sum / period;
  }

  Map<String, double> _calculateMACD(List<double> prices) {
    if (prices.length < 26) return {'macd': 0.0, 'signal': 0.0, 'histogram': 0.0};
    
    double ema12 = _calculateEMA(prices, 12);
    double ema26 = _calculateEMA(prices, 26);
    double macd = ema12 - ema26;
    double signal = _calculateEMA([macd], 9); // Simplified
    
    return {
      'macd': macd,
      'signal': signal,
      'histogram': macd - signal,
    };
  }

  double _calculateEMA(List<double> prices, int period) {
    if (prices.length < period) return 0.0;
    
    double multiplier = 2.0 / (period + 1);
    double ema = prices[0];
    
    for (int i = 1; i < prices.length; i++) {
      ema = (prices[i] * multiplier) + (ema * (1 - multiplier));
    }
    
    return ema;
  }

  double _calculateVolatility(List<double> prices) {
    if (prices.length < 20) return 0.0;
    
    double mean = prices.reduce((a, b) => a + b) / prices.length;
    double variance = 0.0;
    
    for (double price in prices) {
      variance += (price - mean) * (price - mean);
    }
    
    return sqrt(variance / prices.length);
  }

  String _calculateOverallSentiment(double newsSentiment, double rsi, double priceChange) {
    double score = 0.0;
    score += newsSentiment * 0.4;
    score += (rsi - 50) / 50 * 0.3;
    score += (priceChange / 100) * 0.3;
    
    if (score > 0.3) return 'Bullish';
    if (score < -0.3) return 'Bearish';
    return 'Neutral';
  }

  String _calculateRiskLevel(double volatility, double priceChange) {
    double riskScore = (volatility / 10) + (priceChange.abs() / 10);
    
    if (riskScore > 2.0) return 'High';
    if (riskScore > 1.0) return 'Medium';
    return 'Low';
  }

  String _generateRecommendation(List<String> insights, List<String> alerts) {
    if (alerts.isNotEmpty) {
      return 'Monitor closely - ${alerts.length} active alerts';
    }
    if (insights.isEmpty) {
      return 'Limited data available - gather more information';
    }
    return 'Analysis complete - review insights for trading decisions';
  }
} 