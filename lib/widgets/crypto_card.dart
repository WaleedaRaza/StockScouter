// Crypto card widget temporarily disabled due to missing crypto model
// This widget will be reimplemented when the proper crypto model is available

/*
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
            const SizedBox(height: 16),
            // Volume Row
            if (crypto.volume != null)
              Row(
                children: [
                  Text(
                    'Volume (24h): ',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  Text(
                    _formatVolume(crypto.volume!),
                    style: theme.textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  if (crypto.circulatingSupply != null)
                    Text(
                      'Circulating: ${_formatSupply(crypto.circulatingSupply!)}',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                ],
              ),
            // Chart Section
            if (showChart && crypto.priceHistory != null && crypto.priceHistory!.isNotEmpty)
              Container(
                height: 120,
                margin: const EdgeInsets.only(top: 16),
                child: _buildPriceChart(crypto.priceHistory!),
              ),
            // Additional Info
            if (crypto.allTimeHigh != null || crypto.allTimeLow != null)
              Container(
                margin: const EdgeInsets.only(top: 16),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: theme.colorScheme.surfaceVariant.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    if (crypto.allTimeHigh != null) ...[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'All Time High',
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: theme.colorScheme.onSurfaceVariant,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              '\$${crypto.allTimeHigh!.toStringAsFixed(2)}',
                              style: theme.textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                    if (crypto.allTimeLow != null) ...[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'All Time Low',
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: theme.colorScheme.onSurfaceVariant,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              '\$${crypto.allTimeLow!.toStringAsFixed(2)}',
                              style: theme.textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildPriceChart(List<PricePoint> priceHistory) {
    if (priceHistory.isEmpty) return Container();

    final prices = priceHistory.map((point) => point.price).toList();
    final minPrice = prices.reduce((a, b) => a < b ? a : b);
    final maxPrice = prices.reduce((a, b) => a > b ? a : b);
    final priceRange = maxPrice - minPrice;

    return CustomPaint(
      size: const Size(double.infinity, 120),
      painter: _PriceChartPainter(
        prices: prices,
        minPrice: minPrice,
        maxPrice: maxPrice,
        priceRange: priceRange,
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
      return '\$${(volume / 1e9).toStringAsFixed(2)}B';
    } else if (volume >= 1e6) {
      return '\$${(volume / 1e6).toStringAsFixed(2)}M';
    } else {
      return '\$${volume.toStringAsFixed(0)}';
    }
  }

  String _formatSupply(double supply) {
    if (supply >= 1e9) {
      return '${(supply / 1e9).toStringAsFixed(2)}B';
    } else if (supply >= 1e6) {
      return '${(supply / 1e6).toStringAsFixed(2)}M';
    } else {
      return supply.toStringAsFixed(0);
    }
  }
}

class _PriceChartPainter extends CustomPainter {
  final List<double> prices;
  final double minPrice;
  final double maxPrice;
  final double priceRange;

  _PriceChartPainter({
    required this.prices,
    required this.minPrice,
    required this.maxPrice,
    required this.priceRange,
  });

  @override
  void paint(Canvas canvas, Size size) {
    if (prices.isEmpty) return;

    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    final path = Path();
    final width = size.width;
    final height = size.height;
    final stepX = width / (prices.length - 1);

    for (int i = 0; i < prices.length; i++) {
      final x = i * stepX;
      final normalizedPrice = priceRange > 0 ? (prices[i] - minPrice) / priceRange : 0.5;
      final y = height - (normalizedPrice * height);

      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
*/ 