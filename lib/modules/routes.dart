import 'package:flutter/material.dart';
import 'chuck_norris/pages/categories/categories_page.dart';
import 'chuck_norris/pages/jokes/joke_page.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final routes = <String, WidgetBuilder>{
      '/': (context) => const CategoriesPage(),
      '/joke': (context) => JokePage(category: settings.arguments as String),
    };

    WidgetBuilder? builder = routes[settings.name!];

    return MaterialPageRoute(
        builder: (ctx) => builder!(ctx), settings: settings);
  }
}
