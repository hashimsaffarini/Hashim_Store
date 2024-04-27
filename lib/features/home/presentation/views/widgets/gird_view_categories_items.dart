import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hashim_store/core/utils/app_router.dart';
import 'package:hashim_store/features/home/data/models/product_item_model.dart';
import 'package:hashim_store/features/home/presentation/views/widgets/grid_view_item.dart';

class GriveViewCategoriesItems extends StatefulWidget {
  const GriveViewCategoriesItems({
    super.key,
  });

  @override
  State<GriveViewCategoriesItems> createState() => _GriveViewCategoriesItemsState();
}

class _GriveViewCategoriesItemsState extends State<GriveViewCategoriesItems> {
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
            onTap: () {
              GoRouter.of(context).push(
                AppRouter.productDetailsPage,
                extra: dummyProducts[index],
              ).then((value) => setState(() {}));
            },
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
