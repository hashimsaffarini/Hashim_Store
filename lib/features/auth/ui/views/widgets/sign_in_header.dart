import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignHeaderWidget extends StatelessWidget {
  const SignHeaderWidget({
    super.key,
    required this.header,
    required this.subHeader,
  });
  final String header;
  final String subHeader;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              header,
              style: GoogleFonts.interTight(
                fontSize: 36,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              subHeader,
              style: GoogleFonts.interTight(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
