import 'package:flutter/material.dart';
import 'package:hashim_store/features/auth/ui/views/widgets/have_account_text.dart';
import 'package:hashim_store/features/auth/ui/views/widgets/sign_in_header.dart';
import 'package:hashim_store/features/auth/ui/views/widgets/sign_up_form.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SignHeaderWidget(
          header: 'Sign Up',
          subHeader: 'Create an account to continue!',
        ),
        SizedBox(height: 60),
        SignUpForm(),
        SizedBox(height: 46),
        HaveAccountText()
      ],
    );
  }
}
