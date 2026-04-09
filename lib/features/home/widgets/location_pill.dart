import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/style/app_colors.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationPill extends StatelessWidget {
  const LocationPill({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.r),
        border: Border.all(color: AppColors.graySoft2),
      ),
      child: Row(
        children: [
          Icon(
            Icons.keyboard_arrow_down_rounded,
            color: AppColors.primaryDarkBlue,
            size: 16.sp,
          ),
          horizontalSpace(8),
          Text(
            'الرياض, السعوديه',
            style:
                AppTextStyles.grayDarkColorRalewayMediumFamily500Weight14Size,
          ),
          horizontalSpace(8),
          Icon(
            Icons.location_on,
            color: AppColors.primaryDarkBlue,
            size: 16.sp,
          ),
        ],
      ),
    );
  }
}
