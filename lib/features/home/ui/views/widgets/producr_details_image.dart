import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hashim_store/features/home/data/models/product_item_model.dart';

class ProductDetailsImage extends StatelessWidget {
  const ProductDetailsImage({
    super.key,
    required this.size,
    required this.product,
  });

  final Size size;
  final ProductItemModel product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: size.height * 0.6,
      child: AspectRatio(
        aspectRatio: 1,
        child: CachedNetworkImage(
          imageUrl: product.imgUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
