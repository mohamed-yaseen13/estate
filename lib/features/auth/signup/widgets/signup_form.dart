import 'package:estate/core/helpers/extensions.dart';
import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/routing/app_routes.dart';
import 'package:estate/core/widgets/app_button.dart';
import 'package:estate/core/widgets/password_text_form_field.dart';
import 'package:estate/core/widgets/phone_number_text_form_field.dart';
import 'package:estate/features/auth/signup/widgets/policy_row.dart';
import 'package:estate/core/widgets/username_text_form_field.dart';
import 'package:flutter/material.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _formKey = GlobalKey<FormState>();
  final _phoneNumberController = TextEditingController();
  final _passwordController = TextEditingController();
  final _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PhoneNumberTextFormField(controller: _phoneNumberController),
          verticalSpace(24),
          UsernameTextFormField(controller: _usernameController),
          verticalSpace(24),
          PasswordTextFormField(controller: _passwordController),
          verticalSpace(24),
          PolicyRow(),
          verticalSpace(24),
          AppButton(
            desc: 'انشاء حساب',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                context.pushNamed(AppRoutes.homeScreen);
              }
            },
          ),
        ],
      ),
    );
  }
}
