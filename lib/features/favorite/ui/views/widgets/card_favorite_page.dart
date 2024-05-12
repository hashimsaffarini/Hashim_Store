import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hashim_store/core/utils/app_color.dart';
import 'package:hashim_store/features/home/data/models/product_item_model.dart';
import 'package:hashim_store/features/home/ui/views/widgets/sale_texts.dart';

class CardFavoritePage extends StatelessWidget {
  const CardFavoritePage({
    super.key,
    required this.product,
  });
  final ProductItemModel product;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: product.imgUrl,
                height: 130,
                width: 120,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Add To Cart Now!',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.greyPrimary,
                      ),
                    ),
                    const SizedBox(height: 5),
                    product.sale != 0
                        ? SaleTexts(product: product)
                        : Text(
                            '₪${product.price}',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: AppColors.primaryColor,
                            ),
                          ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
