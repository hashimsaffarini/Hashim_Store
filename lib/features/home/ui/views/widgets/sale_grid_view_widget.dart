import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashim_store/core/utils/app_color.dart';
import 'package:hashim_store/features/home/data/models/product_item_model.dart';
class SaleGridViewWidget extends StatelessWidget {
  const SaleGridViewWidget({super.key, required this.product});
  final ProductItemModel product;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 6,
      top: 6,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          '${product.sale}% OFF',
          style: GoogleFonts.inter(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
