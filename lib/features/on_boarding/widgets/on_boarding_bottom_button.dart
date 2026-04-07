import 'package:estate/core/constants/app_constants.dart';
import 'package:estate/core/helpers/extensions.dart';
import 'package:estate/core/routing/app_routes.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingBottomButton extends StatelessWidget {
  final int currentIndex;
  final PageController pageController;

  const OnBoardingBottomButton({
    super.key,
    required this.currentIndex,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55.h,
      child: ElevatedButton(
        onPressed: () {
          if (currentIndex < AppConstants.pages.length - 1) {
            pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn,
            );
          } else {
            context.pushReplacementNamed(AppRoutes.loginScreen);
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF234F68),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        child: Text(
          currentIndex == AppConstants.pages.length - 1
              ? 'ابدأ الآن'
              : 'التالي',
          style: AppTextStyles.whiteColorInterFontFamily400Weight18FontSize,
        ),
      ),
    );
  }
}
