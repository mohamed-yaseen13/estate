import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/widgets/divider_row.dart';
import 'package:estate/features/auth/login/widgets/dont_have_an_account_row.dart';
import 'package:estate/features/auth/login/widgets/login_form.dart';
import 'package:estate/core/widgets/social_accounts_row.dart';
import 'package:estate/features/auth/login/widgets/welcome_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset('assets/images/auth_top_image.svg'),
              verticalSpace(24),
              WelcomeText(),
              verticalSpace(24),
              LoginForm(),
              verticalSpace(24),
              DividerRow(),
              verticalSpace(12),
              SocialAccountsRow(),
              verticalSpace(12),
              DontHaveAnAccountRow(),
            ],
          ),
        ),
      ),
    );
  }
}
