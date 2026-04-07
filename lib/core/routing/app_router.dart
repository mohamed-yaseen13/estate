import 'package:estate/core/routing/app_routes.dart';
import 'package:estate/features/auth/login/ui/login_screen.dart';
import 'package:estate/features/home/ui/home_screen.dart';
import 'package:estate/features/on_boarding/ui/on_boarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
          settings: settings,
        );

      case AppRoutes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => OnBoardingScreen(),
          settings: settings,
        );

      case AppRoutes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
          settings: settings,
        );

      default:
        return null;
    }
  }
}
