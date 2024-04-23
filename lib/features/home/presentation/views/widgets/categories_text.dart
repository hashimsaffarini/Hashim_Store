import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesText extends StatelessWidget {
  const CategoriesText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Categories',
      style: TextStyle(
        fontFamily: GoogleFonts.inter().fontFamily,
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
