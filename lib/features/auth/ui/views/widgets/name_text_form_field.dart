import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashim_store/core/utils/app_color.dart';
import 'package:hashim_store/features/auth/ui/views/widgets/sign_in_form.dart';

class NameTextFormField extends StatelessWidget {
  const NameTextFormField({
    super.key,
    required this.controller,
  });
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 18),
        hintText: 'John Doe',
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
            FontAwesomeIcons.userLarge,
            color: AppColors.primaryColor,
            size: 22,
          ),
        ),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter your name';
        }
        return null;
      },
    );
  }
}
