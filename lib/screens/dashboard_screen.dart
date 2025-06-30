import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome to',
                        style: theme.textTheme.bodyLarge?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                      Text(
                        'Synapse Finance',
                        style: theme.textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: theme.colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.notifications_outlined,
                      color: theme.colorScheme.onSurface,
                    ),
                    onPressed: () {
                      // Handle notifications
                    },
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Market Overview Card
              _buildMarketOverviewCard(theme),
              const SizedBox(height: 16),

              // Quick Actions
              Text(
                'Quick Actions',
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              _buildQuickActionsGrid(theme, context),
              const SizedBox(height: 24),

              // Recent Activity
              Text(
                'Recent Activity',
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              _buildRecentActivityList(theme),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMarketOverviewCard(ThemeData theme) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            theme.colorScheme.primary,
            theme.colorScheme.primary.withOpacity(0.8),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary.withOpacity(0.3),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Market Overview',
                style: theme.textTheme.titleMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.trending_up,
                color: Colors.white,
                size: 24,
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildMarketIndex(theme, 'S&P 500', '4,567.89', '+1.2%', true),
              _buildMarketIndex(theme, 'NASDAQ', '14,234.56', '+0.8%', true),
              _buildMarketIndex(theme, 'DOW', '35,678.90', '-0.3%', false),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMarketIndex(ThemeData theme, String name, String value, String change, bool isPositive) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: theme.textTheme.bodySmall?.copyWith(
            color: Colors.white.withOpacity(0.8),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: theme.textTheme.titleMedium?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 2),
        Row(
          children: [
            Icon(
              isPositive ? Icons.trending_up : Icons.trending_down,
              color: isPositive ? Colors.green[300] : Colors.red[300],
              size: 12,
            ),
            const SizedBox(width: 2),
            Text(
              change,
              style: theme.textTheme.bodySmall?.copyWith(
                color: isPositive ? Colors.green[300] : Colors.red[300],
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildQuickActionsGrid(ThemeData theme, BuildContext context) {
    final actions = [
      QuickAction(
        icon: Icons.trending_up,
        title: 'Market',
        color: Colors.blue,
        onTap: () => context.go('/market'),
      ),
      QuickAction(
        icon: Icons.account_balance_wallet,
        title: 'Portfolio',
        color: Colors.green,
        onTap: () => context.go('/portfolio'),
      ),
      QuickAction(
        icon: Icons.article,
        title: 'News',
        color: Colors.orange,
        onTap: () => context.go('/news'),
      ),
      QuickAction(
        icon: Icons.analytics,
        title: 'Analysis',
        color: Colors.purple,
        onTap: () => context.go('/analysis'),
      ),
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 1.5,
      ),
      itemCount: actions.length,
      itemBuilder: (context, index) {
        final action = actions[index];
        return _buildQuickActionCard(theme, action);
      },
    );
  }

  Widget _buildQuickActionCard(ThemeData theme, QuickAction action) {
    return GestureDetector(
      onTap: action.onTap,
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: action.color.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                action.icon,
                color: action.color,
                size: 24,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              action.title,
              style: theme.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecentActivityList(ThemeData theme) {
    final activities = [
      ActivityItem(
        title: 'AAPL purchased',
        subtitle: '10 shares at \$150.25',
        time: '2 hours ago',
        type: ActivityType.buy,
      ),
      ActivityItem(
        title: 'TSLA sold',
        subtitle: '5 shares at \$245.80',
        time: '1 day ago',
        type: ActivityType.sell,
      ),
      ActivityItem(
        title: 'Portfolio updated',
        subtitle: 'Market close values',
        time: '2 days ago',
        type: ActivityType.update,
      ),
    ];

    return Column(
      children: activities.map((activity) => _buildActivityItem(theme, activity)).toList(),
    );
  }

  Widget _buildActivityItem(ThemeData theme, ActivityItem activity) {
    IconData icon;
    Color color;

    switch (activity.type) {
      case ActivityType.buy:
        icon = Icons.trending_up;
        color = Colors.green;
        break;
      case ActivityType.sell:
        icon = Icons.trending_down;
        color = Colors.red;
        break;
      case ActivityType.update:
        icon = Icons.update;
        color = Colors.blue;
        break;
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: theme.colorScheme.outline.withOpacity(0.1),
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              icon,
              color: color,
              size: 20,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  activity.title,
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  activity.subtitle,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
          Text(
            activity.time,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}

class QuickAction {
  final IconData icon;
  final String title;
  final Color color;
  final VoidCallback onTap;

  QuickAction({
    required this.icon,
    required this.title,
    required this.color,
    required this.onTap,
  });
}

class ActivityItem {
  final String title;
  final String subtitle;
  final String time;
  final ActivityType type;

  ActivityItem({
    required this.title,
    required this.subtitle,
    required this.time,
    required this.type,
  });
}

enum ActivityType { buy, sell, update } 