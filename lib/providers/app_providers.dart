import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/stock_model.dart';
import '../models/crypto_model.dart';
import '../models/user_model.dart';
import '../models/news_model.dart';
import '../services/market_service.dart';
import '../services/news_service.dart';
import '../services/user_service.dart';
import '../services/auth_service.dart';
import '../services/portfolio_service.dart';
import '../services/analytics_service.dart';
import '../services/notification_service.dart';
import '../services/database_service.dart';

// Theme Provider
final themeModeProvider = StateNotifierProvider<ThemeModeNotifier, ThemeMode>((ref) {
  return ThemeModeNotifier();
});

class ThemeModeNotifier extends StateNotifier<ThemeMode> {
  ThemeModeNotifier() : super(ThemeMode.system) {
    _loadThemeMode();
  }

  Future<void> _loadThemeMode() async {
    final prefs = await SharedPreferences.getInstance();
    final themeModeIndex = prefs.getInt('themeMode') ?? 0;
    state = ThemeMode.values[themeModeIndex];
  }

  Future<void> setThemeMode(ThemeMode themeMode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('themeMode', themeMode.index);
    state = themeMode;
  }
}

// Authentication Provider
final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier(ref.read(authServiceProvider));
});

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthService _authService;

  AuthNotifier(this._authService) : super(AuthState.initial()) {
    _checkAuthStatus();
  }

  Future<void> _checkAuthStatus() async {
    final user = await _authService.getCurrentUser();
    if (user != null) {
      state = AuthState.authenticated(user);
    } else {
      state = AuthState.unauthenticated();
    }
  }

  Future<void> signIn(String email, String password) async {
    state = AuthState.loading();
    try {
      final user = await _authService.signIn(email, password);
      state = AuthState.authenticated(user);
    } catch (e) {
      state = AuthState.error(e.toString());
    }
  }

  Future<void> signUp(String email, String password, String name) async {
    state = AuthState.loading();
    try {
      final user = await _authService.signUp(email, password, name);
      state = AuthState.authenticated(user);
    } catch (e) {
      state = AuthState.error(e.toString());
    }
  }

  Future<void> signOut() async {
    await _authService.signOut();
    state = AuthState.unauthenticated();
  }

  Future<void> resetPassword(String email) async {
    state = AuthState.loading();
    try {
      await _authService.resetPassword(email);
      state = AuthState.unauthenticated();
    } catch (e) {
      state = AuthState.error(e.toString());
    }
  }
}

class AuthState {
  final bool isLoading;
  final User? user;
  final String? error;
  final bool isAuthenticated;

  AuthState({
    required this.isLoading,
    this.user,
    this.error,
    required this.isAuthenticated,
  });

  factory AuthState.initial() => AuthState(isLoading: true, isAuthenticated: false);
  factory AuthState.loading() => AuthState(isLoading: true, isAuthenticated: false);
  factory AuthState.authenticated(User user) => AuthState(
    isLoading: false,
    user: user,
    isAuthenticated: true,
  );
  factory AuthState.unauthenticated() => AuthState(isLoading: false, isAuthenticated: false);
  factory AuthState.error(String error) => AuthState(
    isLoading: false,
    error: error,
    isAuthenticated: false,
  );
}

// User Provider
final userProvider = StateNotifierProvider<UserNotifier, User?>((ref) {
  final authState = ref.watch(authProvider);
  return UserNotifier(ref.read(userServiceProvider), authState.user);
});

class UserNotifier extends StateNotifier<User?> {
  final UserService _userService;
  final User? _authUser;

  UserNotifier(this._userService, this._authUser) : super(_authUser) {
    if (_authUser != null) {
      _loadUserData();
    }
  }

  Future<void> _loadUserData() async {
    if (_authUser != null) {
      final user = await _userService.getUser(_authUser!.id);
      state = user;
    }
  }

  Future<void> updateProfile(UserProfile profile) async {
    if (state != null) {
      final updatedUser = await _userService.updateProfile(state!.id, profile);
      state = updatedUser;
    }
  }

  Future<void> updatePreferences(UserPreferences preferences) async {
    if (state != null) {
      final updatedUser = await _userService.updatePreferences(state!.id, preferences);
      state = updatedUser;
    }
  }

  Future<void> addToWatchlist(String symbol) async {
    if (state != null) {
      final updatedUser = await _userService.addToWatchlist(state!.id, symbol);
      state = updatedUser;
    }
  }

  Future<void> removeFromWatchlist(String symbol) async {
    if (state != null) {
      final updatedUser = await _userService.removeFromWatchlist(state!.id, symbol);
      state = updatedUser;
    }
  }

