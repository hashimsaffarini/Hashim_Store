import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashim_store/core/utils/app_color.dart';
import 'package:hashim_store/core/widgets/apple_widget.dart';
import 'package:hashim_store/core/widgets/custom_button.dart';

class SingleChildScrollChildCartPage extends StatelessWidget {
  const SingleChildScrollChildCartPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 5),
          const AppleWidget(),
          const SizedBox(height: 32),
          Row(
            children: [
              Text(
                'Sub-Total',
                style: GoogleFonts.inter(
                  color: AppColors.greyPrimary,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Text(
                '₪1000.00',
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Text(
                'Discount',
                style: GoogleFonts.inter(
                  color: AppColors.greyPrimary,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Text(
                '₪0.00',
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Divider(
            color: AppColors.greyPrimary,
            thickness: 0.8,
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Text(
                'Total Cost',
                style: GoogleFonts.inter(
                  color: AppColors.greyPrimary,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Text(
                '₪1000.00',
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          CustomButton(
            onPressed: () {},
            borderRadius: 32,
            child: const Text(
              'Message The Store',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
