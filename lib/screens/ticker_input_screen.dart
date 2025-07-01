import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../constants/theme_constants.dart';

class TickerInputScreen extends StatefulWidget {
  const TickerInputScreen({super.key});

  @override
  State<TickerInputScreen> createState() => _TickerInputScreenState();
}

class _TickerInputScreenState extends State<TickerInputScreen> {
  final TextEditingController _tickerController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  @override
  void dispose() {
    _tickerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text(
          'Stock Analysis',
          style: TextStyle(
            color: AppColors.textPrimary,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: AppColors.surface,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.textPrimary),
          onPressed: () => context.go('/'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 40),
              
              // Icon and title
              const Icon(
                Icons.analytics,
                size: 80,
                color: AppColors.primary,
              ),
              const SizedBox(height: 24),
              
              const Text(
                'Enter Stock Ticker',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              
              const Text(
                'Get comprehensive analysis including technical indicators, Elliott Wave patterns, Fibonacci levels, and sentiment analysis.',
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.textSecondary,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              
              // Ticker input field
              TextFormField(
                controller: _tickerController,
                style: const TextStyle(
                  fontSize: 18,
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                  hintText: 'e.g., NVDA, AAPL, TSLA',
                  hintStyle: const TextStyle(
                    color: AppColors.textSecondary,
                    fontSize: 16,
                  ),
                  filled: true,
                  fillColor: AppColors.surface,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: AppColors.border),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: AppColors.border),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: AppColors.primary, width: 2),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 16,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter a ticker symbol';
                  }
                  if (value.trim().length < 1 || value.trim().length > 5) {
                    return 'Ticker must be 1-5 characters';
                  }
                  if (!RegExp(r'^[A-Z]+$').hasMatch(value.trim())) {
                    return 'Ticker must contain only letters';
                  }
                  return null;
                },
                onFieldSubmitted: (_) => _analyzeTicker(),
              ),
              const SizedBox(height: 24),
              
              // Analyze button
              ElevatedButton(
                onPressed: _isLoading ? null : _analyzeTicker,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: _isLoading
                    ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                        ),
                      )
                    : const Text(
                        'Analyze Stock',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
              ),
              const SizedBox(height: 32),
              
              // Popular tickers
              const Text(
                'Popular Stocks',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 16),
              
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: [
                  _buildPopularTickerChip('NVDA'),
                  _buildPopularTickerChip('AAPL'),
                  _buildPopularTickerChip('TSLA'),
                  _buildPopularTickerChip('MSFT'),
                  _buildPopularTickerChip('GOOGL'),
                  _buildPopularTickerChip('AMZN'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPopularTickerChip(String ticker) {
    return ActionChip(
      label: Text(
        ticker,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          color: AppColors.primary,
        ),
      ),
      backgroundColor: AppColors.primary.withOpacity(0.1),
      side: BorderSide(color: AppColors.primary.withOpacity(0.3)),
      onPressed: () {
        _tickerController.text = ticker;
        _analyzeTicker();
      },
    );
  }

  void _analyzeTicker() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    final ticker = _tickerController.text.trim().toUpperCase();
    
    setState(() {
      _isLoading = true;
    });

    // Small delay to show loading state
    await Future.delayed(const Duration(milliseconds: 500));

    if (mounted) {
      setState(() {
        _isLoading = false;
      });
      
      // Navigate to universal analysis screen
      context.go('/analysis/$ticker');
    }
  }
} 