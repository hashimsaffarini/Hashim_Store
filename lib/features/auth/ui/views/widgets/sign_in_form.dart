import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashim_store/features/auth/ui/views/widgets/email_text_form_field.dart';
import 'package:hashim_store/features/auth/ui/views/widgets/password_text_form_field.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email',
            style: GoogleFonts.interTight(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          const EmailTextFormField(),
          const SizedBox(height: 26),
          Text(
            'Password',
            style: GoogleFonts.interTight(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          const PasswordTextFormField(),
        ],
      ),
    );
  }
}

OutlineInputBorder outLineBorder({Color? color}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(36),
    borderSide: BorderSide(
      color: color ?? Colors.grey,
    ),
  );
}