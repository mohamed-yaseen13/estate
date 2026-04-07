import 'package:estate/core/routing/app_router.dart';
import 'package:estate/core/routing/app_routes.dart';
import 'package:estate/core/style/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EstateApp extends StatelessWidget {
  const EstateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.mainColor,
            appBarTheme: AppBarTheme(backgroundColor: AppColors.mainColor),
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.onBoardingScreen,
          onGenerateRoute: AppRouter.generateRoute,
          locale: const Locale('ar', 'AE'),
          supportedLocales: const [Locale('ar', 'AE')],
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
        );
      },
    );
  }
}
