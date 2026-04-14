import 'package:estate/core/constants/app_constants.dart';
import 'package:estate/features/notification/widgets/notification_groub.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationsSection extends StatelessWidget {
  const NotificationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(AppConstants.notificationsGroub.length, (
          index,
        ) {
          return Padding(
            padding: EdgeInsets.only(bottom: 48.w),
            child: NotificationGroub(
              model: AppConstants.notificationsGroub[index],
            ),
          );
        }),
      ),
    );
  }
}
