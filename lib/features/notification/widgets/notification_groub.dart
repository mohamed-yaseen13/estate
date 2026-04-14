import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:estate/features/notification/models/notification_model.dart';
import 'package:estate/features/notification/widgets/notification_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationGroub extends StatelessWidget {
  final NotificationGroubModel model;

  const NotificationGroub({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          model.date,
          style: AppTextStyles.secondaryGray8ColorInterFamily600Weight16Size,
        ),
        verticalSpace(12),
        SingleChildScrollView(
          child: Column(
            children: List.generate(model.notifications.length, (index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 8.w),
                child: NotificationRow(model: model.notifications[index]),
              );
            }),
          ),
        ),
      ],
    );
  }
}
