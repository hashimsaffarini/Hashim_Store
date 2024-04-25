import 'package:flutter/material.dart';
import 'package:hashim_store/features/home/data/models/product_item_model.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key, required this.product});
  final ProductItemModel product;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProductDetailsPageBody(),
    );
  }
}

class ProductDetailsPageBody extends StatelessWidget {
  const ProductDetailsPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [],
    );
  }
}
