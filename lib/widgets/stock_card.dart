import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../models/stock_model.dart';
import '../constants/theme_constants.dart';

class StockCard extends StatelessWidget {
  final Stock stock;
  final VoidCallback? onTap;
  final VoidCallback? onFavorite;
  final bool isFavorite;
  final bool showChart;

  const StockCard({
    super.key,
    required this.stock,
    this.onTap,
    this.onFavorite,
    this.isFavorite = false,
    this.showChart = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isPositive = stock.priceChangePercent != null && stock.priceChangePercent! >= 0;
    final changeColor = isPositive ? Colors.green : Colors.red;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: theme.colorScheme.outline.withOpacity(0.1),
          ),
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
                // Stock Logo/Icon
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: stock.logoUrl != null
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: CachedNetworkImage(
                            imageUrl: stock.logoUrl!,
                            fit: BoxFit.cover,
                            placeholder: (context, url) => Icon(
                              Icons.business,
                              color: theme.colorScheme.primary,
                              size: 20,
                            ),
                            errorWidget: (context, url, error) => Icon(
                              Icons.business,
                              color: theme.colorScheme.primary,
                              size: 20,
                            ),
                          ),
                        )
                      : Icon(
                          Icons.business,
                          color: theme.colorScheme.primary,
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
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        stock.name,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
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
                      color: isFavorite ? Colors.red : theme.colorScheme.onSurfaceVariant,
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
                        '\$${stock.currentPrice?.toStringAsFixed(2) ?? '0.00'}',
                        style: theme.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
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
                            '${stock.priceChangePercent?.toStringAsFixed(2) ?? '0.00'}%',
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: changeColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '\$${stock.priceChange?.toStringAsFixed(2) ?? '0.00'}',
                            style: theme.textTheme.bodyMedium?.copyWith(
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
                if (stock.marketCap != null)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Market Cap',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        _formatMarketCap(stock.marketCap!),
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
            // Volume and Additional Info
            if (stock.volume != null || stock.peRatio != null || stock.dividendYield != null)
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Row(
                  children: [
                    if (stock.volume != null) ...[
                      _buildInfoChip(
                        theme,
                        'Vol: ${_formatVolume(stock.volume!)}',
                        Icons.bar_chart,
                      ),
                      const SizedBox(width: 8),
                    ],
                    if (stock.peRatio != null) ...[
                      _buildInfoChip(
                        theme,
                        'P/E: ${stock.peRatio!.toStringAsFixed(2)}',
                        Icons.analytics,
                      ),
                      const SizedBox(width: 8),
                    ],
                    if (stock.dividendYield != null) ...[
                      _buildInfoChip(
                        theme,
                        'Div: ${stock.dividendYield!.toStringAsFixed(2)}%',
                        Icons.account_balance,
                      ),
                    ],
                  ],
                ),
              ),
            // Mini Chart
            if (showChart && stock.priceHistory.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: SizedBox(
                  height: 60,
                  child: _buildMiniChart(theme, stock.priceHistory),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoChip(ThemeData theme, String label, IconData icon) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceVariant.withOpacity(0.3),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 12,
            color: theme.colorScheme.onSurfaceVariant,
          ),
          const SizedBox(width: 4),
          Text(
            label,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMiniChart(ThemeData theme, List<PricePoint> priceHistory) {
    if (priceHistory.isEmpty) return const SizedBox.shrink();

    final prices = priceHistory.map((point) => point.price).toList();
    final minPrice = prices.reduce((a, b) => a < b ? a : b);
    final maxPrice = prices.reduce((a, b) => a > b ? a : b);
    final priceRange = maxPrice - minPrice;

    return CustomPaint(
      size: const Size(double.infinity, 60),
      painter: _StockChartPainter(
        prices: prices,
        minPrice: minPrice,
        priceRange: priceRange,
        color: theme.colorScheme.primary,
        isPositive: priceHistory.last.price >= priceHistory.first.price,
      ),
    );
  }

  String _formatMarketCap(double marketCap) {
    if (marketCap >= 1e12) {
      return '\$${(marketCap / 1e12).toStringAsFixed(2)}T';
    } else if (marketCap >= 1e9) {
      return '\$${(marketCap / 1e9).toStringAsFixed(2)}B';
    } else if (marketCap >= 1e6) {
      return '\$${(marketCap / 1e6).toStringAsFixed(2)}M';
    } else {
      return '\$${marketCap.toStringAsFixed(0)}';
    }
  }

  String _formatVolume(double volume) {
    if (volume >= 1e9) {
      return '${(volume / 1e9).toStringAsFixed(2)}B';
    } else if (volume >= 1e6) {
      return '${(volume / 1e6).toStringAsFixed(2)}M';
    } else if (volume >= 1e3) {
      return '${(volume / 1e3).toStringAsFixed(2)}K';
    } else {
      return volume.toStringAsFixed(0);
    }
  }
}

class _StockChartPainter extends CustomPainter {
  final List<double> prices;
  final double minPrice;
  final double priceRange;
  final Color color;
  final bool isPositive;

  _StockChartPainter({
    required this.prices,
    required this.minPrice,
    required this.priceRange,
    required this.color,
    required this.isPositive,
  });

  @override
  void paint(Canvas canvas, Size size) {
    if (prices.isEmpty) return;

    final paint = Paint()
      ..color = isPositive ? Colors.green : Colors.red
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    final fillPaint = Paint()
      ..color = (isPositive ? Colors.green : Colors.red).withOpacity(0.1)
      ..style = PaintingStyle.fill;

    final path = Path();
    final fillPath = Path();

    final stepX = size.width / (prices.length - 1);
    final stepY = size.height / priceRange;

    for (int i = 0; i < prices.length; i++) {
      final x = i * stepX;
      final y = size.height - ((prices[i] - minPrice) * stepY);

      if (i == 0) {
        path.moveTo(x, y);
        fillPath.moveTo(x, size.height);
        fillPath.lineTo(x, y);
      } else {
        path.lineTo(x, y);
        fillPath.lineTo(x, y);
      }
    }

    fillPath.lineTo(size.width, size.height);
    fillPath.close();

    canvas.drawPath(fillPath, fillPaint);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
} 