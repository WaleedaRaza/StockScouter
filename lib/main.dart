import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'constants/theme_constants.dart';
import 'screens/dashboard_screen.dart';

import 'screens/portfolio_screen.dart';
import 'screens/news_screen.dart';


import 'screens/profile_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/ticker_input_screen.dart';
import 'screens/universal_analysis_screen.dart';

void main() {
  runApp(
    const ProviderScope(
      child: SynapseFinanceApp(),
    ),
  );
}

class SynapseFinanceApp extends ConsumerWidget {
  const SynapseFinanceApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'Synapse Finance',
      theme: ThemeConstants.lightTheme,
      darkTheme: ThemeConstants.darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
    );
  }
}

final _router = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return ScaffoldWithNavigation(child: child);
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const DashboardScreen(),
        ),

        GoRoute(
          path: '/portfolio',
          builder: (context, state) => const PortfolioScreen(),
        ),
        GoRoute(
          path: '/news',
          builder: (context, state) => const NewsScreen(),
        ),

        GoRoute(
          path: '/analysis',
          builder: (context, state) => const TickerInputScreen(),
        ),
        GoRoute(
          path: '/analysis/:ticker',
          builder: (context, state) => UniversalAnalysisScreen(
            ticker: state.pathParameters['ticker']!,
          ),
        ),
        GoRoute(
          path: '/profile',
          builder: (context, state) => const ProfileScreen(),
        ),
        GoRoute(
          path: '/settings',
          builder: (context, state) => const SettingsScreen(),
        ),
      ],
    ),
  ],
);

class ScaffoldWithNavigation extends StatefulWidget {
  final Widget child;

  const ScaffoldWithNavigation({
    super.key,
    required this.child,
  });

  @override
  State<ScaffoldWithNavigation> createState() => _ScaffoldWithNavigationState();
}

class _ScaffoldWithNavigationState extends State<ScaffoldWithNavigation> {
  int _currentIndex = 0;

  final List<NavigationItem> _navigationItems = [
    NavigationItem(
      icon: Icons.dashboard,
      label: 'Dashboard',
      route: '/',
    ),

    NavigationItem(
      icon: Icons.account_balance_wallet,
      label: 'Portfolio',
      route: '/portfolio',
    ),
    NavigationItem(
      icon: Icons.article,
      label: 'News',
      route: '/news',
    ),

    NavigationItem(
      icon: Icons.analytics,
      label: 'Analysis',
      route: '/analysis',
    ),
    NavigationItem(
      icon: Icons.person,
      label: 'Profile',
      route: '/profile',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final currentRoute = GoRouterState.of(context).uri.path;

    return Scaffold(
      body: widget.child,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _navigationItems.asMap().entries.map((entry) {
                final index = entry.key;
                final item = entry.value;
                final isSelected = currentRoute == item.route;

                return GestureDetector(
                  onTap: () {
                    if (!isSelected) {
                      context.go(item.route);
                    }
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        item.icon,
                        color: isSelected
                            ? theme.colorScheme.primary
                            : theme.colorScheme.onSurfaceVariant,
                        size: 24,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        item.label,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: isSelected
                              ? theme.colorScheme.primary
                              : theme.colorScheme.onSurfaceVariant,
                          fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}

class NavigationItem {
  final IconData icon;
  final String label;
  final String route;

  NavigationItem({
    required this.icon,
    required this.label,
    required this.route,
  });
}
