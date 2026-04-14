import 'package:estate/core/constants/app_constants.dart';
import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/style/app_colors.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:estate/features/home/models/home_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExploreEstatesSection extends StatelessWidget {
  const ExploreEstatesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ' العقارات المجاورة',
            style: AppTextStyles.grayDarkColorLatoBoldFamily700Weight18Size,
          ),
          verticalSpace(18),
          GridView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemCount: AppConstants.exploreEstates.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12.w,
              mainAxisSpacing: 12.h,
              childAspectRatio: 160 / 230,
            ),
            itemBuilder: (context, index) {
              return ExploreEstateContainer(
                model: AppConstants.exploreEstates[index],
                isLiked: index == 0,
              );
            },
          ),
        ],
      ),
    );
  }
}

class ExploreEstateContainer extends StatelessWidget {
  final ExploreEstateModel model;
  final bool isLiked;

  const ExploreEstateContainer({
    super.key,
    required this.model,
    this.isLiked = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.w,
      decoration: BoxDecoration(
        color: AppColors.graySoft1,
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25.r),
              child: SizedBox(
                width: 144.w,
                height: 160.h,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(model.imagePath, fit: BoxFit.cover),
                    ),
                    Positioned(
                      top: 8.h,
                      left: 105.w,
                      child: Container(
                        width: 25.w,
                        height: 25.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isLiked
                              ? Color(0xFF8BC83F)
                              : Colors.white.withAlpha(200),
                        ),
                        child: Icon(
                          isLiked ? Icons.favorite : Icons.favorite_border,
                          color: isLiked ? Colors.white : Colors.red,
                          size: 12.sp,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 130.h,
                      left: 55.w,
                      child: Container(
                        width: 80.w,
                        height: 25.h,
                        decoration: BoxDecoration(
                          color: AppColors.primaryDarkBlue,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                model.price,
                                style: AppTextStyles
                                    .graySoft1ColorMontserratSemiBoldFamily600Weight12Size,
                              ),
                              if (model.type == 'ايجار')
                                Text(
                                  '/شهر',
                                  style: AppTextStyles
                                      .graySoft1ColorMontserratMediumFamily500Weight6Size,
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 130.h,
                      left: 8.w,
                      child: Container(
                        width: 25.w,
                        height: 25.h,
                        decoration: BoxDecoration(
                          color: AppColors.grayDark2,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Center(
                          child: Text(
                            model.type,
                            style: AppTextStyles
                                .whiteColorRalewayMeduimFamily500Weight8Size,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            verticalSpace(8),
            Text(
              model.title,
              style:
                  AppTextStyles.grayDarkColorRalewayBoldFamily700Weight12Size,
            ),
            verticalSpace(8),
            Row(
              children: [
                SvgPicture.asset('assets/icons/location_icon.svg'),
                horizontalSpace(4),
                Text(
                  model.location,
                  style: AppTextStyles
                      .grayMediumColorRalewayRegularFamily400Weight8Size,
                ),
                horizontalSpace(18),
                SvgPicture.asset('assets/icons/star_icon.svg'),
                horizontalSpace(4),
                Text(
                  model.rate,
                  style: AppTextStyles
                      .grayMediumColorMontserratBoldFamily700Weight8Size,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
