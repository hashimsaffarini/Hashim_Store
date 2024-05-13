import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashim_store/core/utils/app_color.dart';
import 'package:hashim_store/features/home/data/models/product_item_model.dart';
import 'package:hashim_store/features/home/ui/views/widgets/container_gird_view_widget.dart';
import 'package:hashim_store/features/home/ui/views/widgets/favorite_grid_view_widget.dart';
import 'package:hashim_store/features/home/ui/views/widgets/sale_grid_view_widget.dart';
import 'package:hashim_store/features/home/ui/views/widgets/sale_texts.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({
    super.key,
    required this.product,
  });
  final ProductItemModel product;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 2 - 38;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ContainerGridViewWidget(
              width: width,
              product: product,
            ),
            FavoriteGridViewWidget(
              product: product,
            ),
            product.sale != 0
                ? SaleGridViewWidget(
                    product: product,
                  )
                : const SizedBox(),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          product.title,
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        product.sale != 0
            ? SaleTexts(product: product)
            : Text(
                '₪${product.price}',
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
