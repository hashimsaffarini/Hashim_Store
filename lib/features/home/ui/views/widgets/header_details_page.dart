import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hashim_store/core/utils/app_color.dart';
import 'package:hashim_store/features/home/data/models/product_item_model.dart';
import 'package:hashim_store/features/home/ui/logic/home_cubit/home_page_cubit.dart';

class HeaderDetailsPage extends StatelessWidget {
  const HeaderDetailsPage({
    super.key,
    required this.product,
  });

  final ProductItemModel product;

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<HomePageCubit>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          product.title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12),
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
                    size: 30,
                  ),
                );
              } else {
                return const CircularProgressIndicator.adaptive();
              }
            },
          ),
        ),
      ],
    );
  }
}
