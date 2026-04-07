import 'package:estate/core/style/app_colors.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String? placeholder;
  final FormFieldValidator<String>? validator;
  final TextInputType? textInputType;
  final Widget? suffixIcon;
  final bool? isObscureText;

  const AppTextFormField({
    super.key,
    required this.controller,
    this.placeholder,
    this.validator,
    this.textInputType,
    this.suffixIcon,
    this.isObscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.secondaryGray1, width: 2.w),
          borderRadius: BorderRadius.circular(12.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.secondaryGray1, width: 2.w),
          borderRadius: BorderRadius.circular(12.r),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.errorColor, width: 2.w),
          borderRadius: BorderRadius.circular(12.r),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.errorColor, width: 2.w),
          borderRadius: BorderRadius.circular(12.r),
        ),
        hintText: placeholder,
        hintStyle:
            AppTextStyles.secondaryGray4ColorInterFontFamily400Weight14FontSize,
        suffixIcon: suffixIcon,
      ),
      validator: validator,
      keyboardType: textInputType,
      obscureText: isObscureText ?? false,
    );
  }
}
