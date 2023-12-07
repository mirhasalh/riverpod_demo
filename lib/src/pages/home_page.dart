import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Riverpod Demo'),
      ),
      body: Column(
        children: [
          OutlinedButton(
            onPressed: () {},
            child: const Text('To colors page'),
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text('To users page'),
          ),
        ],
      ),
    );
  }
}
