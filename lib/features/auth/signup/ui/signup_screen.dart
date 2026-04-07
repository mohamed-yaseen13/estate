import 'package:estate/core/helpers/extensions.dart';
import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/style/app_colors.dart';
import 'package:estate/core/widgets/divider_row.dart';
import 'package:estate/core/widgets/social_accounts_row.dart';
import 'package:estate/features/auth/signup/widgets/already_have_an_account_row.dart';
import 'package:estate/features/auth/signup/widgets/signup_form.dart';
import 'package:estate/features/auth/signup/widgets/signup_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
                SignupText(),
                verticalSpace(18),
                SignupForm(),
                verticalSpace(18),
                DividerRow(),
                verticalSpace(18),
                SocialAccountsRow(),
                verticalSpace(18),
                AlreadyHaveAnAccountRow(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
