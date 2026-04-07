import 'package:estate/core/helpers/extensions.dart';
import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/style/app_colors.dart';
import 'package:estate/features/auth/reset_password/widgets/reset_password_form.dart';
import 'package:estate/features/auth/reset_password/widgets/reset_password_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Align(
            alignment: AlignmentGeometry.topRight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(64),
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
                verticalSpace(8),
                ResetPasswordText(),
                verticalSpace(24),
                ResetPasswordForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
