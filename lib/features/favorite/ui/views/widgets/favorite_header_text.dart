import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoriteHeaderText extends StatelessWidget {
  const FavoriteHeaderText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Favorites',
      style: TextStyle(
        fontFamily: GoogleFonts.inter().fontFamily,
        fontSize: 34,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
