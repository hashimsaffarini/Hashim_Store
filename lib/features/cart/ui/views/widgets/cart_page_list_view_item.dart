import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hashim_store/core/utils/app_color.dart';
import 'package:hashim_store/features/cart/ui/views/widgets/dismissible_child_widget.dart';
import 'package:hashim_store/features/home/data/models/product_item_model.dart';
import 'package:hashim_store/features/home/ui/logic/home_cubit/home_page_cubit.dart';

class CartPageListViewItem extends StatelessWidget {
  const CartPageListViewItem({super.key, required this.product});
  final ProductItemModel product;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageCubit, HomePageState>(
      builder: (context, state) {
        if (state is HomePageLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is HomePageLoaded) {
          return Dismissible(
            key: ValueKey(product.id),
            direction: DismissDirection.endToStart,
            onDismissed: (direction) {
              if (direction == DismissDirection.endToStart) {
                BlocProvider.of<HomePageCubit>(context)
                    .removeProductFromCart(product);
                product.counter = 1;
              }
            },
            background: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                color: AppColors.primaryColor,
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const Icon(
                  Icons.delete,
                  color: Colors.white,
                  size: 28,
                ),
              ),
            ),
            child: DismissibleChildWidget(
              product: product,
            ),
          );
        } else {
          return const Center(
            child: Text('Error Message'),
          );
        }
      },
    );
  }
}
