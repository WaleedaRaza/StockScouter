import 'package:flutter/material.dart';
import '../models/stock.dart';
import '../constants/theme_constants.dart';

class StockCard extends StatelessWidget {
  final Stock stock;
  final VoidCallback? onTap;
  final VoidCallback? onFavorite;
  final bool isFavorite;

  const StockCard({
    super.key,
    required this.stock,
    this.onTap,
    this.onFavorite,
    this.isFavorite = false,
  });

  @override
  Widget build(BuildContext context) {
    final isPositive = stock.changePercent >= 0;
    final changeColor = isPositive ? AppColors.success : AppColors.error;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.border),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Row
            Row(
              children: [
                // Stock Icon
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                              Icons.business,
                    color: AppColors.primary,
                          size: 20,
                        ),
                ),
                const SizedBox(width: 12),
                // Stock Info
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        stock.symbol,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      Text(
                        stock.name,
                        style: const TextStyle(
                          fontSize: 12,
                          color: AppColors.textSecondary,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                // Favorite Button
                if (onFavorite != null)
                  IconButton(
                    icon: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: isFavorite ? Colors.red : AppColors.textSecondary,
                      size: 20,
                    ),
                    onPressed: onFavorite,
                  ),
              ],
            ),
            const SizedBox(height: 16),
            // Price and Change Row
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '\$${stock.price.toStringAsFixed(2)}',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Icon(
                            isPositive ? Icons.trending_up : Icons.trending_down,
                            size: 16,
                            color: changeColor,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            '${isPositive ? '+' : ''}${stock.changePercent.toStringAsFixed(2)}%',
                            style: TextStyle(
                              fontSize: 14,
                              color: changeColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '${isPositive ? '+' : ''}\$${stock.change.toStringAsFixed(2)}',
                            style: TextStyle(
                              fontSize: 14,
                              color: changeColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // Market Cap
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    const Text(
                        'Market Cap',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.textSecondary,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                      _formatMarketCap(stock.marketCap),
                      style: const TextStyle(
                        fontSize: 14,
                          fontWeight: FontWeight.w500,
                        color: AppColors.textPrimary,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
            // Volume and Additional Info
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Row(
                  children: [
                      _buildInfoChip(
                    'Vol: ${_formatVolume(stock.volume)}',
                        Icons.bar_chart,
                      ),
                      const SizedBox(width: 8),
                      _buildInfoChip(
                    'High: \$${stock.high.toStringAsFixed(2)}',
                    Icons.trending_up,
                      ),
                      const SizedBox(width: 8),
                      _buildInfoChip(
                    'Low: \$${stock.low.toStringAsFixed(2)}',
                    Icons.trending_down,
                      ),
                    ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoChip(String label, IconData icon) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 12,
            color: AppColors.textSecondary,
          ),
          const SizedBox(width: 4),
          Text(
            label,
            style: const TextStyle(
              fontSize: 10,
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }

  String _formatMarketCap(double marketCap) {
    if (marketCap >= 1e12) {
      return '\$${(marketCap / 1e12).toStringAsFixed(1)}T';
    } else if (marketCap >= 1e9) {
      return '\$${(marketCap / 1e9).toStringAsFixed(1)}B';
    } else if (marketCap >= 1e6) {
      return '\$${(marketCap / 1e6).toStringAsFixed(1)}M';
    } else {
      return '\$${marketCap.toStringAsFixed(0)}';
    }
  }

  String _formatVolume(int volume) {
    if (volume >= 1e9) {
      return '${(volume / 1e9).toStringAsFixed(1)}B';
    } else if (volume >= 1e6) {
      return '${(volume / 1e6).toStringAsFixed(1)}M';
    } else if (volume >= 1e3) {
      return '${(volume / 1e3).toStringAsFixed(1)}K';
    } else {
      return volume.toString();
    }
  }
} 