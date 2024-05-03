import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashim_store/core/utils/app_color.dart';
import 'package:hashim_store/features/home/data/models/product_item_model.dart';

class SaleTexts extends StatelessWidget {
  const SaleTexts({
    super.key,
    required this.product,
  });

  final ProductItemModel product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '₪${product.price}',
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: AppColors.greyPrimary,
            decoration: TextDecoration.lineThrough,
            decorationColor: AppColors.greyPrimary,
            decorationThickness: 1.6,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          '₪${(product.price * product.sale) / 100}',
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
