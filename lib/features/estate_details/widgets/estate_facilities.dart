import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/style/app_colors.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class EstateFacilities extends StatelessWidget {
  const EstateFacilities({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'الموقع والمرافق العامة',
          style: AppTextStyles.secondaryGray8ColorInterFamily600Weight16Size,
        ),
        verticalSpace(8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 82.w,
              height: 30.h,
              decoration: BoxDecoration(
                color: AppColors.graySoft5,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SvgPicture.asset('assets/icons/hospital_icon.svg'),
                  Text(
                    'مستشفى',
                    style: AppTextStyles
                        .secondaryGray8ColorInterFamily500Weight12Size,
                  ),
                ],
              ),
            ),
            Container(
              width: 107.w,
              height: 30.h,
              decoration: BoxDecoration(
                color: AppColors.graySoft5,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SvgPicture.asset('assets/icons/gas_pump_icon.svg'),
                  Text(
                    'محطات الوقود',
                    style: AppTextStyles
                        .secondaryGray8ColorInterFamily500Weight12Size,
                  ),
                ],
              ),
            ),
            Container(
              width: 58.w,
              height: 30.h,
              decoration: BoxDecoration(
                color: AppColors.graySoft5,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SvgPicture.asset('assets/icons/bag_icon.svg'),
                  Text(
                    'مول',
                    style: AppTextStyles
                        .secondaryGray8ColorInterFamily500Weight12Size,
                  ),
                ],
              ),
            ),
            Container(
              width: 67.w,
              height: 30.h,
              decoration: BoxDecoration(
                color: AppColors.graySoft5,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SvgPicture.asset('assets/icons/mosque_icon.svg'),
                  Text(
                    'مسجد',
                    style: AppTextStyles
                        .secondaryGray8ColorInterFamily500Weight12Size,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
