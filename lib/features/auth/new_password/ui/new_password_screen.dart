import 'package:estate/core/helpers/extensions.dart';
import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/style/app_colors.dart';
import 'package:estate/features/auth/new_password/widgets/new_password_form.dart';
import 'package:estate/features/auth/new_password/widgets/new_password_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

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
                NewPasswordText(),
                verticalSpace(24),
                NewPasswordForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
