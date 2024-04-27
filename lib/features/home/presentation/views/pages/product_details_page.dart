import 'package:flutter/material.dart';
import 'package:hashim_store/features/home/data/models/product_item_model.dart';
import 'package:hashim_store/features/home/presentation/views/widgets/product_details_app_bar.dart';
import 'package:hashim_store/features/home/presentation/views/widgets/product_details_page_body.dart';

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
