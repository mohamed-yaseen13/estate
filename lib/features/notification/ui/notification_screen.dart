import 'package:estate/core/helpers/spacing.dart';
// import 'package:estate/core/style/app_text_styles.dart';
import 'package:estate/core/widgets/header_row.dart';
import 'package:estate/features/notification/widgets/notifications_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Align(
            alignment: AlignmentGeometry.centerRight,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                verticalSpace(64),
                HeaderRow(title: 'الاشعارات'),
                verticalSpace(48),
                NotificationsSection(),
                // verticalSpace(48),
                // SvgPicture.asset('assets/icons/empty_notification.svg'),
                // verticalSpace(32),
                // Text(
                //   'لا يوجد إشعار حتى الآن',
                //   style: AppTextStyles
                //       .secondaryGray8ColorInterFamily600Weight20Size,
                // ),
                // verticalSpace(24),
                // Text(
                //   'ستظهر جميع الإشعارات التي نرسلها هنا، حتى تتمكن من الاطلاع عليها بسهولة في أي وقت.',
                //   style: AppTextStyles
                //       .secondaryGray4ColorInterFamily400Weight14Size,
                //   textAlign: TextAlign.center,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
