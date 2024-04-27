import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hashim_store/features/home/data/models/product_item_model.dart';

class FavoriteGridViewWidget extends StatelessWidget {
  const FavoriteGridViewWidget({
    super.key,
    required this.product,
  });
  final ProductItemModel product;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 6,
      top: 6,
      child: Container(
        height: 42,
        width: 42,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {
              if (favouriteProducts.contains(product)) {
                favouriteProducts.remove(product);
              } else {
                favouriteProducts.add(product);
              }
              log(favouriteProducts.length.toString());
            },
          ),
        ),
      ),
    );
  }
}
