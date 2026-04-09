import 'package:estate/core/constants/app_constants.dart';
import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/style/app_colors.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BannersRow extends StatelessWidget {
  const BannersRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: Row(
          children: List.generate(AppConstants.banners.length, (index) {
            return Padding(
              padding: EdgeInsets.only(left: 8.w),
              child: BannerContainer(banner: AppConstants.banners[index]),
            );
          }),
        ),
      ),
    );
  }
}

class BannerContainer extends StatelessWidget {
  final BannerModel banner;

  const BannerContainer({super.key, required this.banner});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25.r),
        child: SizedBox(
          width: 270.w,
          height: 180.h,
          child: Stack(
            children: [
              Positioned.fill(
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Colors.black.withAlpha(100),
                    BlendMode.srcATop,
                  ),
                  child: Image.asset(
                    banner.imagePath,
                    fit: BoxFit.cover,
                  ), // how to rotate the image
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 12.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      banner.title,
                      style: AppTextStyles
                          .whiteColorRalewayBoldFamily700Weight18Size,
                    ),
                    verticalSpace(18),
                    Text(
                      banner.desc,
                      style: AppTextStyles
                          .whiteColorRalewayRegularFamily400Weight10Size,
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentGeometry.bottomLeft,
                child: Container(
                  width: 93.w,
                  height: 56.h,
                  decoration: BoxDecoration(
                    color: AppColors.primaryDarkBlue,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25.r),
                    ),
                  ),
                  child: Center(
                    child: SvgPicture.asset('assets/icons/arrow_icon.svg'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