  Future<void> createAlert(Alert alert) async {
    if (state != null) {
      final updatedUser = await _userService.createAlert(state!.id, alert);
      state = updatedUser;
    }
  }

  Future<void> deleteAlert(String alertId) async {
    if (state != null) {
      final updatedUser = await _userService.deleteAlert(state!.id, alertId);
      state = updatedUser;
    }
  }
}

// Market Data Provider
final marketDataProvider = StateNotifierProvider<MarketDataNotifier, MarketDataState>((ref) {
  return MarketDataNotifier(ref.read(marketServiceProvider));
});

class MarketDataNotifier extends StateNotifier<MarketDataState> {
  final MarketService _marketService;

  MarketDataNotifier(this._marketService) : super(MarketDataState.initial()) {
    _loadMarketData();
  }

  Future<void> _loadMarketData() async {
    state = MarketDataState.loading();
    try {
      final stocks = await _marketService.getTopStocks();
      final cryptos = await _marketService.getTopCryptos();
      final indices = await _marketService.getMarketIndices();
      state = MarketDataState.loaded(stocks, cryptos, indices);
    } catch (e) {
      state = MarketDataState.error(e.toString());
    }
  }

  Future<void> refreshMarketData() async {
    await _loadMarketData();
  }

  Future<Stock?> getStockData(String symbol) async {
    try {
      return await _marketService.getStockData(symbol);
    } catch (e) {
      return null;
    }
  }

  Future<Crypto?> getCryptoData(String symbol) async {
    try {
      return await _marketService.getCryptoData(symbol);
    } catch (e) {
      return null;
    }
  }

  Future<List<Stock>> searchStocks(String query) async {
    try {
      return await _marketService.searchStocks(query);
    } catch (e) {
      return [];
    }
  }

  Future<List<Crypto>> searchCryptos(String query) async {
    try {
      return await _marketService.searchCryptos(query);
    } catch (e) {
      return [];
    }
  }
}

class MarketDataState {
  final bool isLoading;
  final List<Stock>? stocks;
  final List<Crypto>? cryptos;
  final Map<String, double>? indices;
  final String? error;

  MarketDataState({
    required this.isLoading,
    this.stocks,
    this.cryptos,
    this.indices,
    this.error,
  });

  factory MarketDataState.initial() => MarketDataState(isLoading: true);
  factory MarketDataState.loading() => MarketDataState(isLoading: true);
  factory MarketDataState.loaded(List<Stock> stocks, List<Crypto> cryptos, Map<String, double> indices) =>
      MarketDataState(isLoading: false, stocks: stocks, cryptos: cryptos, indices: indices);
  factory MarketDataState.error(String error) => MarketDataState(isLoading: false, error: error);
}

// News Provider
final newsProvider = StateNotifierProvider<NewsNotifier, NewsState>((ref) {
  return NewsNotifier(ref.read(newsServiceProvider));
});

class NewsNotifier extends StateNotifier<NewsState> {
  final NewsService _newsService;

  NewsNotifier(this._newsService) : super(NewsState.initial()) {
    _loadNews();
  }

  Future<void> _loadNews() async {
    state = NewsState.loading();
    try {
      final articles = await _newsService.getTopNews();
      final trends = await _newsService.getNewsTrends();
      state = NewsState.loaded(articles, trends);
    } catch (e) {
      state = NewsState.error(e.toString());
    }
  }

  Future<void> refreshNews() async {
    await _loadNews();
  }

  Future<List<NewsArticle>> searchNews(String query) async {
    try {
      return await _newsService.searchNews(query);
    } catch (e) {
      return [];
    }
  }

  Future<NewsSummary?> getNewsSummary(String query) async {
    try {
      return await _newsService.getNewsSummary(query);
    } catch (e) {
      return null;
    }
  }

  Future<List<NewsArticle>> getNewsBySymbol(String symbol) async {
    try {
      return await _newsService.getNewsBySymbol(symbol);
    } catch (e) {
      return [];
    }
  }
}

class NewsState {
  final bool isLoading;
  final List<NewsArticle>? articles;
  final List<NewsTrend>? trends;
  final String? error;

  NewsState({
    required this.isLoading,
    this.articles,
    this.trends,
    this.error,
  });

  factory NewsState.initial() => NewsState(isLoading: true);
  factory NewsState.loading() => NewsState(isLoading: true);
  factory NewsState.loaded(List<NewsArticle> articles, List<NewsTrend> trends) =>
      NewsState(isLoading: false, articles: articles, trends: trends);
  factory NewsState.error(String error) => NewsState(isLoading: false, error: error);
}

