import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  static const routeName = '/help';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Help & Support')),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Text(
            'How to use this app',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 12),
          const Text(
            'Member D can add FAQ, contact details, and assignment support text here.',
          ),
          const SizedBox(height: 24),
          const ListTile(
            leading: Icon(Icons.email_outlined),
            title: Text('Contact support'),
            subtitle: Text('support@example.com'),
          ),
          const ListTile(
            leading: Icon(Icons.article_outlined),
            title: Text('About assignment'),
            subtitle: Text('DMT321 Assignment 2 Flutter app'),
          ),
        ],
      ),
    );
  }
}
