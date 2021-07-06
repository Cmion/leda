import 'package:flutter/material.dart';
import 'package:leda/model/Product.dart';
import 'package:leda/screens/details/details_screen.dart';
import 'package:leda/screens/home/home_screen.dart';
import 'package:leda/screens/live_view/live_view_screen.dart';
import 'package:leda/utils/routes.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => Home());
      case productDetailsRoute:
        Product product = settings.arguments;
        return MaterialPageRoute(
            builder: (_) => Details(
                  product: product,
                ));
      case productLiveViewRoute:
        Product product = settings.arguments;
        return MaterialPageRoute(
            builder: (_) => LiveView(
                  product: product,
                ));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
