import 'package:flutter/material.dart';

class ColorsPage extends StatelessWidget {
  static const routeName = '/colors';
  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors'),
      ),
      body: const Center(
        child: Text('data'),
      ),
    );
  }
}
