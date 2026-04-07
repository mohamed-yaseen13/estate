import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/features/auth/login/widgets/login_button.dart';
import 'package:estate/features/auth/login/widgets/password_text_form_field.dart';
import 'package:estate/features/auth/login/widgets/phone_number_text_form_field.dart';
import 'package:estate/features/auth/login/widgets/remember_me_and_forgot_password_row.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _phoneNumberController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PhoneNumberTextFormField(controller: _phoneNumberController),
          verticalSpace(24),
          PasswordTextFormField(controller: _passwordController),
          verticalSpace(24),
          RememberMeAndForgotPasswordRow(),
          verticalSpace(32),
          LoginButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                //context.pushNamed(AppRoutes.homeScreen);
              }
            },
          ),
        ],
      ),
    );
  }
}
