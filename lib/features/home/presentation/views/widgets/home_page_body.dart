import 'package:flutter/material.dart';
import 'package:hashim_store/features/home/presentation/views/widgets/categories_text.dart';
import 'package:hashim_store/features/home/presentation/views/widgets/gird_view_categories_items.dart';
import 'package:hashim_store/features/home/presentation/views/widgets/list_view_categories.dart';
import 'package:hashim_store/features/home/presentation/views/widgets/search_and_filter.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchAndFilter(),
          SizedBox(height: 26),
          CategoriesText(),
          SizedBox(height: 24),
          ListViewCategories(),
          SizedBox(height: 36),
          GriveViewCategoriesItems()
        ],
      ),
    );
  }
}
