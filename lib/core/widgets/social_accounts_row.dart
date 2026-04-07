import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/style/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SocialAccountsRow extends StatelessWidget {
  const SocialAccountsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.graySoft1,
                borderRadius: BorderRadius.circular(24.r),
              ),
              child: Center(
                child: SvgPicture.asset('assets/icons/apple_icon.svg'),
              ),
            ),
          ),
          horizontalSpace(8),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.graySoft1,
                borderRadius: BorderRadius.circular(24.r),
              ),
              child: Center(
                child: SvgPicture.asset('assets/icons/google_icon.svg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
