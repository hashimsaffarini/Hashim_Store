import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashim_store/core/widgets/custom_button.dart';
import 'package:hashim_store/features/auth/ui/logic/auth/auth_cubit.dart';
import 'package:hashim_store/features/auth/ui/views/widgets/email_text_form_field.dart';
import 'package:hashim_store/features/auth/ui/views/widgets/password_text_form_field.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future<void> login() async {
    if (_formKey.currentState!.validate()) {
      debugPrint('Email: ${_emailController.text}');
      debugPrint('Password: ${_passwordController.text}');
      await BlocProvider.of<AuthCubit>(context).signInWithEmailAndPassword(
        _emailController.text,
        _passwordController.text,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.always,
      key: _formKey,
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
          EmailTextFormField(
            controller: _emailController,
          ),
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
          PasswordTextFormField(
            controller: _passwordController,
          ),
          const SizedBox(height: 46),
          CustomButton(
            onPressed: () {
              login();
            },
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
