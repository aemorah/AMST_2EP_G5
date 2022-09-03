

import 'package:examen2mora_guzman_mora/ui/views/home/home_view.dart';
import 'package:examen2mora_guzman_mora/ui/views/login.dart';
import 'package:flutter/material.dart';
import 'views/splash.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SplashView());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginView());
      case '/home':
        return MaterialPageRoute(builder: (_) => HomeView());
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

