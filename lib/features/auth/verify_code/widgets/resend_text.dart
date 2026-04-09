import 'package:estate/core/style/app_text_styles.dart';
import 'package:flutter/material.dart';

class ResendText extends StatelessWidget {
  final bool canReSend;

  const ResendText({super.key, required this.canReSend});

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !canReSend,
      child: InkWell(
        onTap: () {},
        child: Text(
          'لم تستلم رمز التحقق ؟ أعد إرسال رمز التحقق لمرة واحدة',
          style: AppTextStyles.grayMediumColorInterFamily400Weight12Size,
        ),
      ),
    );
  }
}
