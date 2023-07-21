// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:g5amst/models/product.dart';
import 'package:g5amst/views/cart/cart_view.dart';
import 'package:g5amst/views/home/home_view.dart';
import 'package:g5amst/views/login/login_view.dart';
import 'package:g5amst/views/product/product_view.dart';
import 'package:g5amst/views/register/register_view.dart';
import 'package:g5amst/views/splash.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashView());
      case '/login':
        return MaterialPageRoute(builder: (_) => const LoginView());
      case '/register':
        return MaterialPageRoute(builder: (_) => const Registerview());
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomeView());
      case '/product-view':
        Product _product = args as Product;
        return MaterialPageRoute(builder: (_) => ProductView(_product));
      case '/cart-view':
        return MaterialPageRoute(builder: (_) => const CartView());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Error"),
          centerTitle: true,
        ),
        body: const Center(
          child: Text("ERROR"),
        ),
      );
    });
  }
}
