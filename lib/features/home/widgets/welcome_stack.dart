import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:estate/features/home/widgets/location_pill.dart';
import 'package:estate/features/home/widgets/notification_bell.dart';
import 'package:estate/features/home/widgets/user_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeStack extends StatelessWidget {
  const WelcomeStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -10.h,
          left: 130.w,
          child: SvgPicture.asset('assets/images/home_circle.svg'),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(64),
              Row(
                children: [
                  UserAvatar(),
                  horizontalSpace(12),
                  LocationPill(),
                  Spacer(),
                  NotificationBell(),
                ],
              ),
              verticalSpace(32),
              Text(
                'مرحباً محمود!',
                style:
                    AppTextStyles.grayDarkColorLatoMediumFamily500Weight25Size,
              ),
              Text(
                'هيا بنا نبدأ الاستكشاف',
                style:
                    AppTextStyles.grayDarkColorLatoMediumFamily500Weight25Size,
              ),
            ],
          ),
        ),
        verticalSpace(250),
      ],
    );
  }
}
