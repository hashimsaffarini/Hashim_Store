import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hashim_store/core/utils/app_color.dart';
import 'package:hashim_store/features/home/data/models/product_item_model.dart';
import 'package:hashim_store/features/home/ui/logic/home_cubit/home_page_cubit.dart';

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
            cubit.decrement(product);
            BlocProvider.of<HomePageCubit>(context).getAllProducts();
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
            cubit.increment(product);
            BlocProvider.of<HomePageCubit>(context).getAllProducts();
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
          '₪${product.price - (product.price * product.sale) / 100}',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
