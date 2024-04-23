import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashim_store/core/utils/app_color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 18),
        hintText: 'Search',
        hintStyle: GoogleFonts.inter(
          color: AppColors.greyPrimary,
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
        prefixIcon: const Icon(
          FontAwesomeIcons.magnifyingGlass,
          size: 22,
          color: AppColors.primaryColor,
        ),
        focusedBorder: customOutLineInputBorder(
          AppColors.primaryColor,
        ),
        enabledBorder: customOutLineInputBorder(
          Colors.grey.withOpacity(0.7),
        ),
      ),
    );
  }

  OutlineInputBorder customOutLineInputBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(50),
      borderSide: BorderSide(
        color: color,
      ),
    );
  }
}
