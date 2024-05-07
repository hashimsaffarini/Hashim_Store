import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashim_store/core/utils/app_color.dart';
import 'package:hashim_store/core/utils/validation.dart';
import 'package:hashim_store/features/auth/ui/views/widgets/sign_in_form.dart';

class PasswordTextFormField extends StatefulWidget {
  const PasswordTextFormField({
    super.key,
    required this.controller,
  });

  final TextEditingController? controller;

  @override
  _PasswordTextFormFieldState createState() => _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends State<PasswordTextFormField> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: !_isPasswordVisible,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 18),
        hintText: '***********',
        hintStyle: GoogleFonts.interTight(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Colors.grey,
        ),
        border: outLineBorder(),
        focusedBorder: outLineBorder(),
        enabledBorder: outLineBorder(color: Colors.grey.withOpacity(0.5)),
        errorBorder: outLineBorder(color: Colors.red),
        focusedErrorBorder: outLineBorder(color: Colors.red),
        prefixIcon: const Padding(
          padding: EdgeInsets.only(left: 4),
          child: Icon(
            FontAwesomeIcons.lock,
            color: AppColors.primaryColor,
            size: 22,
          ),
        ),
        suffixIcon: IconButton(
          icon: Icon(
            _isPasswordVisible
                ? FontAwesomeIcons.eyeSlash
                : FontAwesomeIcons.eye,
            size: 22,
          ),
          onPressed: () {
            setState(() {
              _isPasswordVisible = !_isPasswordVisible;
            });
          },
        ),
      ),
      validator: (value) => validatePassword(value!),
    );
  }
}
