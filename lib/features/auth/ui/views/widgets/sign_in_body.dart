import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashim_store/core/widgets/custom_button.dart';
import 'package:hashim_store/features/auth/ui/views/widgets/guest_click.dart';
import 'package:hashim_store/features/auth/ui/views/widgets/sign_in_form.dart';
import 'package:hashim_store/features/auth/ui/views/widgets/sign_in_header.dart';
import 'package:hashim_store/features/auth/ui/views/widgets/sign_up_click.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 80),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SignInHeader(),
            const SizedBox(height: 60),
            const SignInForm(),
            const SizedBox(height: 46),
            CustomButton(
              onPressed: () {},
              borderRadius: 36,
              child: Text(
                'Sign In',
                style: GoogleFonts.interTight(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 46),
            const Column(
              children: [
                GuestClick(),
                SignUpClick(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
