import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/style/app_colors.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:estate/features/on_boarding/models/on_boarding_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingPageDetails extends StatelessWidget {
  final int index;
  final OnboardingModel model;

  const OnBoardingPageDetails({
    super.key,
    required this.model,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 350.h,
            width: 350.w,
            child: Stack(
              children: [
                Positioned(
                  left: index == 1 ? null : 50.w,
                  right: index == 1 ? 70.w : null,
                  top: 80,
                  child: BlobImage(
                    width: 150.w,
                    height: 230.h,
                    borderRadius: 90.r,
                    imagePath: model.imageBottom,
                    colorFilter: ColorFilter.mode(
                      AppColors.primaryDarkBlue.withAlpha(100),
                      BlendMode.srcATop,
                    ),
                  ),
                ),
                Positioned(
                  left: index == 1 ? 50.w : null,
                  right: index == 1 ? null : 70.w,
                  top: 30,
                  child: BlobImage(
                    width: 150.w,
                    height: 230.h,
                    borderRadius: 85.r,
                    imagePath: model.imageTop,
                  ),
                ),
              ],
            ),
          ),
          verticalSpace(20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Text(
              model.title,
              textAlign: TextAlign.center,
              style:
                  AppTextStyles.secondaryGray8ColorInterFamily400Weight24Size,
            ),
          ),
          verticalSpace(15),
          Text(
            model.subtitle,
            textAlign: TextAlign.center,
            style: AppTextStyles.secondaryGray4ColorInterFamily400Weight12Size,
          ),
        ],
      ),
    );
  }
}

class BlobImage extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadius;
  final String imagePath;
  final ColorFilter? colorFilter;
  final BoxShadow? shadow;

  const BlobImage({
    super.key,
    required this.width,
    required this.height,
    required this.borderRadius,
    required this.imagePath,
    this.colorFilter,
    this.shadow,
  });

  ImageProvider get _imageProvider => AssetImage(imagePath);

  @override
  Widget build(BuildContext context) {
    Widget image = ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: ColorFiltered(
        colorFilter:
            colorFilter ??
            const ColorFilter.mode(Colors.transparent, BlendMode.multiply),
        child: Image(
          image: _imageProvider,
          width: width,
          height: height,
          fit: BoxFit.cover,
        ),
      ),
    );

    if (shadow != null) {
      image = DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: [shadow!],
        ),
        child: image,
      );
    }

    return SizedBox(width: width, height: height, child: image);
  }
}
