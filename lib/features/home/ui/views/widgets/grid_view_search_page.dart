import 'package:flutter/material.dart';
import 'package:hashim_store/features/home/data/models/product_item_model.dart';
import 'package:hashim_store/features/home/ui/views/widgets/grid_view_item_search_page.dart';

class GridViewSeachPage extends StatelessWidget {
  const GridViewSeachPage({
    super.key,
    required this.products,
  });

  final List<ProductItemModel> products;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.7,
          crossAxisCount: 2,
          crossAxisSpacing: 14,
          mainAxisSpacing: 12,
        ),
        itemBuilder: (context, index) {
          return GridViewItemSearchPage(product: products[index]);
        },
      ),
    );
  }
}
