import 'package:estate/core/constants/app_constants.dart';
import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/style/app_colors.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopLocationsRow extends StatelessWidget {
  const TopLocationsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'أفضل المواقع',
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
              children: List.generate(AppConstants.topLocations.length, (
                index,
              ) {
                return Padding(
                  padding: EdgeInsets.only(left: 8.w),
                  child: InkWell(
                    onTap: () {},
                    child: TopLocationContainer(
                      model: AppConstants.topLocations[index],
                    ),
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

class TopLocationContainer extends StatelessWidget {
  final TopLocationModel model;

  const TopLocationContainer({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 56.h,
      decoration: BoxDecoration(
        color: AppColors.graySoft1,
        borderRadius: BorderRadius.circular(50.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              foregroundImage: AssetImage(model.imagePath),
              radius: 20.r,
            ),
            Text(
              model.name,
              style: AppTextStyles
                  .grayDarkColorRalewayFontFamily500FontWeight10FontSize,
            ),
          ],
        ),
      ),
    );
  }
}
