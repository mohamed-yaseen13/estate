import 'package:estate/core/helpers/extensions.dart';
import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:estate/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';

class PasswordTextFormField extends StatefulWidget {
  final TextEditingController controller;

  const PasswordTextFormField({super.key, required this.controller});

  @override
  State<PasswordTextFormField> createState() => _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends State<PasswordTextFormField> {
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'كلمة المرور',
          style: AppTextStyles
              .secondaryGray8ColorInterFontFamily600Weight14FontSize,
        ),
        verticalSpace(4),
        AppTextFormField(
          controller: widget.controller,
          isObscureText: isObscureText,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                isObscureText = !isObscureText;
              });
            },
            child: Icon(
              isObscureText ? Icons.visibility_off : Icons.visibility,
            ),
          ),
          placeholder: 'كلمة المرور',
          validator: (value) {
            if (value.isNullOrEmpty()) {
              return 'من فضلك ادخل كلمة المرور';
            } else if (value!.length < 8) {
              return 'كلمه المرور خاطئه !';
            } else {
              return null;
            }
          },
        ),
      ],
    );
  }
}
