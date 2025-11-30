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



  Widget _buildQuickActionsGrid(ThemeData theme, BuildContext context) {
    final actions = [
      QuickAction(
        icon: Icons.analytics,
        title: 'Analysis',
        color: Colors.purple,
        onTap: () => context.go('/analysis'),
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
        icon: Icons.person,
        title: 'Profile',
        color: Colors.blue,
        onTap: () => context.go('/profile'),
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