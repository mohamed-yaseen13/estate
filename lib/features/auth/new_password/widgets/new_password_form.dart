import 'package:estate/core/helpers/extensions.dart';
import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/routing/app_routes.dart';
import 'package:estate/core/widgets/app_button.dart';
import 'package:estate/core/widgets/password_text_form_field.dart';
import 'package:flutter/material.dart';

class NewPasswordForm extends StatefulWidget {
  const NewPasswordForm({super.key});

  @override
  State<NewPasswordForm> createState() => _NewPasswordFormState();
}

class _NewPasswordFormState extends State<NewPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PasswordTextFormField(
            controller: _passwordController,
            isNewPassword: true,
          ),
          verticalSpace(24),
          PasswordTextFormField(
            controller: _confirmPasswordController,
            isConfirmPassword: true,
          ),
          verticalSpace(200),
          AppButton(
            onPressed: () {
              if (_formKey.currentState!.validate() &&
                  _passwordController.text == _confirmPasswordController.text) {
                context.pushNamed(AppRoutes.successNewPasswordScreen);
              }
            },
            desc: 'تغيير كلمة المرور',
          ),
        ],
      ),
    );
  }
}
