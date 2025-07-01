import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constants/theme_constants.dart';
import '../services/finnhub_service.dart';

class StockData {
  final String symbol;
  final String companyName;
  final double currentPrice;
  final double change;
  final double changePercent;

  StockData({
    required this.symbol,
    required this.companyName,
    required this.currentPrice,
    required this.change,
    required this.changePercent,
  });
}

class AddHoldingDialog extends StatefulWidget {
  final String? initialSymbol;

  const AddHoldingDialog({
    super.key,
    this.initialSymbol,
  });

  @override
  State<AddHoldingDialog> createState() => _AddHoldingDialogState();
}

class _AddHoldingDialogState extends State<AddHoldingDialog> {
  final _formKey = GlobalKey<FormState>();
  final _symbolController = TextEditingController();
  final _sharesController = TextEditingController();
  final _priceController = TextEditingController();
  
  bool _isLoading = false;
  bool _isFetchingData = false;
  StockData? _stockData;
  String? _errorMessage;
  final _finnhubService = FinnhubService();

  @override
  void initState() {
    super.initState();
    _symbolController.text = widget.initialSymbol?.toUpperCase() ?? '';
    
    // Auto-fetch data if initial symbol is provided
    if (widget.initialSymbol != null) {
      _fetchStockData();
    }
  }

  @override
  void dispose() {
    _symbolController.dispose();
    _sharesController.dispose();
    _priceController.dispose();
    super.dispose();
  }

  Future<void> _fetchStockData() async {
    final symbol = _symbolController.text.trim().toUpperCase();
    if (symbol.isEmpty) return;

    setState(() {
      _isFetchingData = true;
      _errorMessage = null;
      _stockData = null;
    });

    try {
      final quote = await _finnhubService.getStockQuote(symbol);
      final companyProfile = await _finnhubService.getCompanyProfile(symbol);
      
      if (quote != null && companyProfile != null) {
        setState(() {
          _stockData = StockData(
            symbol: symbol,
            companyName: companyProfile['name'] ?? symbol,
            currentPrice: quote.price,
            change: quote.change,
            changePercent: quote.changePercent,
          );
          // Set default values
          _sharesController.text = '0';
          _priceController.text = quote.price.toStringAsFixed(2);
        });
      } else {
        setState(() {
          _errorMessage = 'Could not fetch data for $symbol. Please check the symbol and try again.';
        });
      }
    } catch (e) {
      setState(() {
        _errorMessage = 'Error fetching data: ${e.toString()}';
      });
    } finally {
      setState(() {
        _isFetchingData = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.surface,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      title: Text(
        'Add to Portfolio',
        style: TextStyle(
          color: AppColors.textPrimary,
          fontWeight: FontWeight.bold,
        ),
      ),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Symbol input with fetch button
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _symbolController,
                    style: TextStyle(color: AppColors.textPrimary),
                    textCapitalization: TextCapitalization.characters,
                    decoration: InputDecoration(
                      labelText: 'Stock Symbol',
                      labelStyle: TextStyle(color: AppColors.textSecondary),
                      hintText: 'e.g., AAPL, TSLA, NVDA',
                      hintStyle: TextStyle(color: AppColors.textSecondary),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: AppColors.border),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: AppColors.border),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: AppColors.primary, width: 2),
                      ),
                      prefixIcon: Icon(Icons.trending_up, color: AppColors.textSecondary),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter a stock symbol';
                      }
                      if (value.trim().length < 1 || value.trim().length > 5) {
                        return 'Symbol must be 1-5 characters';
                      }
                      if (!RegExp(r'^[A-Z]+$').hasMatch(value.trim())) {
                        return 'Symbol must contain only letters';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  onPressed: _isFetchingData ? null : _fetchStockData,
                  icon: _isFetchingData
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : const Icon(Icons.search),
                  style: IconButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Loading state
            if (_isFetchingData)
              Container(
                padding: const EdgeInsets.all(16),
                child: const Row(
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(width: 16),
                    Text('Fetching stock data...'),
                  ],
                ),
              ),

