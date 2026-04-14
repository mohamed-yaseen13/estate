import 'package:estate/core/constants/app_constants.dart';
import 'package:estate/core/helpers/spacing.dart';
// import 'package:estate/core/style/app_text_styles.dart';
import 'package:estate/core/widgets/app_floating_action_button.dart';
import 'package:estate/core/widgets/app_nav_bar.dart';
import 'package:estate/core/widgets/header_row.dart';
import 'package:estate/features/home/widgets/explore_estates_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class LikeScreen extends StatelessWidget {
  const LikeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              verticalSpace(64),
              HeaderRow(title: 'المفضلة'),
              verticalSpace(24),
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
                    isLiked: true,
                  );
                },
              ),
              // verticalSpace(48),
              // SvgPicture.asset('assets/icons/empty_like.svg'),
              // verticalSpace(24),
              // Text(
              //   'قائمه المفضله فارغه',
              //   style:
              //       AppTextStyles.secondaryGray8ColorInterFamily600Weight20Size,
              // ),
              // verticalSpace(24),
              // Text(
              //   'ابدأ بإضافة المنتجات إلى المفضله للعثور عليها بسهولة',
              //   style:
              //       AppTextStyles.secondaryGray4ColorInterFamily400Weight14Size,
              //   textAlign: TextAlign.center,
              // ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Transform.translate(
        offset: Offset(0, 30.h),
        child: AppFloatingActionButton(),
      ),
      bottomNavigationBar: AppNavBar(selectedScreen: AppNavBarEnum.like),
    );
  }
}
