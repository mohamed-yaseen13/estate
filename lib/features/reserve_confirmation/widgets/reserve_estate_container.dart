import 'package:estate/core/constants/app_constants.dart';
import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/style/app_colors.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:estate/features/reserve_confirmation/models/reserve_estate_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReserveEstateContainer extends StatelessWidget {
  const ReserveEstateContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final ReserveEstateModel estate = AppConstants.reserveEstate;
    return Container(
      width: double.infinity,
      height: 180.h,
      decoration: BoxDecoration(
        color: AppColors.graySoft1,
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 12.w,
          top: 12.h,
          bottom: 12.h,
          right: 24.w,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  estate.block,
                  style:
                      AppTextStyles.grayDarkColorLatoBoldFamily700Weight16Size,
                ),
                verticalSpace(8),
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/location_icon.svg'),
                    horizontalSpace(2),
                    Text(
                      estate.location,
                      style: AppTextStyles
                          .grayMediumColorLatoRegularFamily400Weight8Size,
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  width: 69.w,
                  height: 47.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  child: Center(
                    child: Text(
                      estate.isSell ? 'بيع' : 'إيجار',
                      style: AppTextStyles
                          .grayDarkColorLatoMediumFamily500Weight10Size,
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Positioned(
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(18.r),
                    child: Image.asset(
                      estate.imagePath,
                      width: 168.w,
                      height: 140.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 8.h,
                  left: 8.w,
                  child: Container(
                    width: 25.w,
                    height: 25.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withAlpha(204),
                    ),
                    child: Icon(Icons.favorite_outline, size: 12.sp),
                  ),
                ),
                Positioned(
                  top: 108.w,
                  left: 8.w,
                  child: Container(
                    width: 30.w,
                    height: 24.h,
                    decoration: BoxDecoration(
                      color: AppColors.primaryDarkBlue.withAlpha(170),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Center(
                      child: Text(
                        estate.type,
                        style: AppTextStyles
                            .graySoft1ColorLatoMediumFamily500Weight8Size,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
