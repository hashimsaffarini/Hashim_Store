import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPageBody extends StatelessWidget {
  const CartPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'My Cart',
          style: TextStyle(
            fontFamily: GoogleFonts.inter().fontFamily,
            fontSize: 34,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }
}
