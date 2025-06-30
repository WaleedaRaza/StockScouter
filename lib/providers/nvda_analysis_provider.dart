import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/nvda_analysis_service.dart';
import '../models/price_point.dart';
import '../models/stock.dart';

// Provider for the NVDA analysis service
final nvdaAnalysisServiceProvider = Provider<NVDAAnalysisService>((ref) {
  return NVDAAnalysisService();
});

// Provider for comprehensive NVDA analysis
final nvdaAnalysisProvider = FutureProvider<NVDAAnalysis>((ref) async {
  final service = ref.read(nvdaAnalysisServiceProvider);
  return await service.getComprehensiveAnalysis();
});

// Provider for NVDA historical data only
final nvdaHistoricalDataProvider = FutureProvider<List<PricePoint>>((ref) async {
  final service = ref.read(nvdaAnalysisServiceProvider);
  return await service.getHistoricalData();
});

// Provider for NVDA quote only
final nvdaQuoteProvider = FutureProvider<Stock?>((ref) async {
  final service = ref.read(nvdaAnalysisServiceProvider);
  return await service.getEnhancedQuote();
});

// Provider for NVDA technical analysis
final nvdaTechnicalAnalysisProvider = FutureProvider<TechnicalAnalysis>((ref) async {
  final historicalData = await ref.read(nvdaHistoricalDataProvider.future);
  final service = ref.read(nvdaAnalysisServiceProvider);
  return service.performTechnicalAnalysis(historicalData);
});

// Provider for NVDA Elliott Wave analysis
final nvdaElliottWaveProvider = FutureProvider<ElliottWaveAnalysis>((ref) async {
  final historicalData = await ref.read(nvdaHistoricalDataProvider.future);
  final service = ref.read(nvdaAnalysisServiceProvider);
  return service.performElliottWaveAnalysis(historicalData);
});

// Provider for NVDA Fibonacci analysis
final nvdaFibonacciProvider = FutureProvider<FibonacciAnalysis>((ref) async {
  final historicalData = await ref.read(nvdaHistoricalDataProvider.future);
  final service = ref.read(nvdaAnalysisServiceProvider);
  return service.performFibonacciAnalysis(historicalData);
});

// Provider for NVDA supply/demand analysis
final nvdaSupplyDemandProvider = FutureProvider<SupplyDemandAnalysis>((ref) async {
  final historicalData = await ref.read(nvdaHistoricalDataProvider.future);
  final service = ref.read(nvdaAnalysisServiceProvider);
  return service.performSupplyDemandAnalysis(historicalData);
});

// Provider for NVDA earnings analysis
final nvdaEarningsProvider = FutureProvider<EarningsAnalysis>((ref) async {
  final service = ref.read(nvdaAnalysisServiceProvider);
  final earnings = await service.getEarningsCalendar();
  return service.performEarningsAnalysis(earnings);
});

// Provider for NVDA news sentiment
final nvdaSentimentProvider = FutureProvider<SentimentAnalysis>((ref) async {
  final service = ref.read(nvdaAnalysisServiceProvider);
  final news = await service.getNewsSentiment();
  return service.performSentimentAnalysis(news);
});

// Provider for NVDA options flow
final nvdaOptionsFlowProvider = FutureProvider<OptionsFlowData>((ref) async {
  final service = ref.read(nvdaAnalysisServiceProvider);
  return await service.getOptionsFlow();
});

// State provider for analysis loading state
final nvdaAnalysisLoadingProvider = StateProvider<bool>((ref) => false);

// State provider for analysis error state
final nvdaAnalysisErrorProvider = StateProvider<String?>((ref) => null);

// State provider for selected analysis tab
final nvdaAnalysisTabProvider = StateProvider<int>((ref) => 0);

// Provider for refreshing NVDA analysis
final refreshNVDAAnalysisProvider = FutureProvider.family<NVDAAnalysis, void>((ref, _) async {
  ref.read(nvdaAnalysisLoadingProvider.notifier).state = true;
  ref.read(nvdaAnalysisErrorProvider.notifier).state = null;
  
  try {
    final service = ref.read(nvdaAnalysisServiceProvider);
    final analysis = await service.getComprehensiveAnalysis();
    ref.read(nvdaAnalysisLoadingProvider.notifier).state = false;
    return analysis;
  } catch (e) {
    ref.read(nvdaAnalysisLoadingProvider.notifier).state = false;
    ref.read(nvdaAnalysisErrorProvider.notifier).state = e.toString();
    rethrow;
  }
});

