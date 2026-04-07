import 'package:estate/core/style/app_colors.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:flutter/material.dart';

class RememberMeAndForgotPasswordRow extends StatefulWidget {
  const RememberMeAndForgotPasswordRow({super.key});

  @override
  State<RememberMeAndForgotPasswordRow> createState() =>
      _RememberMeAndForgotPasswordRowState();
}

class _RememberMeAndForgotPasswordRowState
    extends State<RememberMeAndForgotPasswordRow> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: rememberMe,
          onChanged: (value) {
            setState(() {
              rememberMe = !rememberMe;
            });
          },
          activeColor: AppColors.primaryDarkBlue,
          checkColor: Colors.white,
        ),
        Text(
          'تذكرني',
          style: AppTextStyles
              .secondaryGray8ColorInterFontFamily400Weight14FontSize,
        ),
        Spacer(),
        InkWell(
          onTap: () {
            // context.pushNamed(AppRoutes.resetPassword);
          },
          child: Text(
            'هل نسيت كلمة السر ؟',
            style: AppTextStyles
                .primaryDarkBlueColorInterFontFamily400Weight14FontSize,
          ),
        ),
      ],
    );
  }
}
