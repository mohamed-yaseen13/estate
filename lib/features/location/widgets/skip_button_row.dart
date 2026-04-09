import 'package:estate/core/helpers/extensions.dart';
import 'package:estate/core/style/app_colors.dart';
import 'package:estate/core/widgets/app_skip_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SkipButtonRow extends StatelessWidget {
  const SkipButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            context.pop();
          },
          child: Icon(
            Icons.keyboard_arrow_right,
            color: AppColors.grayDark,
            size: 32.sp,
          ),
        ),
        AppSkipButton(),
      ],
    );
  }
}
