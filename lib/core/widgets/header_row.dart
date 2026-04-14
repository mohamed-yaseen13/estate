import 'package:estate/core/helpers/extensions.dart';
import 'package:estate/core/style/app_colors.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderRow extends StatelessWidget {
  final String title;

  const HeaderRow({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: InkWell(
            onTap: () => context.pop(),
            child: Icon(
              Icons.keyboard_arrow_right,
              color: AppColors.grayDark,
              size: 24.sp,
            ),
          ),
        ),
        Text(
          title,
          style: AppTextStyles.secondaryGray8ColorInterFamily600Weight16Size,
        ),
      ],
    );
  }
}
