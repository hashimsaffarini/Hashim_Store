import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPageHeaderText extends StatelessWidget {
  const CartPageHeaderText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'My Cart',
      style: TextStyle(
        fontFamily: GoogleFonts.inter().fontFamily,
        fontSize: 34,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
