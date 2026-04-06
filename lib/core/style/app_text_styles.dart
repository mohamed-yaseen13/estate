import 'package:estate/core/style/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  static TextStyle secondaryGrayColorInterFontFamily400Weight12FontSize =
      TextStyle(
        fontFamily: 'Inter',
        color: AppColors.secondaryGray,
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
      );

  static TextStyle whiteColorInterFontFamily400Weight18FontSize = TextStyle(
    fontFamily: 'Inter',
    color: Colors.white,
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
  );
}
