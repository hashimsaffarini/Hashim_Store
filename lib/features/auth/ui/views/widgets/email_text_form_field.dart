import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashim_store/core/utils/app_color.dart';
import 'package:hashim_store/features/auth/ui/views/widgets/sign_in_form.dart';

class EmailTextFormField extends StatelessWidget {
  const EmailTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 18),
        hintText: 'Enter your email',
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
            FontAwesomeIcons.envelope,
            color: AppColors.primaryColor,
            size: 22,
          ),
        ),
      ),
    );
  }
}
