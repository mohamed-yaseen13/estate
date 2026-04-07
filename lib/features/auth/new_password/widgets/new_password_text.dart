import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:flutter/material.dart';

class NewPasswordText extends StatelessWidget {
  const NewPasswordText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'إنشاء كلمة مرور جديدة',
          style: AppTextStyles
              .secondaryGray8ColorInterFontFamily600Weight20FontSize,
        ),
        verticalSpace(8),
        Text(
          'الرجاء إدخال كلمة مرور جديدةللتغيير',
          style: AppTextStyles
              .secondaryGray4ColorInterFontFamily400Weight14FontSize,
        ),
      ],
    );
  }
}
