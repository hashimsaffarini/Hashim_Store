import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hashim_store/core/utils/app_color.dart';
import 'package:hashim_store/features/cart/ui/views/widgets/cart_page_list_view_item.dart';
import 'package:hashim_store/features/home/ui/logic/home_cubit/home_page_cubit.dart';

class ListViewCartPage extends StatelessWidget {
  const ListViewCartPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageCubit, HomePageState>(
      builder: (context, state) {
        if (state is HomePageLoaded) {
          final products = state.cartProducts;
          if (products.isEmpty) {
            return const Padding(
              padding: EdgeInsets.only(top: 150),
              child: Text(
                'No items in the cart, Add some items to the cart',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor,
                ),
              ),
            );
          } else {
            return ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: CartPageListViewItem(
                    product: products[index],
                  ),
                );
              },
            );
          }
        } else if (state is HomePageLoading) {
          return const Center(
            child: Padding(
              padding: EdgeInsets.only(bottom: 250),
              child: CircularProgressIndicator.adaptive(),
            ),
          );
        } else {
          return const Center(
            child: Text('Error Listing Products'),
          );
        }
      },
    );
  }
}
