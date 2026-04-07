import 'package:estate/core/constants/app_constants.dart';
import 'package:estate/core/style/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingDots extends StatelessWidget {
  final int currentIndex;

  const OnBoardingDots({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        AppConstants.pages.length,
        (index) => Container(
          margin: EdgeInsets.symmetric(horizontal: 4.w),
          height: 8.h,
          width: currentIndex == index ? 28.w : 10.w,
          decoration: BoxDecoration(
            color: currentIndex == index
                ? AppColors.primaryDarkBlue
                : AppColors.secondaryGray3,
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
      ),
    );
  }
}
