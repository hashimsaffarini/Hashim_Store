import 'package:flutter/material.dart';
import 'package:hashim_store/features/home/presentation/views/widgets/grid_view_item.dart';
class GriveViewCategoriesItems extends StatelessWidget {
  const GriveViewCategoriesItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: gridViewItems.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.7,
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 12,
      ),
      itemBuilder: (context, index) {
        return gridViewItems[index];
      },
    );
  }
}
