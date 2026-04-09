import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:flutter/material.dart';

class ResetPasswordText extends StatelessWidget {
  const ResetPasswordText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'هل نسيت كلمة السر',
          style: AppTextStyles.secondaryGray8ColorInterFamily600Weight20Size,
        ),
        verticalSpace(8),
        Text(
          'ادخل رقم الهاتف الخاص بك لارسال رمز التحقق لإعادة تعيين كلمة مرورك',
          style: AppTextStyles.secondaryGray4ColorInterFamily400Weight14Size,
        ),
      ],
    );
  }
}
