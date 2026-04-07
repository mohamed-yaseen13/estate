import 'package:estate/core/helpers/extensions.dart';
import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/routing/app_routes.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:estate/core/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SuccessNewPasswordScreen extends StatelessWidget {
  const SuccessNewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            verticalSpace(200),
            SvgPicture.asset(
              'assets/images/auth_change_password_success_image.svg',
            ),
            verticalSpace(18),
            Text(
              'تم تغيير كلمه المرور بنجاح!',
              style: AppTextStyles
                  .secondaryGray8ColorInterFontFamily600Weight20FontSize,
            ),
            verticalSpace(8),
            Text(
              'تم تغيير كلمة مرورك. يرجى تسجيل الدخول مرة أخرى باستخدام كلمة مرور جديدة.',
              style: AppTextStyles
                  .secondaryGray4ColorInterFontFamily400Weight14FontSize,
            ),
            verticalSpace(48),
            AppButton(
              onPressed: () {
                context.pushReplacementNamed(AppRoutes.homeScreen);
              },
              desc: 'اذهب لصفحه تسجيل الدخول',
            ),
          ],
        ),
      ),
    );
  }
}
