import 'package:circle/presentation/pages/home/home_page.dart';
import 'package:circle/presentation/pages/sign_in/sign_in_page.dart';
import 'package:circle/presentation/pages/splash/splash_plage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<dynamic>? generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context)=> const SplashPage());
      case "/sign-in":
        return MaterialPageRoute(builder: (context)=> const SignInPage());
      case "/home":
        return MaterialPageRoute(builder: (context)=> const HomePage());
      default:
        return null;
    }
  }
}
