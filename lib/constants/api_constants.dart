class ApiConstants {
  // Alpha Vantage API
  static const String alphaVantageApiKey = 'ZUXFPPN1I7VTEUH1';
  static const String alphaVantageBaseUrl = 'https://www.alphavantage.co/query';
  
  // Finnhub API (Better free limits: 60 requests/minute)
  static const String finnhubApiKey = 'd1hbj69r01qsvr295250d1hbj69r01qsvr29525g';
  static const String finnhubBaseUrl = 'https://finnhub.io/api/v1';
  
  // API Endpoints
  static const String stockQuoteEndpoint = 'GLOBAL_QUOTE';
  static const String stockSearchEndpoint = 'SYMBOL_SEARCH';
  static const String stockIntradayEndpoint = 'TIME_SERIES_INTRADAY';
  static const String stockDailyEndpoint = 'TIME_SERIES_DAILY';
  
  // Finnhub Endpoints
  static const String finnhubQuoteEndpoint = '/quote';
  static const String finnhubSymbolSearchEndpoint = '/search';
  static const String finnhubCompanyProfileEndpoint = '/stock/profile2';
  
  // Popular Stock Symbols for initial data
  static const List<String> popularStocks = [
    'AAPL', 'MSFT', 'GOOGL', 'AMZN', 'TSLA', 'META', 'NVDA', 'NFLX', 'AMD', 'INTC',
    'JPM', 'JNJ', 'V', 'PG', 'UNH', 'HD', 'MA', 'DIS', 'PYPL', 'BAC'
  ];
  
  // Rate limiting
  // Alpha Vantage free tier: 5 calls per minute, 500 per day
  static const int alphaVantageMaxCallsPerMinute = 5;
  static const int alphaVantageMaxCallsPerDay = 500;
  
  // Finnhub free tier: 60 calls per minute
  static const int finnhubMaxCallsPerMinute = 60;
  
  // Request timeouts
  static const Duration requestTimeout = Duration(seconds: 10);
  static const Duration retryDelay = Duration(seconds: 2);
} 