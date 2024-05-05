import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hashim_store/features/home/ui/logic/home_cubit/home_page_cubit.dart';
import 'package:hashim_store/features/home/ui/views/widgets/custum_category_item.dart';

class ListViewCategories extends StatelessWidget {
  const ListViewCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<HomePageCubit>(context);
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 12),
            child: BlocBuilder<HomePageCubit, HomePageState>(
              builder: (context, state) {
                return GestureDetector(
                  onTap: () {
                    if (cubit.selectedCategory != null &&
                            cubit.selectedCategory ==
                                categoriesList[index].category ||
                        categoriesList[index].id == '0') {
                      cubit.getAllProducts();
                      cubit.selectedCategory = null;
                    } else {
                      cubit.getProductsByCategory(
                          categoriesList[index].category);
                      cubit.selectedCategory = categoriesList[index].category;
                    }
                  },
                  child: categoriesList[index],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
