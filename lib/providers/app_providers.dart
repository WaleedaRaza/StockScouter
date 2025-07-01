import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/user_model.dart';
import '../models/news_model.dart';

import '../services/news_service.dart';
import '../services/finnhub_service.dart';
import '../services/universal_analysis_service.dart';
import 'portfolio_provider.dart';

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

// Universal Analysis Provider
final universalAnalysisProvider = StateNotifierProvider<UniversalAnalysisNotifier, UniversalAnalysisState>((ref) {
  return UniversalAnalysisNotifier(ref.read(universalAnalysisServiceProvider));
});

class UniversalAnalysisNotifier extends StateNotifier<UniversalAnalysisState> {
  final UniversalAnalysisService _analysisService;

  UniversalAnalysisNotifier(this._analysisService) : super(UniversalAnalysisState.initial());

  Future<void> analyzeTicker(String ticker) async {
    state = UniversalAnalysisState.loading();
    try {
      final analysis = await _analysisService.getComprehensiveAnalysis(ticker);
      state = UniversalAnalysisState.loaded(analysis);
    } catch (e) {
      state = UniversalAnalysisState.error(e.toString());
    }
  }

  void reset() {
    state = UniversalAnalysisState.initial();
  }
}

class UniversalAnalysisState {
  final bool isLoading;
  final Map<String, dynamic>? analysis;
  final String? error;

  UniversalAnalysisState({
    required this.isLoading,
    this.analysis,
    this.error,
  });

  factory UniversalAnalysisState.initial() => UniversalAnalysisState(isLoading: false);
  factory UniversalAnalysisState.loading() => UniversalAnalysisState(isLoading: true);
  factory UniversalAnalysisState.loaded(Map<String, dynamic> analysis) =>
      UniversalAnalysisState(isLoading: false, analysis: analysis);
  factory UniversalAnalysisState.error(String error) => UniversalAnalysisState(isLoading: false, error: error);
}

// Service Providers
final newsServiceProvider = Provider<NewsService>((ref) => NewsService());
final finnhubServiceProvider = Provider<FinnhubService>((ref) => FinnhubService());
final universalAnalysisServiceProvider = Provider<UniversalAnalysisService>((ref) => UniversalAnalysisService());

// Filter Providers
final newsFilterProvider = StateProvider<String>((ref) => '');
final portfolioFilterProvider = StateProvider<String>((ref) => '');

// Sort Providers
final newsSortProvider = StateProvider<String>((ref) => 'date');
final portfolioSortProvider = StateProvider<String>((ref) => 'name');

// View Providers
final newsViewProvider = StateProvider<String>((ref) => 'list');
final portfolioViewProvider = StateProvider<String>((ref) => 'list');

// Search Providers
final searchQueryProvider = StateProvider<String>((ref) => '');
final searchResultsProvider = StateProvider<List<dynamic>>((ref) => []);
final searchLoadingProvider = StateProvider<bool>((ref) => false); 