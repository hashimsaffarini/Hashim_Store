import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hashim_store/core/utils/app_color.dart';
import 'package:hashim_store/features/home/data/models/product_item_model.dart';
import 'package:hashim_store/features/home/ui/logic/home_cubit/home_page_cubit.dart';

class FavoriteGridViewWidget extends StatelessWidget {
  const FavoriteGridViewWidget({
    super.key,
    required this.product,
  });
  final ProductItemModel product;
  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<HomePageCubit>(context);
    return Positioned(
      right: 6,
      top: 6,
      child: Container(
        height: 42,
        width: 42,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: BlocBuilder<HomePageCubit, HomePageState>(
            builder: (context, state) {
              if (state is HomePageLoaded) {
                return IconButton(
                  onPressed: () {
                    cubit.changeFavoriteState(product);
                    log(state.favProducts.length.toString());
                  },
                  icon: Icon(
                    state.favProducts.contains(product)
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: state.favProducts.contains(product)
                        ? AppColors.primaryColor
                        : Colors.black,
                  ),
                );
              } else if (state is HomePageLoading) {
                return const CircularProgressIndicator.adaptive();
              } else {
                return const SizedBox();
              }
            },
          ),
        ),
      ),
    );
  }
}