// Provider for NVDA analysis summary
final nvdaAnalysisSummaryProvider = Provider<NVDAnalysisSummary>((ref) {
  final analysisAsync = ref.watch(nvdaAnalysisProvider);
  
  return analysisAsync.when(
    data: (analysis) {
      final quote = analysis.quote;
      final technical = analysis.technicalAnalysis;
      final sentiment = analysis.sentimentAnalysis;
      final earnings = analysis.earningsAnalysis;
      
      return NVDAnalysisSummary(
        symbol: analysis.symbol,
        currentPrice: quote?.price ?? 0.0,
        change: quote?.change ?? 0.0,
        changePercent: quote?.changePercent ?? 0.0,
        volume: quote?.volume ?? 0,
        rsi: technical.rsi,
        sentiment: sentiment.overallSentiment,
        nextEarnings: earnings.nextEarnings?.date,
        technicalSignals: _generateTechnicalSignals(technical),
        keyLevels: _generateKeyLevels(analysis),
        alerts: _generateAlerts(analysis),
      );
    },
    loading: () => NVDAnalysisSummary.empty(),
    error: (error, stack) => NVDAnalysisSummary.empty(),
  );
});

// Helper methods for summary generation
List<TechnicalSignal> _generateTechnicalSignals(TechnicalAnalysis technical) {
  final signals = <TechnicalSignal>[];
  
  // RSI signals
  if (technical.rsi > 70) {
    signals.add(TechnicalSignal(
      type: SignalType.overbought,
      indicator: 'RSI',
      value: technical.rsi,
      message: 'RSI indicates overbought conditions',
    ));
  } else if (technical.rsi < 30) {
    signals.add(TechnicalSignal(
      type: SignalType.oversold,
      indicator: 'RSI',
      value: technical.rsi,
      message: 'RSI indicates oversold conditions',
    ));
  }
  
  // Volume signals
  if (technical.volumeAnalysis.isUnusual) {
    signals.add(TechnicalSignal(
      type: technical.volumeAnalysis.ratio > 2.0 ? SignalType.bullish : SignalType.neutral,
      indicator: 'Volume',
      value: technical.volumeAnalysis.ratio,
      message: 'Unusual volume detected: ${technical.volumeAnalysis.significance}',
    ));
  }
  
  // Pattern signals
  for (final pattern in technical.patterns) {
    signals.add(TechnicalSignal(
      type: pattern.type == PatternType.doubleTop ? SignalType.bearish : SignalType.bullish,
      indicator: 'Pattern',
      value: pattern.confidence,
      message: pattern.description,
    ));
  }
  
  return signals;
}

List<KeyLevel> _generateKeyLevels(NVDAAnalysis analysis) {
  final levels = <KeyLevel>[];
  
  // Support levels
  for (int i = 0; i < analysis.technicalAnalysis.supportLevels.length; i++) {
    levels.add(KeyLevel(
      price: analysis.technicalAnalysis.supportLevels[i],
      type: LevelType.support,
      strength: 1.0 - (i * 0.2),
      description: 'Support Level ${i + 1}',
    ));
  }
  
  // Resistance levels
  for (int i = 0; i < analysis.technicalAnalysis.resistanceLevels.length; i++) {
    levels.add(KeyLevel(
      price: analysis.technicalAnalysis.resistanceLevels[i],
      type: LevelType.resistance,
      strength: 1.0 - (i * 0.2),
      description: 'Resistance Level ${i + 1}',
    ));
  }
  
  // Fibonacci levels
  final fib = analysis.fibonacci;
  if (fib.retracementLevels.isNotEmpty) {
    fib.retracementLevels.forEach((ratio, price) {
      levels.add(KeyLevel(
        price: price,
        type: LevelType.fibonacci,
        strength: 0.8,
        description: 'Fib ${(ratio * 100).toInt()}%',
      ));
    });
  }
  
  return levels;
}

