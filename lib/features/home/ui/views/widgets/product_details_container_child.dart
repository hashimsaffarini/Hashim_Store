import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashim_store/core/utils/app_color.dart';
import 'package:hashim_store/core/widgets/custom_button.dart';
import 'package:hashim_store/features/home/data/models/product_item_model.dart';
import 'package:hashim_store/features/home/ui/logic/home_cubit/home_page_cubit.dart';
import 'package:hashim_store/features/home/ui/views/widgets/available_sizes_list_view.dart';
import 'package:hashim_store/features/home/ui/views/widgets/colors_available_list_view.dart';
import 'package:hashim_store/features/home/ui/views/widgets/header_details_page.dart';

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
          HeaderDetailsPage(
            product: product,
          ),
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
            child: BlocProvider(
              create: (context) => HomePageCubit(),
              child: BlocBuilder<HomePageCubit, HomePageState>(
                builder: (context, state) {
                  if (state is AddingToCart) {
                    return const CustomButton(
                      onPressed: null,
                      child: CircularProgressIndicator.adaptive(),
                    );
                  } else if (state is AddedToCart) {
                    return CustomButton(
                      onPressed: null,
                      child: Text(
                        'Added to cart',
                        style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    );
                  } else {
                    if (HomePageCubit.cartProductsCubit.contains(product)) {
                      return CustomButton(
                        onPressed: null,
                        child: Text(
                          'Already in cart',
                          style: GoogleFonts.inter(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      );
                    } else {
                      return CustomButton(
                        onPressed: () {
                          BlocProvider.of<HomePageCubit>(context)
                              .addToCart(product);
                        },
                        child: Text(
                          'Add to cart',
                          style: GoogleFonts.inter(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      );
                    }
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
