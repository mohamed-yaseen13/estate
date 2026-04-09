import 'package:estate/core/helpers/extensions.dart';
import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:estate/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';

class UsernameTextFormField extends StatelessWidget {
  final TextEditingController controller;

  const UsernameTextFormField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'اسم المستخدم',
          style: AppTextStyles.secondaryGray8ColorInterFamily600Weight14Size,
        ),
        verticalSpace(8),
        AppTextFormField(
          controller: controller,
          validator: (value) {
            if (value.isNullOrEmpty()) {
              return 'من فضلك أدخل اسم المستخدم';
            } else if (value!.length < 3) {
              return 'اسم المستخدم خاطئ';
            } else {
              return null;
            }
          },
          textInputType: TextInputType.text,
        ),
      ],
    );
  }
}
