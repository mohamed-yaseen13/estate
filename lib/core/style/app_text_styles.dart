import 'package:estate/core/style/app_colors.dart';
import 'package:estate/core/style/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  static TextStyle secondaryGray6ColorInterFontFamily400Weight12FontSize =
      TextStyle(
        fontFamily: AppFonts.inter,
        color: AppColors.secondaryGray6,
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
      );

  static TextStyle whiteColorInterFontFamily400Weight18FontSize = TextStyle(
    fontFamily: AppFonts.inter,
    color: Colors.white,
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle secondaryGray8ColorInterFontFamily400Wight24FontSize =
      TextStyle(
        color: AppColors.secondaryGray8,
        fontFamily: AppFonts.inter,
        fontSize: 24.sp,
        fontWeight: FontWeight.w400,
      );

  static TextStyle secondaryGray4ColorInterFontFamily400Weight12FontSize =
      TextStyle(
        color: AppColors.secondaryGray4,
        fontFamily: AppFonts.inter,
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
      );
}
