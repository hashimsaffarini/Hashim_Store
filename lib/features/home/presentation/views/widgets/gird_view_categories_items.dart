import 'package:flutter/material.dart';
import 'package:hashim_store/features/home/data/models/product_item_model.dart';
import 'package:hashim_store/features/home/presentation/views/widgets/grid_view_item.dart';

class GriveViewCategoriesItems extends StatelessWidget {
  const GriveViewCategoriesItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.7,
        crossAxisCount: 2,
        crossAxisSpacing: 14,
        mainAxisSpacing: 12,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return GestureDetector(
            onTap: () {},
            child: GridViewItem(
              product: dummyProducts[index],
            ),
          );
        },
        childCount: dummyProducts.length,
      ),
    );
  }
}
