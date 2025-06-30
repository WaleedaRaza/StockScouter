import 'dart:math';
import '../models/stock.dart';
import '../models/price_point.dart';

class TrendAnalysisService {
  static final TrendAnalysisService _instance = TrendAnalysisService._internal();
  factory TrendAnalysisService() => _instance;
  TrendAnalysisService._internal();

  /// Calculate relative strength vs S&P 500
  double calculateRelativeStrength(List<PricePoint> assetData, List<PricePoint> sp500Data) {
    if (assetData.length < 20 || sp500Data.length < 20) return 0.0;
    
    // Calculate 20-day returns
    final assetReturn = (assetData.last.close - assetData[assetData.length - 20].close) / 
                       assetData[assetData.length - 20].close;
    final sp500Return = (sp500Data.last.close - sp500Data[sp500Data.length - 20].close) / 
                       sp500Data[sp500Data.length - 20].close;
    
    return assetReturn - sp500Return;
  }

  /// Detect volume spikes (unusual volume)
  VolumeAnalysis detectVolumeSpike(List<PricePoint> data) {
    if (data.length < 10) return VolumeAnalysis.normal();
    
    final recentVolume = data.last.volume;
    final avgVolume = data.take(10).map((p) => p.volume).reduce((a, b) => a + b) / 10;
    final volumeRatio = recentVolume / avgVolume;
    
    return VolumeAnalysis(
      isSpike: volumeRatio > 2.0,
      ratio: volumeRatio,
      volume: recentVolume,
      averageVolume: avgVolume,
      significance: volumeRatio > 3.0 ? 'High' : volumeRatio > 2.0 ? 'Medium' : 'Low',
    );
  }

  /// Calculate volatility (standard deviation of returns)
  VolatilityAnalysis calculateVolatility(List<PricePoint> data, {int period = 20}) {
    if (data.length < period + 1) return VolatilityAnalysis.normal();
    
    final returns = <double>[];
    for (int i = 1; i <= period; i++) {
      final return_ = (data[data.length - i].close - data[data.length - i - 1].close) / 
                     data[data.length - i - 1].close;
      returns.add(return_);
    }
    
    final mean = returns.reduce((a, b) => a + b) / returns.length;
    final variance = returns.map((r) => pow(r - mean, 2)).reduce((a, b) => a + b) / returns.length;
    final stdDev = sqrt(variance);
    final annualizedVol = stdDev * sqrt(252); // Annualized volatility
    
    return VolatilityAnalysis(
      current: annualizedVol,
      historical: _calculateHistoricalVolatility(data),
      isHigh: annualizedVol > 0.4, // 40% annualized volatility threshold
      percentile: _calculateVolatilityPercentile(annualizedVol),
    );
  }

  /// Detect breakout patterns
  List<BreakoutPattern> detectBreakouts(List<PricePoint> data) {
    final patterns = <BreakoutPattern>[];
    
    if (data.length < 20) return patterns;
    
    // Resistance breakout
    final resistance = _findResistanceLevel(data);
    if (data.last.close > resistance && data[data.length - 2].close <= resistance) {
      patterns.add(BreakoutPattern(
        type: BreakoutType.resistance,
        level: resistance,
        strength: _calculateBreakoutStrength(data, resistance, true),
        volume: data.last.volume,
      ));
    }
    
    // Support breakdown
    final support = _findSupportLevel(data);
    if (data.last.close < support && data[data.length - 2].close >= support) {
      patterns.add(BreakoutPattern(
        type: BreakoutType.support,
        level: support,
        strength: _calculateBreakoutStrength(data, support, false),
        volume: data.last.volume,
      ));
    }
    
    return patterns;
  }

  /// Find support and resistance levels
  double _findResistanceLevel(List<PricePoint> data) {
    final highs = data.map((p) => p.high).toList();
    highs.sort();
    return highs[highs.length - 1]; // Simple: highest high
  }

  double _findSupportLevel(List<PricePoint> data) {
    final lows = data.map((p) => p.low).toList();
    lows.sort();
    return lows[0]; // Simple: lowest low
  }

  double _calculateBreakoutStrength(List<PricePoint> data, double level, bool isResistance) {
    // Calculate how decisively price broke through the level
    final currentPrice = data.last.close;
    final previousPrice = data[data.length - 2].close;
    
    if (isResistance) {
      return (currentPrice - level) / level; // Percentage above resistance
    } else {
      return (level - currentPrice) / level; // Percentage below support
    }
  }

  double _calculateHistoricalVolatility(List<PricePoint> data) {
    // Calculate 60-day historical volatility
    if (data.length < 60) return 0.0;
    
    final returns = <double>[];
    for (int i = 1; i < 60; i++) {
      final return_ = (data[data.length - i].close - data[data.length - i - 1].close) / 
                     data[data.length - i - 1].close;
      returns.add(return_);
    }
    
    final mean = returns.reduce((a, b) => a + b) / returns.length;
    final variance = returns.map((r) => pow(r - mean, 2)).reduce((a, b) => a + b) / returns.length;
    return sqrt(variance) * sqrt(252);
  }

  double _calculateVolatilityPercentile(double currentVol) {
    // Simplified percentile calculation
    if (currentVol < 0.2) return 25.0;
    if (currentVol < 0.3) return 50.0;
    if (currentVol < 0.4) return 75.0;
    return 90.0;
  }
}

class VolumeAnalysis {
  final bool isSpike;
  final double ratio;
  final int volume;
  final double averageVolume;
  final String significance;

  VolumeAnalysis({
    required this.isSpike,
    required this.ratio,
    required this.volume,
    required this.averageVolume,
    required this.significance,
  });

  factory VolumeAnalysis.normal() => VolumeAnalysis(
    isSpike: false,
    ratio: 1.0,
    volume: 0,
    averageVolume: 0,
    significance: 'Normal',
  );
}

class VolatilityAnalysis {
  final double current;
  final double historical;
  final bool isHigh;
  final double percentile;

  VolatilityAnalysis({
    required this.current,
    required this.historical,
    required this.isHigh,
    required this.percentile,
  });

  factory VolatilityAnalysis.normal() => VolatilityAnalysis(
    current: 0.0,
    historical: 0.0,
    isHigh: false,
    percentile: 50.0,
  );
}

enum BreakoutType { resistance, support }

class BreakoutPattern {
  final BreakoutType type;
  final double level;
  final double strength;
  final int volume;

  BreakoutPattern({
    required this.type,
    required this.level,
    required this.strength,
    required this.volume,
  });
} 