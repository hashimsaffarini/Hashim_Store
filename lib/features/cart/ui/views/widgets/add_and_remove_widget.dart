import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hashim_store/core/utils/app_color.dart';
import 'package:hashim_store/features/home/data/models/product_item_model.dart';
import 'package:hashim_store/features/home/ui/logic/home_cubit/home_page_cubit.dart';

class AddAndRemoveWidget extends StatelessWidget {
  const AddAndRemoveWidget({
    super.key,
    required this.product,
  });
  final ProductItemModel product;
  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<HomePageCubit>(context);

    return BlocBuilder<HomePageCubit, HomePageState>(
      bloc: cubit,
      buildWhen: (previous, current) => current is QuantityChanged,
      builder: (context, state) {
        if (state is QuantityChanged) {
          return CounterWidget(
            product: product,
            cubit: cubit,
            counter: state.counter,
          );
        } else {
          return CounterWidget(
            product: product,
            cubit: cubit,
            counter: 1,
          );
        }
      },
    );
  }
}

class CounterWidget extends StatelessWidget {
  const CounterWidget({
    super.key,
    required this.product,
    required this.cubit,
    required this.counter,
  });
  final dynamic cubit;
  final ProductItemModel product;
  final int counter;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            log('Remove');
            cubit.decrement(product);
          },
          child: Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 223, 217, 217),
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            child: const Icon(
              Icons.remove,
              color: AppColors.primaryColor,
              size: 20,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Text(
          '$counter',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(width: 12),
        GestureDetector(
          onTap: () {
            log('Add');
            cubit.increment(product);
          },
          child: Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
        const Spacer(),
        Text(
          '₪${product.price}',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
