import 'package:flutter/material.dart';

import 'home_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  static const routeName = '/register';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Registration')),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Text(
            'Member B: add registration form logic here.',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 24),
          const TextField(decoration: InputDecoration(labelText: 'Full name')),
          const SizedBox(height: 16),
          const TextField(decoration: InputDecoration(labelText: 'Email')),
          const SizedBox(height: 16),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(labelText: 'Password'),
          ),
          const SizedBox(height: 24),
          FilledButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, HomeScreen.routeName);
            },
            child: const Text('Sign Up'),
          ),
        ],
      ),
    );
  }
}
