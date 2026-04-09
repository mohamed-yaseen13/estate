import 'package:estate/core/helpers/extensions.dart';
import 'package:estate/core/routing/app_routes.dart';
import 'package:estate/core/style/app_colors.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppSkipButton extends StatelessWidget {
  const AppSkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: TextButton(
        onPressed: () {
          context.pushNamed(AppRoutes.loginScreen);
        },
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.r),
            side: BorderSide(color: AppColors.secondaryGray2),
          ),
        ),
        child: Text(
          'تخطي',
          style: AppTextStyles.secondaryGray6ColorInterFamily400Weight12Size,
        ),
      ),
    );
  }
}
