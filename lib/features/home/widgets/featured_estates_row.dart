import 'package:estate/core/constants/app_constants.dart';
import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/style/app_colors.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class FeaturedEstatesRow extends StatelessWidget {
  const FeaturedEstatesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'عقارات مميزه',
                style: AppTextStyles
                    .grayDarkColorLatoFontFamily700FontWeight18FontSize,
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'عرض الكل',
                  style: AppTextStyles
                      .primaryDarkBlueColorRalewayFontFamily600Weight10FontSize,
                ),
              ),
            ],
          ),
        ),
        verticalSpace(18),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: Row(
              children: List.generate(AppConstants.featuredEstates.length, (
                index,
              ) {
                return Padding(
                  padding: EdgeInsets.only(left: 8.w),
                  child: FeaturedEstateContainer(
                    model: AppConstants.featuredEstates[index],
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}

class FeaturedEstateContainer extends StatelessWidget {
  final FeaturedEstateModel model;

  const FeaturedEstateContainer({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280.w,
      height: 156.h,
      decoration: BoxDecoration(
        color: AppColors.graySoft1,
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.h),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25.r),
              child: SizedBox(
                width: 130.w,
                height: 140.h,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(model.imagePath, fit: BoxFit.cover),
                    ),
                    Positioned(
                      top: 8,
                      left: 94,
                      child: Container(
                        width: 25.w,
                        height: 25.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF8BC83F),
                        ),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.white,
                          size: 12.sp,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 90,
                      left: 89,
                      child: Container(
                        width: 25.w,
                        height: 27.h,
                        decoration: BoxDecoration(
                          color: AppColors.primaryDarkBlue,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Center(
                          child: Text(
                            model.type,
                            style: AppTextStyles
                                .whiteColorRalewayFontFamily500FontWeight8FontSize,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            horizontalSpace(24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.title,
                  style: AppTextStyles
                      .grayDarkColorRalewayFontFamily700FontWeight12FontSize,
                ),
                verticalSpace(8),
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/star_icon.svg'),
                    horizontalSpace(4),
                    Text(
                      model.rate,
                      style: AppTextStyles
                          .grayMediumColorMontserratFontFamily700FontWeight8FontSize,
                    ),
                  ],
                ),
                verticalSpace(8),
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/location_icon.svg'),
                    horizontalSpace(4),
                    Text(
                      model.location,
                      style: AppTextStyles
                          .grayBarelyMediumColorRalewayFontFamily400FontWeight12FontSize,
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Text(
                      model.price,
                      style: AppTextStyles
                          .grayDarkColorMontserratFontFamily600FontWeight16FontSize,
                    ),
                    if (model.type == 'ايجار')
                      Text(
                        '/شهر',
                        style: AppTextStyles
                            .grayDarkColorMontserratFontFamily500FontWeight8FontSize,
                      ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
