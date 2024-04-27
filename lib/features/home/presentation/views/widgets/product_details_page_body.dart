import 'package:flutter/material.dart';
import 'package:hashim_store/features/home/data/models/product_item_model.dart';

class ProductDetailsPageBody extends StatelessWidget {
  const ProductDetailsPageBody({super.key, required this.product});
  final ProductItemModel product;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: size.height * 0.6,
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(
              product.imgUrl,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}
