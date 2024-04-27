import 'package:flutter/material.dart';
import 'package:hashim_store/features/home/data/models/product_item_model.dart';
import 'package:hashim_store/features/home/presentation/views/widgets/producr_details_image.dart';
import 'package:hashim_store/features/home/presentation/views/widgets/product_details_container_child.dart';

class ProductDetailsPageBody extends StatelessWidget {
  const ProductDetailsPageBody({super.key, required this.product});
  final ProductItemModel product;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        ProductDetailsImage(size: size, product: product),
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.5),
          child: Container(
            width: size.width,
            height: size.height * 0.6,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: ProductDetailsContainerChild(product: product),
          ),
        )
      ],
    );
  }
}
