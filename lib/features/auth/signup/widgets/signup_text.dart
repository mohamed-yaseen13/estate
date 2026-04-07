import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupText extends StatelessWidget {
  const SignupText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset('assets/images/signup_text.svg'),
        verticalSpace(8),
        Text(
          "سجّل الدخول باستخدام بريدك الإلكتروني وكلمة المرور\nأو حسابك على وسائل التواصل الاجتماعي للمتابعة",
          style: AppTextStyles
              .secondaryGray4ColorInterFontFamily400Weight14FontSize,
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}
