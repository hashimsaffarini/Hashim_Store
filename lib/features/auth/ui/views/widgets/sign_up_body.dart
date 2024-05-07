import 'package:flutter/material.dart';
import 'package:hashim_store/features/auth/ui/views/widgets/sign_in_header.dart';
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
      ],
    );
  }
}
