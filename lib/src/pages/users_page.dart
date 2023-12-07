import 'package:flutter/material.dart';

class UsersPage extends StatelessWidget {
  static const routeName = '/users';
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
      ),
      body: const Center(
        child: Text('data'),
      ),
    );
  }
}
