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
        DraggableScrollableSheet(
          maxChildSize: 0.66,
          initialChildSize: 0.6,
          minChildSize: 0.5,
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: SingleChildScrollView(
                controller: scrollController,
                child: ProductDetailsContainerChild(product: product),
              ),
            );
          },
        ),
      ],
    );
  }
}
