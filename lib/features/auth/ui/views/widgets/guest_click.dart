import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashim_store/core/utils/app_color.dart';
import 'package:hashim_store/core/utils/app_router.dart';

class GuestClick extends StatelessWidget {
  const GuestClick({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Shopping as a guest?',
          style: GoogleFonts.interTight(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        const SizedBox(width: 2),
        TextButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.navBar);
          },
          child: Text(
            'Skip',
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
