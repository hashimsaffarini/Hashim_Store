import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hashim_store/features/home/ui/views/widgets/categories_text.dart';
import 'package:hashim_store/features/home/ui/views/widgets/list_view_categories.dart';
import 'package:hashim_store/features/home/ui/views/widgets/search_and_filter.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 24),
          SearchAndFilter(),
          SizedBox(height: 26),
          CategoriesText(),
          SizedBox(height: 24),
          ListViewCategories(),
          SizedBox(height: 36),
        ],
      ),
    );
  }
}
