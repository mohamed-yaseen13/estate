import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:flutter/material.dart';

class VerifyCodeText extends StatelessWidget {
  const VerifyCodeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'ادخل رمز التحقق',
          style: AppTextStyles
              .secondaryGray8ColorInterFontFamily600Weight20FontSize,
        ),
        verticalSpace(8),
        Text(
          'يرجى إدخال رمز التحقق المكون من 4 أرقام والذي تم إرساله إلى رقم الهاتف',
          style: AppTextStyles
              .secondaryGray4ColorInterFontFamily400Weight14FontSize,
        ),
      ],
    );
  }
}
