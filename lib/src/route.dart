import 'package:flutter/material.dart';

import 'pages/pages.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (_) => const HomePage());
    case '/colors':
      return MaterialPageRoute(builder: (_) => const ColorsPage());
    case '/users':
      return MaterialPageRoute(builder: (_) => const UsersPage());
    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ),
      );
  }
}
