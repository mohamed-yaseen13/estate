import 'package:estate/core/helpers/extensions.dart';
import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:estate/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';

class PhoneNumberTextFormField extends StatelessWidget {
  final TextEditingController controller;

  const PhoneNumberTextFormField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'رقم الهاتف',
          style: AppTextStyles.secondaryGray8ColorInterFamily600Weight14Size,
        ),
        verticalSpace(4),
        AppTextFormField(
          controller: controller,
          textInputType: TextInputType.phone,
          validator: (value) {
            if (value.isNullOrEmpty()) {
              return "من فضلك ادخل رقم هاتفك";
            } else {
              return null;
            }
          },
        ),
      ],
    );
  }
}