List<Alert> _generateAlerts(NVDAAnalysis analysis) {
  final alerts = <Alert>[];
  
  final quote = analysis.quote;
  final technical = analysis.technicalAnalysis;
  final sentiment = analysis.sentimentAnalysis;
  final earnings = analysis.earningsAnalysis;
  
  // Price alerts
  if (quote != null) {
    if (quote.changePercent > 5.0) {
      alerts.add(Alert(
        type: AlertType.price,
        severity: AlertSeverity.high,
        message: 'NVDA up ${quote.changePercent.toStringAsFixed(1)}% today',
        timestamp: DateTime.now(),
      ));
    } else if (quote.changePercent < -5.0) {
      alerts.add(Alert(
        type: AlertType.price,
        severity: AlertSeverity.high,
        message: 'NVDA down ${quote.changePercent.abs().toStringAsFixed(1)}% today',
        timestamp: DateTime.now(),
      ));
    }
  }
  
  // Technical alerts
  if (technical.rsi > 75) {
    alerts.add(Alert(
      type: AlertType.technical,
      severity: AlertSeverity.medium,
      message: 'RSI overbought (${technical.rsi.toStringAsFixed(1)})',
      timestamp: DateTime.now(),
    ));
  }
  
  // Volume alerts
  if (technical.volumeAnalysis.isUnusual) {
    alerts.add(Alert(
      type: AlertType.volume,
      severity: AlertSeverity.medium,
      message: 'Unusual volume: ${technical.volumeAnalysis.ratio.toStringAsFixed(1)}x average',
      timestamp: DateTime.now(),
    ));
  }
  
  // Sentiment alerts
  if (sentiment.overallSentiment > 0.3) {
    alerts.add(Alert(
      type: AlertType.sentiment,
      severity: AlertSeverity.low,
      message: 'Positive sentiment detected',
      timestamp: DateTime.now(),
    ));
  } else if (sentiment.overallSentiment < -0.3) {
    alerts.add(Alert(
      type: AlertType.sentiment,
      severity: AlertSeverity.low,
      message: 'Negative sentiment detected',
      timestamp: DateTime.now(),
    ));
  }
  
  // Earnings alerts
  if (earnings.nextEarnings != null) {
    final daysUntilEarnings = earnings.nextEarnings!.date.difference(DateTime.now()).inDays;
    if (daysUntilEarnings <= 7) {
      alerts.add(Alert(
        type: AlertType.earnings,
        severity: AlertSeverity.high,
        message: 'Earnings in $daysUntilEarnings days',
        timestamp: DateTime.now(),
      ));
    }
  }
  
  return alerts;
}

// Data classes for summary
class NVDAnalysisSummary {
  final String symbol;
  final double currentPrice;
  final double change;
  final double changePercent;
  final int volume;
  final double rsi;
  final double sentiment;
  final DateTime? nextEarnings;
  final List<TechnicalSignal> technicalSignals;
  final List<KeyLevel> keyLevels;
  final List<Alert> alerts;

  NVDAnalysisSummary({
    required this.symbol,
    required this.currentPrice,
    required this.change,
    required this.changePercent,
    required this.volume,
    required this.rsi,
    required this.sentiment,
    this.nextEarnings,
    required this.technicalSignals,
    required this.keyLevels,
    required this.alerts,
  });

  factory NVDAnalysisSummary.empty() => NVDAnalysisSummary(
    symbol: 'NVDA',
    currentPrice: 0.0,
    change: 0.0,
    changePercent: 0.0,
    volume: 0,
    rsi: 50.0,
    sentiment: 0.0,
    technicalSignals: [],
    keyLevels: [],
    alerts: [],
  );
}

class TechnicalSignal {
  final SignalType type;
  final String indicator;
  final double value;
  final String message;

  TechnicalSignal({
    required this.type,
    required this.indicator,
    required this.value,
    required this.message,
  });
}

enum SignalType { bullish, bearish, neutral, overbought, oversold }

class KeyLevel {
  final double price;
  final LevelType type;
  final double strength;
  final String description;

  KeyLevel({
    required this.price,
    required this.type,
    required this.strength,
    required this.description,
  });
}

enum LevelType { support, resistance, fibonacci }

class Alert {
  final AlertType type;
  final AlertSeverity severity;
  final String message;
  final DateTime timestamp;

  Alert({
    required this.type,
    required this.severity,
    required this.message,
    required this.timestamp,
  });
}

enum AlertType { price, technical, volume, sentiment, earnings }
enum AlertSeverity { low, medium, high } 