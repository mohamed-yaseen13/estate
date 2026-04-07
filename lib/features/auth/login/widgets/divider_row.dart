import 'package:estate/core/style/app_colors.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DividerRow extends StatelessWidget {
  const DividerRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(color: AppColors.graySoft2, thickness: 1, height: 0),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Text(
            'أو',
            style: AppTextStyles
                .grayBarelyMediumColorRalewayFontFamily600FontWeight10FontSize,
          ),
        ),
        Expanded(
          child: Divider(color: AppColors.graySoft2, thickness: 1, height: 0),
        ),
      ],
    );
  }
}
