import 'dart:math';
import '../models/price_point.dart';

class FibonacciElliottService {
  static final FibonacciElliottService _instance = FibonacciElliottService._internal();
  factory FibonacciElliottService() => _instance;
  FibonacciElliottService._internal();

  /// Fibonacci retracement levels
  List<FibonacciLevel> calculateFibonacciLevels(double swingHigh, double swingLow) {
    final range = swingHigh - swingLow;
    
    return [
      FibonacciLevel(0.0, swingLow, '0%'),
      FibonacciLevel(0.236, swingLow + range * 0.236, '23.6%'),
      FibonacciLevel(0.382, swingLow + range * 0.382, '38.2%'),
      FibonacciLevel(0.5, swingLow + range * 0.5, '50%'),
      FibonacciLevel(0.618, swingLow + range * 0.618, '61.8%'),
      FibonacciLevel(0.786, swingLow + range * 0.786, '78.6%'),
      FibonacciLevel(1.0, swingHigh, '100%'),
      FibonacciLevel(1.272, swingLow + range * 1.272, '127.2%'),
      FibonacciLevel(1.618, swingLow + range * 1.618, '161.8%'),
    ];
  }

  /// Find swing highs and lows for Fibonacci analysis
  List<SwingPoint> findSwingPoints(List<PricePoint> data, {int lookback = 20}) {
    final swings = <SwingPoint>[];
    
    if (data.length < lookback) return swings;
    
    for (int i = lookback; i < data.length - lookback; i++) {
      final current = data[i];
      final isHigh = _isSwingHigh(data, i, lookback);
      final isLow = _isSwingLow(data, i, lookback);
      
      if (isHigh) {
        swings.add(SwingPoint(
          index: i,
          price: current.high,
          type: SwingType.high,
          timestamp: current.timestamp,
        ));
      } else if (isLow) {
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

  /// Detect Elliott Wave patterns
  ElliottWaveAnalysis analyzeElliottWaves(List<PricePoint> data) {
    final swings = findSwingPoints(data);
    if (swings.length < 5) return ElliottWaveAnalysis.incomplete();
    
    // Find the most recent impulse wave (5 waves)
    final impulseWaves = _findImpulseWaves(swings);
    final correctionWaves = _findCorrectionWaves(swings, impulseWaves);
    
    return ElliottWaveAnalysis(
      impulseWaves: impulseWaves,
      correctionWaves: correctionWaves,
      currentWave: _determineCurrentWave(impulseWaves, correctionWaves),
      confidence: _calculateWaveConfidence(impulseWaves, correctionWaves),
      nextTarget: _predictNextTarget(impulseWaves, correctionWaves),
    );
  }

  /// Supply and Demand Zone Analysis
  List<SupplyDemandZone> findSupplyDemandZones(List<PricePoint> data) {
    final zones = <SupplyDemandZone>[];
    final swings = findSwingPoints(data);
    
    // Group nearby swing points into zones
    final tolerance = 0.02; // 2% tolerance for zone grouping
    
    for (int i = 0; i < swings.length; i++) {
      final current = swings[i];
      bool addedToZone = false;
      
      for (final zone in zones) {
        if (_isInZone(current.price, zone, tolerance)) {
          zone.addSwingPoint(current);
          addedToZone = true;
          break;
        }
      }
      
      if (!addedToZone) {
        zones.add(SupplyDemandZone(
          level: current.price,
          type: current.type == SwingType.high ? ZoneType.supply : ZoneType.demand,
          swingPoints: [current],
        ));
      }
    }
    
    // Calculate zone strength based on volume and touches
    for (final zone in zones) {
      zone.calculateStrength(data);
    }
    
    return zones.where((zone) => zone.strength > 0.5).toList(); // Filter weak zones
  }

  /// Check if price is approaching Fibonacci levels
  List<FibonacciAlert> checkFibonacciAlerts(List<PricePoint> data, double currentPrice) {
    final alerts = <FibonacciAlert>[];
    final swings = findSwingPoints(data);
    
    if (swings.length < 2) return alerts;
    
    // Get the most recent significant swing
    final recentSwing = swings.last;
    final previousSwing = swings[swings.length - 2];
    
    final fibLevels = calculateFibonacciLevels(
      max(recentSwing.price, previousSwing.price),
      min(recentSwing.price, previousSwing.price),
    );
    
    for (final level in fibLevels) {
      final distance = (currentPrice - level.price).abs() / level.price;
      if (distance < 0.01) { // Within 1% of Fibonacci level
        alerts.add(FibonacciAlert(
          level: level,
          currentPrice: currentPrice,
          distance: distance,
          type: currentPrice > level.price ? AlertType.resistance : AlertType.support,
        ));
      }
    }
    
    return alerts;
  }

  // Helper methods
  bool _isSwingHigh(List<PricePoint> data, int index, int lookback) {
    final current = data[index];
    
    for (int i = max(0, index - lookback); i < index; i++) {
      if (data[i].high >= current.high) return false;
    }
    
    for (int i = index + 1; i < min(data.length, index + lookback + 1); i++) {
      if (data[i].high >= current.high) return false;
    }
    
    return true;
  }

  bool _isSwingLow(List<PricePoint> data, int index, int lookback) {
    final current = data[index];
    
    for (int i = max(0, index - lookback); i < index; i++) {
      if (data[i].low <= current.low) return false;
    }
    
    for (int i = index + 1; i < min(data.length, index + lookback + 1); i++) {
      if (data[i].low <= current.low) return false;
    }
    
    return true;
  }

  List<ElliottWave> _findImpulseWaves(List<SwingPoint> swings) {
    // Simplified Elliott Wave detection
    final waves = <ElliottWave>[];
    
    if (swings.length < 5) return waves;
    
    // Look for 5-wave pattern
    for (int i = 0; i <= swings.length - 5; i++) {
      final wave1 = swings[i];
      final wave2 = swings[i + 1];
      final wave3 = swings[i + 2];
      final wave4 = swings[i + 3];
      final wave5 = swings[i + 4];
      
      if (_isValidImpulseWave(wave1, wave2, wave3, wave4, wave5)) {
        waves.addAll([
          ElliottWave(1, wave1.price, wave1.timestamp),
          ElliottWave(2, wave2.price, wave2.timestamp),
          ElliottWave(3, wave3.price, wave3.timestamp),
          ElliottWave(4, wave4.price, wave4.timestamp),
          ElliottWave(5, wave5.price, wave5.timestamp),
        ]);
        break;
      }
    }
    
    return waves;
  }

  List<ElliottWave> _findCorrectionWaves(List<SwingPoint> swings, List<ElliottWave> impulseWaves) {
    // Find ABC correction after impulse wave
    final corrections = <ElliottWave>[];
    
    if (impulseWaves.isEmpty || swings.length < impulseWaves.length + 3) return corrections;
    
    final startIndex = impulseWaves.length;
    if (startIndex + 2 < swings.length) {
      final waveA = swings[startIndex];
      final waveB = swings[startIndex + 1];
      final waveC = swings[startIndex + 2];
      
      corrections.addAll([
        ElliottWave(6, waveA.price, waveA.timestamp), // Wave A
        ElliottWave(7, waveB.price, waveB.timestamp), // Wave B
        ElliottWave(8, waveC.price, waveC.timestamp), // Wave C
      ]);
    }
    
    return corrections;
  }

  bool _isValidImpulseWave(SwingPoint w1, SwingPoint w2, SwingPoint w3, SwingPoint w4, SwingPoint w5) {
    // Basic Elliott Wave rules
    // Wave 3 should be the longest
    final wave1Length = (w2.price - w1.price).abs();
    final wave3Length = (w4.price - w3.price).abs();
    final wave5Length = (w5.price - w4.price).abs();
    
    return wave3Length > wave1Length && wave3Length > wave5Length;
  }

  int _determineCurrentWave(List<ElliottWave> impulseWaves, List<ElliottWave> correctionWaves) {
    if (correctionWaves.isNotEmpty) return 9; // New impulse starting
    if (impulseWaves.length == 5) return 6; // In correction
    return impulseWaves.length + 1; // Next impulse wave
  }

  double _calculateWaveConfidence(List<ElliottWave> impulseWaves, List<ElliottWave> correctionWaves) {
    if (impulseWaves.length == 5 && correctionWaves.length == 3) return 0.9;
    if (impulseWaves.length == 5) return 0.7;
    if (impulseWaves.length >= 3) return 0.5;
    return 0.2;
  }

  double? _predictNextTarget(List<ElliottWave> impulseWaves, List<ElliottWave> correctionWaves) {
    if (impulseWaves.length == 5 && correctionWaves.length == 3) {
      // Predict next impulse wave
      final wave5 = impulseWaves.last;
      final waveC = correctionWaves.last;
      final range = wave5.price - waveC.price;
      return waveC.price + range * 0.618; // Common Fibonacci extension
    }
    return null;
  }

  bool _isInZone(double price, SupplyDemandZone zone, double tolerance) {
    final zoneRange = zone.level * tolerance;
    return (price - zone.level).abs() <= zoneRange;
  }
}

// Data classes
class FibonacciLevel {
  final double ratio;
  final double price;
  final String label;

  FibonacciLevel(this.ratio, this.price, this.label);
}

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

class ElliottWave {
  final int waveNumber;
  final double price;
  final DateTime timestamp;

  ElliottWave(this.waveNumber, this.price, this.timestamp);
}

class ElliottWaveAnalysis {
  final List<ElliottWave> impulseWaves;
  final List<ElliottWave> correctionWaves;
  final int currentWave;
  final double confidence;
  final double? nextTarget;

  ElliottWaveAnalysis({
    required this.impulseWaves,
    required this.correctionWaves,
    required this.currentWave,
    required this.confidence,
    this.nextTarget,
  });

  factory ElliottWaveAnalysis.incomplete() => ElliottWaveAnalysis(
    impulseWaves: [],
    correctionWaves: [],
    currentWave: 0,
    confidence: 0.0,
  );
}

class SupplyDemandZone {
  final double level;
  final ZoneType type;
  final List<SwingPoint> swingPoints;
  double strength = 0.0;

  SupplyDemandZone({
    required this.level,
    required this.type,
    required this.swingPoints,
  });

  void addSwingPoint(SwingPoint point) {
    swingPoints.add(point);
  }

  void calculateStrength(List<PricePoint> data) {
    // Calculate strength based on number of touches and volume
    strength = swingPoints.length * 0.2; // Base strength from touches
    
    // Add volume factor
    double totalVolume = 0.0;
    for (final swing in swingPoints) {
      if (swing.index < data.length) {
        totalVolume += data[swing.index].volume;
      }
    }
    strength += min(totalVolume / 1000000, 0.5); // Cap volume contribution
  }
}

enum ZoneType { supply, demand }

class FibonacciAlert {
  final FibonacciLevel level;
  final double currentPrice;
  final double distance;
  final AlertType type;

  FibonacciAlert({
    required this.level,
    required this.currentPrice,
    required this.distance,
    required this.type,
  });
}

enum AlertType { support, resistance } 