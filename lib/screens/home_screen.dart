import 'package:flutter/material.dart';

import 'feature_screen.dart';
import 'help_screen.dart';
import 'profile_screen.dart';
import 'settings_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    final menuItems = [
      _HomeMenuItem(
        title: 'Tasks',
        subtitle: 'Open the CRUD feature screen',
        icon: Icons.checklist,
        routeName: FeatureScreen.routeName,
      ),
      _HomeMenuItem(
        title: 'Profile',
        subtitle: 'View user information',
        icon: Icons.person,
        routeName: ProfileScreen.routeName,
      ),
      _HomeMenuItem(
        title: 'Settings',
        subtitle: 'App preferences',
        icon: Icons.settings,
        routeName: SettingsScreen.routeName,
      ),
      _HomeMenuItem(
        title: 'Help',
        subtitle: 'Support and about page',
        icon: Icons.help_outline,
        routeName: HelpScreen.routeName,
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: menuItems.length + 1,
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          if (index == 0) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome back',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Member C can replace this dashboard with real summary data.',
                    ),
                  ],
                ),
              ),
            );
          }

          final item = menuItems[index - 1];
          return Card(
            child: ListTile(
              leading: Icon(item.icon),
              title: Text(item.title),
              subtitle: Text(item.subtitle),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => Navigator.pushNamed(context, item.routeName),
            ),
          );
        },
      ),
    );
  }
}

class _HomeMenuItem {
  const _HomeMenuItem({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.routeName,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final String routeName;
}
