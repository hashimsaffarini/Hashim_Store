import 'package:flutter/material.dart';
import 'package:hashim_store/features/home/data/models/product_item_model.dart';

class ContainerGridViewWidget extends StatelessWidget {
  const ContainerGridViewWidget({
    super.key,
    required this.width,
    required this.product,
  });

  final double width;
  final ProductItemModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: width * 1.08,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            product.imgUrl,
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
