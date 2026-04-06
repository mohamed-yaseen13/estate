import 'package:estate/core/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingPageDetails extends StatelessWidget {
  final OnboardingModel model;

  const OnBoardingPageDetails({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Organic Shape Area
        SizedBox(
          height: 350.h,
          width: 300.w,
          child: Stack(
            alignment: Alignment.center,
            children: [
              // BOTTOM IMAGE (With Background Color)
              Positioned(
                bottom: 20,
                left: 20,
                child: Container(
                  width: 200.w,
                  height: 200.w,
                  decoration: BoxDecoration(
                    color: const Color(
                      0xFF234F68,
                    ), // The specific blue background
                    shape: BoxShape.circle,
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      model.imageBottom,
                      fit: BoxFit.cover,
                      // Use opacity if you want the background color to bleed through
                      // color: Colors.white.withOpacity(0.2),
                      // colorBlendMode: BlendMode.lighten,
                    ),
                  ),
                ),
              ),

              // TOP IMAGE (No Background Color)
              Positioned(
                top: 20,
                right: 20,
                child: ClipOval(
                  child: Image.asset(
                    model.imageTop,
                    width: 220.w,
                    height: 220.w,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 50.h),

        // Text Sections
        Text(
          model.title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22.sp,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF2C4A5D),
          ),
        ),
        SizedBox(height: 15.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w),
          child: Text(
            model.subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14.sp, color: Colors.grey, height: 1.5),
          ),
        ),
      ],
    );
  }
}
