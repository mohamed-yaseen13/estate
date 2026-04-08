import 'package:estate/core/style/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationBell extends StatelessWidget {
  const NotificationBell({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.w,
      height: 50.h,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primaryDarkBlue),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Stack(
          children: [
            SvgPicture.asset(
              'assets/icons/notifications_outlined.svg',
              width: 25.w,
              height: 25.h,
            ),
            Positioned(
              top: -2,
              child: SvgPicture.asset('assets/icons/red_circle.svg'),
            ),
          ],
        ),
      ),
    );
  }
}
