class Stock {
  final String symbol;
  final String name;
  final double price;
  final double change;
  final double changePercent;
  final int volume;
  final double marketCap;
  final double high;
  final double low;
  final double open;
  final double previousClose;

  const Stock({
    required this.symbol,
    required this.name,
    required this.price,
    required this.change,
    required this.changePercent,
    required this.volume,
    required this.marketCap,
    required this.high,
    required this.low,
    required this.open,
    required this.previousClose,
  });

  factory Stock.fromJson(Map<String, dynamic> json) {
    return Stock(
      symbol: json['symbol'] ?? '',
      name: json['name'] ?? '',
      price: (json['price'] ?? 0.0).toDouble(),
      change: (json['change'] ?? 0.0).toDouble(),
      changePercent: (json['changePercent'] ?? 0.0).toDouble(),
      volume: json['volume'] ?? 0,
      marketCap: (json['marketCap'] ?? 0.0).toDouble(),
      high: (json['high'] ?? 0.0).toDouble(),
      low: (json['low'] ?? 0.0).toDouble(),
      open: (json['open'] ?? 0.0).toDouble(),
      previousClose: (json['previousClose'] ?? 0.0).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'symbol': symbol,
      'name': name,
      'price': price,
      'change': change,
      'changePercent': changePercent,
      'volume': volume,
      'marketCap': marketCap,
      'high': high,
      'low': low,
      'open': open,
      'previousClose': previousClose,
    };
  }

  @override
  String toString() {
    return 'Stock(symbol: $symbol, name: $name, price: $price, change: $change, changePercent: $changePercent)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Stock && other.symbol == symbol;
  }

  @override
  int get hashCode => symbol.hashCode;
} 