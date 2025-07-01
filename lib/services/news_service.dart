import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import '../models/news_model.dart';
import '../models/financial_news_models.dart' as fnm;
import '../constants/app_constants.dart';

class NewsService {
  final Dio _dio;
  SharedPreferences? _prefs;

  NewsService() : _dio = Dio() {
    _initPrefs();
  }

  Future<void> _initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // Mock data for development
  Future<List<NewsArticle>> getTopNews() async {
    await Future.delayed(Duration(milliseconds: 500)); // Simulate network delay
    
    return [
      NewsArticle(
        id: '1',
        title: 'Tech Stocks Rally on Strong Earnings',
        summary: 'Major technology companies report better-than-expected quarterly results',
        content: 'Technology stocks surged today as several major companies reported strong quarterly earnings...',
        source: 'Financial Times',
        url: 'https://example.com/article1',
        publishedAt: DateTime.now().subtract(Duration(hours: 2)),
        lastUpdated: DateTime.now().subtract(Duration(hours: 1)),
        sentiment: 0.8,
        confidence: 0.9,
        mentionedStocks: ['AAPL', 'GOOGL', 'MSFT'],
        mentionedCryptos: [],
        tags: ['earnings', 'technology', 'stocks'],
        categories: ['markets', 'technology'],
        entities: ['Apple Inc', 'Google', 'Microsoft'],
        sentimentAnalysis: [],
        stanceAnalysis: [],
        sourceAnalysis: [],
        relatedArticles: [],
        embeddings: [],
        isRead: false,
        readAt: null,
        readCount: 0,
        relevanceScore: 0.9,
        userTags: [],
        isBookmarked: false,
        bookmarkedAt: null,
      ),
      NewsArticle(
        id: '2',
        title: 'Federal Reserve Signals Potential Rate Cuts',
        summary: 'Central bank officials hint at possible monetary policy easing',
        content: 'Federal Reserve officials indicated today that they may consider cutting interest rates...',
        source: 'Wall Street Journal',
        url: 'https://example.com/article2',
        publishedAt: DateTime.now().subtract(Duration(hours: 4)),
        lastUpdated: DateTime.now().subtract(Duration(hours: 3)),
        sentiment: 0.6,
        confidence: 0.85,
        mentionedStocks: [],
        mentionedCryptos: ['BTC', 'ETH'],
        tags: ['federal reserve', 'interest rates', 'monetary policy'],
        categories: ['economics', 'policy'],
        entities: ['Federal Reserve', 'Jerome Powell'],
        sentimentAnalysis: [],
        stanceAnalysis: [],
        sourceAnalysis: [],
        relatedArticles: [],
        embeddings: [],
        isRead: false,
        readAt: null,
        readCount: 0,
        relevanceScore: 0.8,
        userTags: [],
        isBookmarked: false,
        bookmarkedAt: null,
      ),
    ];
  }

  Future<List<NewsTrend>> getNewsTrends() async {
    await Future.delayed(Duration(milliseconds: 300));
    
    return [
      NewsTrend(
        topic: 'AI and Machine Learning',
        volume: 85.5,
        volumeChange: 12.3,
        sentiment: 0.7,
        sentimentChange: 0.1,
        topArticles: ['1', '2', '3'],
        relatedTopics: ['Technology', 'Innovation', 'Investment'],
        startDate: DateTime.now().subtract(Duration(days: 7)),
        endDate: DateTime.now(),
      ),
      NewsTrend(
        topic: 'Cryptocurrency Regulation',
        volume: 72.1,
        volumeChange: -5.2,
        sentiment: 0.4,
        sentimentChange: -0.2,
        topArticles: ['4', '5', '6'],
        relatedTopics: ['Regulation', 'Crypto', 'Policy'],
        startDate: DateTime.now().subtract(Duration(days: 7)),
        endDate: DateTime.now(),
      ),
    ];
  }

  Future<List<NewsArticle>> searchNews(String query) async {
    await Future.delayed(Duration(milliseconds: 400));
    
    // Simple mock search implementation
    final allNews = await getTopNews();
    return allNews.where((article) => 
      article.title.toLowerCase().contains(query.toLowerCase()) ||
      article.content.toLowerCase().contains(query.toLowerCase())
    ).toList();
  }

  Future<NewsSummary?> getNewsSummary(String query) async {
    await Future.delayed(Duration(milliseconds: 600));
    
    return NewsSummary(
      id: 'summary_1',
      title: 'Summary for: $query',
      summary: 'This is a comprehensive summary of news related to $query...',
      keyPoints: [
        'Key point 1 about $query',
        'Key point 2 about $query',
        'Key point 3 about $query',
      ],
      mentionedAssets: ['AAPL', 'GOOGL'],
      overallSentiment: 0.7,
      sources: ['Financial Times', 'Wall Street Journal'],
      generatedAt: DateTime.now(),
      model: 'GPT-4',
      confidence: 0.85,
    );
  }