// Portfolio Provider
final portfolioProvider = StateNotifierProvider<PortfolioNotifier, PortfolioState>((ref) {
  final user = ref.watch(userProvider);
  return PortfolioNotifier(ref.read(portfolioServiceProvider), user);
});

class PortfolioNotifier extends StateNotifier<PortfolioState> {
  final PortfolioService _portfolioService;
  final User? _user;

  PortfolioNotifier(this._portfolioService, this._user) : super(PortfolioState.initial()) {
    if (_user != null) {
      _loadPortfolio();
    }
  }

  Future<void> _loadPortfolio() async {
    if (_user != null) {
      state = PortfolioState.loading();
      try {
        final portfolios = await _portfolioService.getPortfolios(_user!.id);
        state = PortfolioState.loaded(portfolios);
      } catch (e) {
        state = PortfolioState.error(e.toString());
      }
    }
  }

  Future<void> createPortfolio(Portfolio portfolio) async {
    if (_user != null) {
      final updatedPortfolios = await _portfolioService.createPortfolio(_user!.id, portfolio);
      state = PortfolioState.loaded(updatedPortfolios);
    }
  }

  Future<void> updatePortfolio(String portfolioId, Portfolio portfolio) async {
    if (_user != null) {
      final updatedPortfolios = await _portfolioService.updatePortfolio(_user!.id, portfolioId, portfolio);
      state = PortfolioState.loaded(updatedPortfolios);
    }
  }

  Future<void> deletePortfolio(String portfolioId) async {
    if (_user != null) {
      final updatedPortfolios = await _portfolioService.deletePortfolio(_user!.id, portfolioId);
      state = PortfolioState.loaded(updatedPortfolios);
    }
  }

  Future<void> addTransaction(String portfolioId, PortfolioTransaction transaction) async {
    if (_user != null) {
      final updatedPortfolios = await _portfolioService.addTransaction(_user!.id, portfolioId, transaction);
      state = PortfolioState.loaded(updatedPortfolios);
    }
  }
}

class PortfolioState {
  final bool isLoading;
  final List<Portfolio>? portfolios;
  final String? error;

  PortfolioState({
    required this.isLoading,
    this.portfolios,
    this.error,
  });

  factory PortfolioState.initial() => PortfolioState(isLoading: true);
  factory PortfolioState.loading() => PortfolioState(isLoading: true);
  factory PortfolioState.loaded(List<Portfolio> portfolios) =>
      PortfolioState(isLoading: false, portfolios: portfolios);
  factory PortfolioState.error(String error) => PortfolioState(isLoading: false, error: error);
}

// Analytics Provider
final analyticsProvider = StateNotifierProvider<AnalyticsNotifier, AnalyticsState>((ref) {
  return AnalyticsNotifier(ref.read(analyticsServiceProvider));
});

class AnalyticsNotifier extends StateNotifier<AnalyticsState> {
  final AnalyticsService _analyticsService;

  AnalyticsNotifier(this._analyticsService) : super(AnalyticsState.initial());

  Future<void> trackEvent(String eventName, Map<String, dynamic> properties) async {
    await _analyticsService.trackEvent(eventName, properties);
  }

  Future<void> trackScreen(String screenName) async {
    await _analyticsService.trackScreen(screenName);
  }

  Future<void> setUserProperties(Map<String, dynamic> properties) async {
    await _analyticsService.setUserProperties(properties);
  }
}

class AnalyticsState {
  final bool isInitialized;

  AnalyticsState({required this.isInitialized});

  factory AnalyticsState.initial() => AnalyticsState(isInitialized: false);
}

// Notification Provider
final notificationProvider = StateNotifierProvider<NotificationNotifier, NotificationState>((ref) {
  return NotificationNotifier(ref.read(notificationServiceProvider));
});

class NotificationNotifier extends StateNotifier<NotificationState> {
  final NotificationService _notificationService;

  NotificationNotifier(this._notificationService) : super(NotificationState.initial());

  Future<void> requestPermissions() async {
    final granted = await _notificationService.requestPermissions();
    state = NotificationState(granted: granted);
  }

  Future<void> scheduleNotification({
    required String title,
    required String body,
    required DateTime scheduledDate,
    String? payload,
  }) async {
    await _notificationService.scheduleNotification(
      title: title,
      body: body,
      scheduledDate: scheduledDate,
      payload: payload,
    );
  }

  Future<void> cancelNotification(int id) async {
    await _notificationService.cancelNotification(id);
  }

  Future<void> cancelAllNotifications() async {
    await _notificationService.cancelAllNotifications();
  }
}

class NotificationState {
  final bool granted;

  NotificationState({required this.granted});

  factory NotificationState.initial() => NotificationState(granted: false);
}

