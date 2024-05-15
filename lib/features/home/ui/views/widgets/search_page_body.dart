import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hashim_store/core/utils/app_color.dart';
import 'package:hashim_store/features/home/ui/logic/home_cubit/home_page_cubit.dart';
import 'package:hashim_store/features/home/ui/views/widgets/grid_view_item.dart';

class SearchPageBody extends StatelessWidget {
  const SearchPageBody({super.key, required this.brand});
  final String brand;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 36),
          BlocBuilder<HomePageCubit, HomePageState>(
            builder: (context, state) {
              if (state is HomePageLoading) {
                return const Padding(
                  padding: EdgeInsets.only(top: 280),
                  child: Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
                );
              } else if (state is HomePageLoaded) {
                final products = state.products
                    .where(
                      (product) => product.title.toLowerCase().contains(
                            brand.toLowerCase(),
                          ),
                    )
                    .toList();
                if (products.isEmpty) {
                  return const Padding(
                    padding: EdgeInsets.only(top: 280),
                    child: Center(
                      child: Text(
                        'No Products Found!',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  );
                } else {
                  return Expanded(
                    child: GridView.builder(
                      itemCount: products.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 0.7,
                        crossAxisCount: 2,
                        crossAxisSpacing: 14,
                        mainAxisSpacing: 12,
                      ),
                      itemBuilder: (context, index) {
                        return GridViewItem(product: products[index]);
                      },
                    ),
                  );
                }
              } else {
                return const Text('Error');
              }
            },
          )
        ],
      ),
    );
  }
}
