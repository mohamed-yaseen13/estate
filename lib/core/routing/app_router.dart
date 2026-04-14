import 'package:estate/core/routing/app_routes.dart';
import 'package:estate/features/add_estate/ui/add_estate_screen1.dart';
import 'package:estate/features/add_estate/ui/add_estate_screen2.dart';
import 'package:estate/features/add_estate/ui/add_estate_screen3.dart';
import 'package:estate/features/auth/login/ui/login_screen.dart';
import 'package:estate/features/auth/new_password/ui/new_password_screen.dart';
import 'package:estate/features/auth/new_password/ui/success_new_password_screen.dart';
import 'package:estate/features/auth/reset_password/ui/reset_password_screen.dart';
import 'package:estate/features/auth/signup/ui/signup_screen.dart';
import 'package:estate/features/auth/verify_code/ui/verify_code_screen.dart';
import 'package:estate/features/estate_details/ui/estate_details_screen.dart';
import 'package:estate/features/home/ui/home_screen.dart';
import 'package:estate/features/like/ui/like_screen.dart';
import 'package:estate/features/location/ui/setup_location_screen.dart';
import 'package:estate/features/notification/ui/notification_screen.dart';
import 'package:estate/features/on_boarding/ui/on_boarding_screen.dart';
import 'package:estate/features/profile/ui/profile_screen.dart';
import 'package:estate/features/reserve/ui/reserve_screen.dart';
import 'package:estate/features/reserve_confirmation/ui/reserve_confirmation_screen.dart';
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

      case AppRoutes.signupScreen:
        return MaterialPageRoute(
          builder: (_) => SignupScreen(),
          settings: settings,
        );

      case AppRoutes.resetPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => ResetPasswordScreen(),
          settings: settings,
        );

      case AppRoutes.verifyCodeScreen:
        return MaterialPageRoute(
          builder: (_) => VerifyCodeScreen(),
          settings: settings,
        );

      case AppRoutes.newPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => NewPasswordScreen(),
          settings: settings,
        );

      case AppRoutes.successNewPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => SuccessNewPasswordScreen(),
          settings: settings,
        );

      case AppRoutes.profileScreen:
        return MaterialPageRoute(
          builder: (_) => ProfileScreen(),
          settings: settings,
        );

      case AppRoutes.reserveScreen:
        return MaterialPageRoute(
          builder: (_) => ReserveScreen(),
          settings: settings,
        );

      case AppRoutes.likeScreen:
        return MaterialPageRoute(
          builder: (_) => LikeScreen(),
          settings: settings,
        );

      case AppRoutes.setupLocationScreen:
        return MaterialPageRoute(
          builder: (_) => SetupLocationScreen(),
          settings: settings,
        );

      case AppRoutes.notificationScreen:
        return MaterialPageRoute(
          builder: (_) => NotificationScreen(),
          settings: settings,
        );

      case AppRoutes.addEstateScreen1:
        return MaterialPageRoute(
          builder: (_) => AddEstateScreen1(),
          settings: settings,
        );

      case AppRoutes.addEstateScreen2:
        return MaterialPageRoute(
          builder: (_) => AddEstateScreen2(),
          settings: settings,
        );

      case AppRoutes.addEstateScreen3:
        return MaterialPageRoute(
          builder: (_) => AddEstateScreen3(),
          settings: settings,
        );

      case AppRoutes.estateDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => EstateDetailsScreen(),
          settings: settings,
        );

      case AppRoutes.reserveConfirmationScreen:
        return MaterialPageRoute(
          builder: (_) => ReserveConfirmationScreen(),
          settings: settings,
        );

      default:
        return null;
    }
  }
}
