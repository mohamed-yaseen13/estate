import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/style/app_colors.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      child: Container(
        width: double.infinity,
        height: 70.h,
        decoration: BoxDecoration(
          color: AppColors.graySoft1,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.graySoft1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.graySoft1),
                    ),
                    isDense: true,
                    prefixIcon: SvgPicture.asset(
                      'assets/icons/search_icon.svg',
                    ),
                    hintText: 'ابحث عن منزل، شقة، إلخ',
                    hintStyle: AppTextStyles
                        .grayBarelyMediumColorRalewayRegularFamily400Weight12Size,
                    suffixIcon: SvgPicture.asset(
                      'assets/icons/search_suffix_icon.svg',
                    ),
                  ),
                ),
              ),
              SvgPicture.asset('assets/icons/filter_icon.svg'),
              horizontalSpace(8),
            ],
          ),
        ),
      ),
    );
  }
}
