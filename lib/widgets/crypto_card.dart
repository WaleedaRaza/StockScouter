import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../models/crypto_model.dart';
import '../constants/theme_constants.dart';

class CryptoCard extends StatelessWidget {
  final Crypto crypto;
  final VoidCallback? onTap;
  final VoidCallback? onFavorite;
  final bool isFavorite;
  final bool showChart;

  const CryptoCard({
    super.key,
    required this.crypto,
    this.onTap,
    this.onFavorite,
    this.isFavorite = false,
    this.showChart = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isPositive = crypto.priceChangePercent != null && crypto.priceChangePercent! >= 0;
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
                // Crypto Logo
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.secondary.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: crypto.logoUrl != null
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: CachedNetworkImage(
                            imageUrl: crypto.logoUrl!,
                            fit: BoxFit.cover,
                            placeholder: (context, url) => Icon(
                              Icons.currency_bitcoin,
                              color: theme.colorScheme.secondary,
                              size: 20,
                            ),
                            errorWidget: (context, url, error) => Icon(
                              Icons.currency_bitcoin,
                              color: theme.colorScheme.secondary,
                              size: 20,
                            ),
                          ),
                        )
                      : Icon(
                          Icons.currency_bitcoin,
                          color: theme.colorScheme.secondary,
                          size: 20,
                        ),
                ),
                const SizedBox(width: 12),
                // Crypto Info
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        crypto.symbol.toUpperCase(),
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        crypto.name,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                // Rank
                if (crypto.rank != null)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surfaceVariant.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      '#${crypto.rank}',
                      style: theme.textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w500,
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                const SizedBox(width: 8),
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
                        '\$${crypto.currentPrice?.toStringAsFixed(2) ?? '0.00'}',
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
                            '${crypto.priceChangePercent?.toStringAsFixed(2) ?? '0.00'}%',
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: changeColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '\$${crypto.priceChange?.toStringAsFixed(2) ?? '0.00'}',
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
                if (crypto.marketCap != null)
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
                        _formatMarketCap(crypto.marketCap!),
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
            // Additional Info Row
            if (crypto.volume != null || crypto.circulatingSupply != null || crypto.maxSupply != null)
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Row(
                  children: [
                    if (crypto.volume != null) ...[
                      _buildInfoChip(
                        theme,
                        'Vol: ${_formatVolume(crypto.volume!)}',
                        Icons.bar_chart,
                      ),
                      const SizedBox(width: 8),
                    ],
                    if (crypto.circulatingSupply != null) ...[
                      _buildInfoChip(
                        theme,
                        'Circ: ${_formatSupply(crypto.circulatingSupply!)}',
                        Icons.token,
                      ),
                      const SizedBox(width: 8),
                    ],
                    if (crypto.maxSupply != null) ...[
                      _buildInfoChip(
                        theme,
                        'Max: ${_formatSupply(crypto.maxSupply!)}',
                        Icons.all_inclusive,
                      ),
                    ],
                  ],
                ),
              ),
            // 24h High/Low
            if (crypto.high24h != null || crypto.low24h != null)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    if (crypto.high24h != null) ...[
                      _buildInfoChip(
                        theme,
                        '24h High: \$${crypto.high24h!.toStringAsFixed(2)}',
                        Icons.trending_up,
                        color: Colors.green,
                      ),
                      const SizedBox(width: 8),
                    ],
                    if (crypto.low24h != null) ...[
                      _buildInfoChip(
                        theme,
                        '24h Low: \$${crypto.low24h!.toStringAsFixed(2)}',
                        Icons.trending_down,
                        color: Colors.red,
                      ),
                    ],
                  ],
                ),
              ),
            // Mini Chart
            if (showChart && crypto.priceHistory.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: SizedBox(
                  height: 60,
                  child: _buildMiniChart(theme, crypto.priceHistory),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoChip(ThemeData theme, String label, IconData icon, {Color? color}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: (color ?? theme.colorScheme.surfaceVariant).withOpacity(0.3),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 12,
            color: color ?? theme.colorScheme.onSurfaceVariant,
          ),
          const SizedBox(width: 4),
          Text(
            label,
            style: theme.textTheme.bodySmall?.copyWith(
              color: color ?? theme.colorScheme.onSurfaceVariant,
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
      painter: _CryptoChartPainter(
        prices: prices,
        minPrice: minPrice,
        priceRange: priceRange,
        color: theme.colorScheme.secondary,
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

  String _formatSupply(double supply) {
    if (supply >= 1e9) {
      return '${(supply / 1e9).toStringAsFixed(2)}B';
    } else if (supply >= 1e6) {
      return '${(supply / 1e6).toStringAsFixed(2)}M';
    } else if (supply >= 1e3) {
      return '${(supply / 1e3).toStringAsFixed(2)}K';
    } else {
      return supply.toStringAsFixed(0);
    }
  }
}

class _CryptoChartPainter extends CustomPainter {
  final List<double> prices;
  final double minPrice;
  final double priceRange;
  final Color color;
  final bool isPositive;

  _CryptoChartPainter({
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