  Future<List<NewsArticle>> getNewsBySymbol(String symbol) async {
    await Future.delayed(Duration(milliseconds: 500));
    
    final allNews = await getTopNews();
    return allNews.where((article) => 
      article.mentionedStocks.contains(symbol.toUpperCase()) ||
      article.mentionedCryptos.contains(symbol.toUpperCase())
    ).toList();
  }

  // Additional methods for enhanced news features
  Future<List<fnm.EconomicEvent>> getEconomicCalendar() async {
    await Future.delayed(Duration(milliseconds: 400));
    
    return [
      fnm.EconomicEvent(
        id: 'event_1',
        title: 'US Non-Farm Payrolls',
        description: 'Employment data for the previous month',
        date: DateTime.now().add(Duration(days: 3)),
        country: 'United States',
        currency: 'USD',
        impact: 'High',
        previousValue: 175000,
        forecastValue: 180000,
        actualValue: null,
        unit: 'jobs',
        affectedAssets: ['USD', 'SPY', 'QQQ'],
        isHighImpact: true,
        source: 'Bureau of Labor Statistics',
      ),
    ];
  }

  Future<List<fnm.EarningsCall>> getEarningsCalls() async {
    await Future.delayed(Duration(milliseconds: 400));
    
    return [
      fnm.EarningsCall(
        id: 'earnings_1',
        symbol: 'AAPL',
        companyName: 'Apple Inc.',
        callDate: DateTime.now().add(Duration(days: 5)),
        earningsDate: DateTime.now().add(Duration(days: 4)),
        quarter: 'Q1',
        year: 2024,
        epsForecast: 2.10,
        revenueForecast: 118000000000,
        epsActual: null,
        revenueActual: null,
        callUrl: 'https://example.com/earnings-call',
        transcriptUrl: 'https://example.com/transcript',
        keyTopics: ['iPhone sales', 'Services growth', 'China market'],
        sentimentScores: {'overall': 0.7, 'revenue': 0.8, 'guidance': 0.6},
        participants: ['Tim Cook', 'Luca Maestri'],
        isCompleted: false,
        status: 'Scheduled',
      ),
    ];
  }

  Future<List<fnm.KeyFigure>> getKeyFigures() async {
    await Future.delayed(Duration(milliseconds: 400));
    
    return [
      fnm.KeyFigure(
        id: 'figure_1',
        name: 'Warren Buffett',
        title: 'CEO',
        company: 'Berkshire Hathaway',
        photoUrl: 'https://example.com/buffett.jpg',
        recentActions: ['Increased stake in Apple', 'Sold airline stocks'],
        holdings: ['AAPL', 'BRK.A', 'KO'],
        netWorth: 100000000000,
        source: 'Forbes',
        lastUpdated: DateTime.now().subtract(Duration(days: 1)),
        relatedNews: ['1', '2'],
      ),
    ];
  }

  Future<List<fnm.TrendingTopic>> getTrendingTopics() async {
    await Future.delayed(Duration(milliseconds: 300));
    
    return [
      fnm.TrendingTopic(
        id: 'trend_1',
        topic: 'Artificial Intelligence',
        volume: 95.2,
        volumeChange: 15.7,
        sentiment: 0.8,
        sentimentChange: 0.2,
        relatedSymbols: ['NVDA', 'GOOGL', 'MSFT'],
        topArticles: ['1', '2', '3'],
        startDate: DateTime.now().subtract(Duration(days: 1)),
        endDate: DateTime.now(),
      ),
    ];
  }

  Future<fnm.MarketSentiment> getMarketSentiment() async {
    await Future.delayed(Duration(milliseconds: 400));
    
    return fnm.MarketSentiment(
      id: 'sentiment_1',
      date: DateTime.now(),
      overallSentiment: 0.65,
      sectorSentiment: {
        'Technology': 0.8,
        'Healthcare': 0.6,
        'Finance': 0.5,
      },
      assetClassSentiment: {
        'Stocks': 0.7,
        'Bonds': 0.4,
        'Crypto': 0.6,
      },
      topPositiveTopics: ['Earnings beats', 'Fed dovish signals'],
      topNegativeTopics: ['Inflation concerns', 'Geopolitical tensions'],
      fearGreedIndex: 65.0,
      volatilityIndex: 18.5,
      trendingTopics: ['AI', 'Rate cuts', 'Earnings'],
    );
  }
} 