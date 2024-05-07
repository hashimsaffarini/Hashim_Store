import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashim_store/core/utils/app_color.dart';

class HaveAccountText extends StatelessWidget {
  const HaveAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'You Have an Account Already?',
          style: GoogleFonts.interTight(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        TextButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          child: Text(
            'Sign In',
            style: GoogleFonts.interTight(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AppColors.primaryColor,
              decoration: TextDecoration.underline,
              decorationColor: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
