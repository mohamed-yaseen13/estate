import 'package:estate/core/helpers/extensions.dart';
import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/routing/app_routes.dart';
import 'package:estate/core/widgets/app_button.dart';
import 'package:estate/core/widgets/phone_number_text_form_field.dart';
import 'package:flutter/material.dart';

class ResetPasswordForm extends StatefulWidget {
  const ResetPasswordForm({super.key});

  @override
  State<ResetPasswordForm> createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  final _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PhoneNumberTextFormField(controller: _phoneNumberController),
          verticalSpace(420),
          AppButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                context.pushNamed(AppRoutes.verifyCodeScreen);
              }
            },
            desc: 'أكمل',
          ),
        ],
      ),
    );
  }
}
