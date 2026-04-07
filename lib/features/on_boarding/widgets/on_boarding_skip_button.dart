import 'package:estate/core/helpers/extensions.dart';
import 'package:estate/core/routing/app_routes.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingSkipButton extends StatelessWidget {
  const OnBoardingSkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 18.h),
      child: Align(
        alignment: Alignment.topLeft,
        child: TextButton(
          onPressed: () {
            context.pushNamed(AppRoutes.loginScreen);
          },
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.r),
              side: BorderSide(color: Color(0xFFE5E7EB)),
            ),
          ),
          child: Text(
            'تخطي',
            style: AppTextStyles
                .secondaryGray6ColorInterFontFamily400Weight12FontSize,
          ),
        ),
      ),
    );
  }
}