// Service Providers
final authServiceProvider = Provider<AuthService>((ref) => AuthService());
final userServiceProvider = Provider<UserService>((ref) => UserService());
final marketServiceProvider = Provider<MarketService>((ref) => MarketService());
final newsServiceProvider = Provider<NewsService>((ref) => NewsService());
final portfolioServiceProvider = Provider<PortfolioService>((ref) => PortfolioService());
final analyticsServiceProvider = Provider<AnalyticsService>((ref) => AnalyticsService());
final notificationServiceProvider = Provider<NotificationService>((ref) => NotificationService());
final databaseServiceProvider = Provider<DatabaseService>((ref) => DatabaseService());

// Filter Providers
final stockFilterProvider = StateProvider<String>((ref) => '');
final cryptoFilterProvider = StateProvider<String>((ref) => '');
final newsFilterProvider = StateProvider<String>((ref) => '');
final portfolioFilterProvider = StateProvider<String>((ref) => '');

// Sort Providers
final stockSortProvider = StateProvider<String>((ref) => 'name');
final cryptoSortProvider = StateProvider<String>((ref) => 'name');
final newsSortProvider = StateProvider<String>((ref) => 'date');
final portfolioSortProvider = StateProvider<String>((ref) => 'name');

// View Providers
final stockViewProvider = StateProvider<String>((ref) => 'grid');
final cryptoViewProvider = StateProvider<String>((ref) => 'grid');
final newsViewProvider = StateProvider<String>((ref) => 'list');
final portfolioViewProvider = StateProvider<String>((ref) => 'list');

// Search Providers
final searchQueryProvider = StateProvider<String>((ref) => '');
final searchResultsProvider = StateProvider<List<dynamic>>((ref) => []);
final searchLoadingProvider = StateProvider<bool>((ref) => false);

// Settings Providers
final settingsProvider = StateNotifierProvider<SettingsNotifier, SettingsState>((ref) {
  return SettingsNotifier();
});

class SettingsNotifier extends StateNotifier<SettingsState> {
  SettingsNotifier() : super(SettingsState.initial()) {
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    state = SettingsState(
      notificationsEnabled: prefs.getBool('notificationsEnabled') ?? true,
      darkModeEnabled: prefs.getBool('darkModeEnabled') ?? false,
      biometricEnabled: prefs.getBool('biometricEnabled') ?? false,
      autoRefreshEnabled: prefs.getBool('autoRefreshEnabled') ?? true,
      refreshInterval: prefs.getInt('refreshInterval') ?? 30,
      currency: prefs.getString('currency') ?? 'USD',
      language: prefs.getString('language') ?? 'en',
    );
  }

  Future<void> updateSettings(SettingsState settings) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('notificationsEnabled', settings.notificationsEnabled);
    await prefs.setBool('darkModeEnabled', settings.darkModeEnabled);
    await prefs.setBool('biometricEnabled', settings.biometricEnabled);
    await prefs.setBool('autoRefreshEnabled', settings.autoRefreshEnabled);
    await prefs.setInt('refreshInterval', settings.refreshInterval);
    await prefs.setString('currency', settings.currency);
    await prefs.setString('language', settings.language);
    state = settings;
  }
}

class SettingsState {
  final bool notificationsEnabled;
  final bool darkModeEnabled;
  final bool biometricEnabled;
  final bool autoRefreshEnabled;
  final int refreshInterval;
  final String currency;
  final String language;

  SettingsState({
    required this.notificationsEnabled,
    required this.darkModeEnabled,
    required this.biometricEnabled,
    required this.autoRefreshEnabled,
    required this.refreshInterval,
    required this.currency,
    required this.language,
  });

  factory SettingsState.initial() => SettingsState(
    notificationsEnabled: true,
    darkModeEnabled: false,
    biometricEnabled: false,
    autoRefreshEnabled: true,
    refreshInterval: 30,
    currency: 'USD',
    language: 'en',
  );

  SettingsState copyWith({
    bool? notificationsEnabled,
    bool? darkModeEnabled,
    bool? biometricEnabled,
    bool? autoRefreshEnabled,
    int? refreshInterval,
    String? currency,
    String? language,
  }) {
    return SettingsState(
      notificationsEnabled: notificationsEnabled ?? this.notificationsEnabled,
      darkModeEnabled: darkModeEnabled ?? this.darkModeEnabled,
      biometricEnabled: biometricEnabled ?? this.biometricEnabled,
      autoRefreshEnabled: autoRefreshEnabled ?? this.autoRefreshEnabled,
      refreshInterval: refreshInterval ?? this.refreshInterval,
      currency: currency ?? this.currency,
      language: language ?? this.language,
    );
  }
} 