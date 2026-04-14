import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/models/app_models.dart';
import 'package:estate/core/style/app_colors.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationRow extends StatelessWidget {
  final NotificationModel model;
  const NotificationRow({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        model.isIcon
            ? SvgPicture.asset(model.iconPath)
            : Container(
                width: 36.w,
                height: 36.h,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(36.r),
                  child: Image.asset(model.iconPath, fit: BoxFit.cover),
                ),
              ),

        horizontalSpace(12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              model.desc,
              style: model.isRead
                  ? AppTextStyles.secondaryGray4ColorInterFamily400Weight12Size
                  : AppTextStyles.secondaryGray8ColorInterFamily500Weight12Size,
            ),
            verticalSpace(8),
            Container(
              width: 260.w,
              height: 2.h,
              color: AppColors.secondaryGray2,
            ),
          ],
        ),
      ],
    );
  }
}
