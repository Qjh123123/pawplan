import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: const [
          CircleAvatar(radius: 44, child: Icon(Icons.person, size: 44)),
          SizedBox(height: 24),
          TextField(decoration: InputDecoration(labelText: 'Name')),
          SizedBox(height: 16),
          TextField(decoration: InputDecoration(labelText: 'Email')),
          SizedBox(height: 16),
          TextField(decoration: InputDecoration(labelText: 'Course / Group')),
          SizedBox(height: 24),
          Text('Member B: add profile display or edit function here.'),
        ],
      ),
    );
  }
}
