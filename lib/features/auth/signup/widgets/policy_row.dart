import 'package:estate/core/style/app_colors.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:flutter/material.dart';

class PolicyRow extends StatefulWidget {
  const PolicyRow({super.key});

  @override
  State<PolicyRow> createState() => _PolicyRowState();
}

class _PolicyRowState extends State<PolicyRow> {
  bool isAgree = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isAgree,
          onChanged: (value) {
            setState(() {
              isAgree = !isAgree;
            });
          },
          activeColor: AppColors.primaryDarkBlue,
          checkColor: Colors.white,
        ),
        Text(
          'أوافق على الشروط وسياسة الخصوصية',
          style: AppTextStyles.secondaryGray8ColorInterFamily400Weight14Size,
        ),
      ],
    );
  }
}
