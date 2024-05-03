import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hashim_store/features/cart/ui/logic/cart_cubit/cart_page_cubit.dart';
import 'package:hashim_store/features/cart/ui/views/widgets/counter_widget.dart';
import 'package:hashim_store/features/home/data/models/product_item_model.dart';

class AddAndRemoveWidget extends StatelessWidget {
  const AddAndRemoveWidget({
    super.key,
    required this.product,
  });
  final ProductItemModel product;
  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<CartPageCubit>(context);

    return BlocBuilder<CartPageCubit, CartPageState>(
      bloc: cubit,
      builder: (context, state) {
        if (state is QuantityChanged) {
          return CounterWidget(
            product: product,
            cubit: cubit,
            counter: product.counter,
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
