import 'package:estate/core/helpers/extensions.dart';
import 'package:estate/core/routing/app_routes.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccountRow extends StatelessWidget {
  const AlreadyHaveAnAccountRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          context.pushNamed(AppRoutes.loginScreen);
        },
        child: Text(
          'هل لديك حساب بالفعل؟ سجّل الدخول',
          style: AppTextStyles
              .secondaryGray8ColorInterFontFamily400Weight14FontSize,
        ),
      ),
    );
  }
}
