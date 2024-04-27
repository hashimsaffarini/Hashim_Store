import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashim_store/core/utils/app_color.dart';
import 'package:hashim_store/core/widgets/custom_button.dart';
import 'package:hashim_store/features/home/data/models/product_item_model.dart';
import 'package:hashim_store/features/home/presentation/views/widgets/available_sizes_list_view.dart';
import 'package:hashim_store/features/home/presentation/views/widgets/colors_available_list_view.dart';
import 'package:hashim_store/features/home/presentation/views/widgets/header_details_page.dart';

class ProductDetailsContainerChild extends StatelessWidget {
  const ProductDetailsContainerChild({
    super.key,
    required this.product,
  });

  final ProductItemModel product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderDetailsPage(title: product.title),
          const SizedBox(height: 4),
          Text(
            '₪99.99',
            style: GoogleFonts.inter(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: AppColors.primaryColor,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Description:',
            style: GoogleFonts.inter(
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            product.description,
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Available sizes:',
            style: GoogleFonts.inter(
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 10),
          AvailableSizesListView(
            sizes: product.sizes,
          ),
          const SizedBox(height: 24),
          Text(
            'Available colors:',
            style: GoogleFonts.inter(
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 10),
          ColorsAvailableListView(
            colors: product.colors,
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: CustomButton(
              title: 'Message Us',
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
