import 'package:flutter/material.dart';

import 'screens/feature_screen.dart';
import 'screens/help_screen.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/register_screen.dart';
import 'screens/settings_screen.dart';

void main() {
  runApp(const PawPlanApp());
}

class PawPlanApp extends StatelessWidget {
  const PawPlanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Paw Plan',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF4F7B58)),
        scaffoldBackgroundColor: const Color(0xFFF7F8F4),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(centerTitle: true),
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
        ),
      ),
      initialRoute: LoginScreen.routeName,
      routes: {
        LoginScreen.routeName: (_) => const LoginScreen(),
        RegisterScreen.routeName: (_) => const RegisterScreen(),
        HomeScreen.routeName: (_) => const HomeScreen(),
        ProfileScreen.routeName: (_) => const ProfileScreen(),
        SettingsScreen.routeName: (_) => const SettingsScreen(),
        FeatureScreen.routeName: (_) => const FeatureScreen(),
        HelpScreen.routeName: (_) => const HelpScreen(),
      },
    );
  }
}