            // Error message
            if (_errorMessage != null)
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.red.withOpacity(0.3)),
                ),
                child: Row(
                  children: [
                    Icon(Icons.error, color: Colors.red, size: 20),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        _errorMessage!,
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                ),
              ),

            // Stock data display
            if (_stockData != null) ...[
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.primary.withOpacity(0.3)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _stockData!.companyName,
                      style: TextStyle(
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Current Price:',
                          style: TextStyle(color: AppColors.textSecondary),
                        ),
                        Text(
                          '\$${_stockData!.currentPrice.toStringAsFixed(2)}',
                          style: TextStyle(
                            color: AppColors.textPrimary,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Change:',
                          style: TextStyle(color: AppColors.textSecondary),
                        ),
                        Text(
                          '${_stockData!.change >= 0 ? '+' : ''}\$${_stockData!.change.toStringAsFixed(2)} (${_stockData!.changePercent >= 0 ? '+' : ''}${_stockData!.changePercent.toStringAsFixed(2)}%)',
                          style: TextStyle(
                            color: _stockData!.change >= 0 ? Colors.green : Colors.red,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // Shares input
              TextFormField(
                controller: _sharesController,
                style: TextStyle(color: AppColors.textPrimary),
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*')),
                ],
                decoration: InputDecoration(
                  labelText: 'Number of Shares',
                  labelStyle: TextStyle(color: AppColors.textSecondary),
                  hintText: 'e.g., 100',
                  hintStyle: TextStyle(color: AppColors.textSecondary),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: AppColors.border),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: AppColors.border),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: AppColors.primary, width: 2),
                  ),
                  prefixIcon: Icon(Icons.shopping_cart, color: AppColors.textSecondary),
                ),
                              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Please enter number of shares';
                }
                final shares = double.tryParse(value);
                if (shares == null || shares < 0 || shares.isNaN) {
                  return 'Please enter a valid number of shares';
                }
                return null;
              },
              ),
              const SizedBox(height: 16),

              // Average price input
              TextFormField(
                controller: _priceController,
                style: TextStyle(color: AppColors.textPrimary),
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*')),
                ],
                decoration: InputDecoration(
                  labelText: 'Average Price per Share',
                  labelStyle: TextStyle(color: AppColors.textSecondary),
                  hintText: 'e.g., 150.25',
                  hintStyle: TextStyle(color: AppColors.textSecondary),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: AppColors.border),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: AppColors.border),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: AppColors.primary, width: 2),
                  ),
                  prefixIcon: Icon(Icons.attach_money, color: AppColors.textSecondary),
                ),
                              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Please enter average price';
                }
                final price = double.tryParse(value);
                if (price == null || price <= 0 || price.isNaN) {
                  return 'Please enter a valid price';
                }
                return null;
              },
              ),
              const SizedBox(height: 16),

              // Total value preview
              if (_sharesController.text.isNotEmpty && _priceController.text.isNotEmpty)
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColors.primary.withOpacity(0.3)),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.calculate, color: AppColors.primary, size: 20),
                      const SizedBox(width: 8),
                      Text(
                        'Total Value: \$${_calculateTotalValue().toStringAsFixed(2)}',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: _isLoading ? null : () => Navigator.of(context).pop(),
          child: Text(
            'Cancel',
            style: TextStyle(color: AppColors.textSecondary),
          ),
        ),
        ElevatedButton(
          onPressed: (_isLoading || _stockData == null) ? null : _addHolding,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: _isLoading
              ? const SizedBox(
                  height: 16,
                  width: 16,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                )
              : const Text('Add Holding'),
        ),
      ],
    );
  }

  double _calculateTotalValue() {
    final shares = double.tryParse(_sharesController.text) ?? 0.0;
    final price = double.tryParse(_priceController.text) ?? 0.0;
    return shares * price;
  }

  void _addHolding() async {
    if (!_formKey.currentState!.validate() || _stockData == null) {
      return;
    }

    setState(() {
      _isLoading = true;
    });

    final symbol = _symbolController.text.trim().toUpperCase();
    final shares = double.parse(_sharesController.text);
    final price = double.parse(_priceController.text);

    // Validate values to prevent NaN
    if (shares.isNaN || price.isNaN || _stockData!.currentPrice.isNaN) {
      setState(() {
        _isLoading = false;
        _errorMessage = 'Invalid values detected. Please check your input.';
      });
      return;
    }

    // Return the data to the parent widget
    Navigator.of(context).pop({
      'symbol': symbol,
      'shares': shares,
      'price': price,
      'companyName': _stockData!.companyName,
      'currentPrice': _stockData!.currentPrice,
    });
  }
} 