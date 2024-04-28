import 'package:flutter/material.dart';
import 'package:hashim_store/features/home/ui/views/widgets/custum_category_item.dart';

class ListViewCategories extends StatelessWidget {
  const ListViewCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 12),
            child: categoriesList[index],
          );
        },
      ),
    );
  }
}
