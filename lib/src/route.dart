import 'package:flutter/material.dart';

import 'pages/pages.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (_) => const HomePage());
    case '/colors':
      final args = settings.arguments as ColorsArgs;
      return MaterialPageRoute(
          builder: (_) => ColorsPage(totalPages: args.totalPages));
    case '/users':
      final args = settings.arguments as UsersArgs;
      return MaterialPageRoute(
          builder: (_) => UsersPage(totalPages: args.totalPages));
    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(
            child: Text.rich(
              TextSpan(
                text: 'No route defined for: ',
                children: [
                  TextSpan(
                    text: '${settings.name}',
                    style: const TextStyle(color: Colors.blue),
                  )
                ],
              ),
            ),
          ),
        ),
      );
  }
}
