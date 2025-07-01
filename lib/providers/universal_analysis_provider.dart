import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/universal_analysis_service.dart';

// Provider for the universal analysis service
final universalAnalysisServiceProvider = Provider<UniversalAnalysisService>((ref) {
  return UniversalAnalysisService();
});

// Provider for comprehensive analysis of any ticker
final universalAnalysisProvider = FutureProvider.family<Map<String, dynamic>, String>((ref, ticker) async {
  final service = ref.read(universalAnalysisServiceProvider);
  return await service.getComprehensiveAnalysis(ticker);
});

// Provider for analysis loading state
final analysisLoadingProvider = StateProvider<bool>((ref) => false);

// Provider for analysis error state
final analysisErrorProvider = StateProvider<String?>((ref) => null);

// Provider for current ticker being analyzed
final currentTickerProvider = StateProvider<String>((ref) => 'NVDA');

// Provider for analysis history (recent analyses)
final analysisHistoryProvider = StateNotifierProvider<AnalysisHistoryNotifier, List<String>>((ref) {
  return AnalysisHistoryNotifier();
});

class AnalysisHistoryNotifier extends StateNotifier<List<String>> {
  AnalysisHistoryNotifier() : super([]);

  void addTicker(String ticker) {
    if (!state.contains(ticker)) {
      state = [ticker, ...state.take(9)]; // Keep last 10 analyses
    }
  }

  void clearHistory() {
    state = [];
  }
} 