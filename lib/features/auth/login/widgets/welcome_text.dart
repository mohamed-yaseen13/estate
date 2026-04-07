import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset('assets/images/welcome_text.svg'),
        verticalSpace(8),
        Text(
          "سجّل الدخول باستخدام رقم الهاتف وكلمة المرور\nأو حسابك على وسائل التواصل الاجتماعي للمتابعة",
          style: AppTextStyles
              .secondaryGray4ColorInterFontFamily400Weight14FontSize,
        ),
        verticalSpace(24),
      ],
    );
  }
}
