import 'package:estate/core/helpers/extensions.dart';
import 'package:estate/core/routing/app_routes.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:flutter/material.dart';

class DontHaveAnAccountRow extends StatelessWidget {
  const DontHaveAnAccountRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          context.pushNamed(AppRoutes.signupScreen);
        },
        child: Text(
          'ليس لديك حساب؟ سجل الآن',
          style: AppTextStyles.secondaryGray8ColorInterFamily400Weight14Size,
        ),
      ),
    );
  }
}
