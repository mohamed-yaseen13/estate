import 'package:estate/core/constants/app_constants.dart';
import 'package:estate/core/models/app_models.dart';
import 'package:estate/core/style/app_colors.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class EstateImageStack extends StatelessWidget {
  const EstateImageStack({super.key});

  @override
  Widget build(BuildContext context) {
    final EstateModel estate = AppConstants.estate;
    return Stack(
      children: [
        Positioned(
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(50.r),
            child: Image.asset(
              estate.coverImagePath,
              fit: BoxFit.cover,
              width: 327.w,
              height: 446.h,
            ),
          ),
        ),
        Positioned(
          top: 20.h,
          left: 270.w,
          child: Container(
            width: 44.w,
            height: 42.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withAlpha(204),
            ),
            child: Icon(Icons.chevron_left, size: 24.sp),
          ),
        ),
        Positioned(
          top: 20.h,
          left: 20.w,
          child: Container(
            width: 44.w,
            height: 42.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF8BC83F),
            ),
            child: Icon(Icons.favorite, color: Colors.white, size: 24.sp),
          ),
        ),
        Positioned(
          top: 20.h,
          left: 70.w,
          child: Container(
            width: 44.w,
            height: 42.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.graySoft1,
            ),
            child: Center(
              child: SvgPicture.asset(
                'assets/icons/upload_icon_small.svg',
                width: 18.w,
                height: 18.h,
              ),
            ),
          ),
        ),
        Positioned(
          top: 390.h,
          left: 230.w,
          child: Container(
            width: 82.w,
            height: 42.h,
            decoration: BoxDecoration(
              color: AppColors.primaryDarkBlue.withAlpha(180),
              borderRadius: BorderRadius.circular(25.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  'assets/icons/star_icon.svg',
                  width: 15.w,
                  height: 15.h,
                ),
                Text(
                  estate.rate,
                  style: AppTextStyles
                      .whiteColorMontserratBoldFamily700Weight14Size,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 390.h,
          left: 160.w,
          child: Container(
            width: 62.w,
            height: 40.h,
            decoration: BoxDecoration(
              color: AppColors.primaryDarkBlue.withAlpha(180),
              borderRadius: BorderRadius.circular(25.r),
            ),
            child: Center(
              child: Text(
                estate.type,
                style:
                    AppTextStyles.whiteColorRalewayMeduimFamily500Weight10Size,
              ),
            ),
          ),
        ),
        if (estate.imagesPath.isNotEmpty)
          Positioned(
            top: 230.h,
            left: 20.w,
            child: Container(
              width: 60.w,
              height: 60.h,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2.w),
                borderRadius: BorderRadius.circular(18.r),
              ),
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(18.r),
                child: Image.asset(
                  estate.imagesPath[0],
                  fit: BoxFit.cover,
                  width: 56.h,
                  height: 56.h,
                ),
              ),
            ),
          ),
        if (estate.imagesPath.length > 1)
          Positioned(
            top: 300.h,
            left: 20.w,
            child: Container(
              width: 60.w,
              height: 60.h,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2.w),
                borderRadius: BorderRadius.circular(18.r),
              ),
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(18.r),
                child: Image.asset(
                  estate.imagesPath[1],
                  fit: BoxFit.cover,
                  width: 56.h,
                  height: 56.h,
                ),
              ),
            ),
          ),
        if (estate.imagesPath.length > 2)
          Positioned(
            top: 370.h,
            left: 20.w,
            child: Container(
              width: 60.w,
              height: 60.h,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2.w),
                borderRadius: BorderRadius.circular(18.r),
              ),
              child: Stack(
                children: [
                  Positioned(
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(18.r),
                      child: Image.asset(
                        estate.imagesPath[2],
                        fit: BoxFit.cover,
                        width: 56.h,
                        height: 56.h,
                      ),
                    ),
                  ),
                  if (estate.numberOfImages > 3)
                    Center(
                      child: Text(
                        '${estate.numberOfImages - 3}+',
                        style: AppTextStyles
                            .graySoft2ColorMontserratMediumFamily500Weight18Size,
                      ),
                    ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
