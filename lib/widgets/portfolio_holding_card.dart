import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/user_model.dart';
import '../constants/theme_constants.dart';

class PortfolioHoldingCard extends ConsumerWidget {
  final PortfolioHolding holding;
  final VoidCallback? onTap;
  final VoidCallback? onRemove;
  final VoidCallback? onEdit;

  const PortfolioHoldingCard({
    super.key,
    required this.holding,
    this.onTap,
    this.onRemove,
    this.onEdit,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isPositive = holding.totalReturnPercent >= 0;
    final isNegative = holding.totalReturnPercent < 0;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      color: AppColors.surface,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header row with symbol and actions
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          holding.symbol,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        if (holding.companyName != null)
                          Text(
                            holding.companyName!,
                            style: const TextStyle(
                              fontSize: 12,
                              color: AppColors.textSecondary,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        Text(
                          '${holding.shares.toStringAsFixed(2)} shares',
                          style: const TextStyle(
                            fontSize: 14,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Actions
                  Row(
                    children: [
                      if (onEdit != null)
                        IconButton(
                          onPressed: onEdit,
                          icon: const Icon(Icons.edit, color: AppColors.primary),
                          tooltip: 'Edit holding',
                        ),
                      if (onRemove != null)
                        IconButton(
                          onPressed: onRemove,
                          icon: const Icon(Icons.delete, color: AppColors.error),
                          tooltip: 'Remove holding',
                        ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Price information
              Row(
                children: [
                  Expanded(
                    child: _buildPriceInfo(
                      'Current Price',
                      '\$${holding.currentPrice.toStringAsFixed(2)}',
                      AppColors.textPrimary,
                    ),
                  ),
                  Expanded(
                    child: _buildPriceInfo(
                      'Avg Price',
                      '\$${holding.averagePrice.toStringAsFixed(2)}',
                      AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),

              // Value and return information
              Row(
                children: [
                  Expanded(
                    child: _buildPriceInfo(
                      'Market Value',
                      '\$${holding.marketValue.toStringAsFixed(2)}',
                      AppColors.textPrimary,
                    ),
                  ),
                  Expanded(
                    child: _buildPriceInfo(
                      'Total Return',
                      '\$${holding.totalReturn.toStringAsFixed(2)}',
                      isPositive ? AppColors.success : AppColors.error,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),

              // Return percentage
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: isPositive 
                      ? AppColors.success.withOpacity(0.1)
                      : isNegative 
                          ? AppColors.error.withOpacity(0.1)
                          : AppColors.textSecondary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    color: isPositive 
                        ? AppColors.success.withOpacity(0.3)
                        : isNegative 
                            ? AppColors.error.withOpacity(0.3)
                            : AppColors.textSecondary.withOpacity(0.3),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      isPositive ? Icons.trending_up : Icons.trending_down,
                      size: 16,
                      color: isPositive ? AppColors.success : AppColors.error,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '${isPositive ? '+' : ''}${holding.totalReturnPercent.toStringAsFixed(2)}%',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: isPositive ? AppColors.success : AppColors.error,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),

              // Purchase date
              Text(
                'First purchased: ${_formatDate(holding.firstPurchase)}',
                style: const TextStyle(
                  fontSize: 12,
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPriceInfo(String label, String value, Color color) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: AppColors.textSecondary,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          value,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: color,
          ),
        ),
      ],
    );
  }

  String _formatDate(DateTime date) {
    return '${date.month}/${date.day}/${date.year}';
  }
} 