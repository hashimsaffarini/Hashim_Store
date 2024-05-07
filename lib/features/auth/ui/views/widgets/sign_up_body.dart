import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashim_store/core/widgets/custom_button.dart';
import 'package:hashim_store/features/auth/ui/views/widgets/have_account_text.dart';
import 'package:hashim_store/features/auth/ui/views/widgets/sign_in_header.dart';
import 'package:hashim_store/features/auth/ui/views/widgets/sign_up_form.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SignHeaderWidget(
          header: 'Sign Up',
          subHeader: 'Create an account to continue!',
        ),
        const SizedBox(height: 60),
        const SignUpForm(),
        const SizedBox(height: 46),
        CustomButton(
          onPressed: () {},
          borderRadius: 36,
          child: Text(
            'Sign Up',
            style: GoogleFonts.interTight(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 26),
        const HaveAccountText()
      ],
    );
  }
}
