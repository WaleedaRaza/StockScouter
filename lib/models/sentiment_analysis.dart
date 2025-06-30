class SentimentAnalysis {
  final double overallSentiment;
  final double newsSentiment;
  final double socialSentiment;
  final double analystSentiment;
  final int bullishArticles;
  final int bearishArticles;
  final int neutralArticles;
  final List<SentimentSource> sources;

  const SentimentAnalysis({
    required this.overallSentiment,
    required this.newsSentiment,
    required this.socialSentiment,
    required this.analystSentiment,
    required this.bullishArticles,
    required this.bearishArticles,
    required this.neutralArticles,
    required this.sources,
  });

  factory SentimentAnalysis.fromJson(Map<String, dynamic> json) {
    return SentimentAnalysis(
      overallSentiment: (json['overallSentiment'] ?? 0.0).toDouble(),
      newsSentiment: (json['newsSentiment'] ?? 0.0).toDouble(),
      socialSentiment: (json['socialSentiment'] ?? 0.0).toDouble(),
      analystSentiment: (json['analystSentiment'] ?? 0.0).toDouble(),
      bullishArticles: json['bullishArticles'] ?? 0,
      bearishArticles: json['bearishArticles'] ?? 0,
      neutralArticles: json['neutralArticles'] ?? 0,
      sources: (json['sources'] as List<dynamic>?)
          ?.map((source) => SentimentSource.fromJson(source))
          .toList() ?? [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'overallSentiment': overallSentiment,
      'newsSentiment': newsSentiment,
      'socialSentiment': socialSentiment,
      'analystSentiment': analystSentiment,
      'bullishArticles': bullishArticles,
      'bearishArticles': bearishArticles,
      'neutralArticles': neutralArticles,
      'sources': sources.map((source) => source.toJson()).toList(),
    };
  }

  String get sentimentLabel {
    if (overallSentiment > 0.3) return 'Bullish';
    if (overallSentiment < -0.3) return 'Bearish';
    return 'Neutral';
  }

  double get confidence {
    final totalArticles = bullishArticles + bearishArticles + neutralArticles;
    if (totalArticles == 0) return 0.0;
    return totalArticles / 100.0; // Simple confidence based on article count
  }
}

class SentimentSource {
  final String source;
  final double sentiment;
  final DateTime timestamp;

  const SentimentSource({
    required this.source,
    required this.sentiment,
    required this.timestamp,
  });

  factory SentimentSource.fromJson(Map<String, dynamic> json) {
    return SentimentSource(
      source: json['source'] ?? '',
      sentiment: (json['sentiment'] ?? 0.0).toDouble(),
      timestamp: DateTime.parse(json['timestamp']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'source': source,
      'sentiment': sentiment,
      'timestamp': timestamp.toIso8601String(),
    };
  }
} 