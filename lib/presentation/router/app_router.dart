import 'package:circle/domain/entities/app_user.dart';
import 'package:circle/presentation/pages/chat/chat_page.dart';

import '../pages/home/home_page.dart';
import '../pages/search/search_page.dart';
import '../pages/sign_in/sign_in_page.dart';
import '../pages/splash/splash_plage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<dynamic>? generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => const SplashPage());
      case "/sign-in":
        return MaterialPageRoute(builder: (context) => const SignInPage());
      case "/home":
        return MaterialPageRoute(builder: (context) => const HomePage());
      case "/search":
        return MaterialPageRoute(builder: (context) => const SearchPage());
      case "/chat":
        final user = settings.arguments! as AppUser;
        return MaterialPageRoute(builder: (context) => ChatPage(user: user));
      default:
        return null;
    }
  }
}
