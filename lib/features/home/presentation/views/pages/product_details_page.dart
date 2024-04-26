import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hashim_store/core/utils/app_color.dart';
import 'package:hashim_store/features/home/data/models/product_item_model.dart';
import 'package:hashim_store/features/home/presentation/views/widgets/product_details_app_bar.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key, required this.product});
  final ProductItemModel product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const ProductDetailsPageAppBar(),
      body: SafeArea(
        top: false,
        child: ProductDetailsPageBody(
          product: product,
        ),
      ),
    );
  }
}

class ProductDetailsPageBody extends StatelessWidget {
  const ProductDetailsPageBody({super.key, required this.product});
  final ProductItemModel product;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        const SizedBox(
          height: 10,
        ),
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
