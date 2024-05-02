import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hashim_store/core/utils/app_color.dart';
import 'package:hashim_store/features/cart/ui/views/widgets/dismissible_child_widget.dart';

class CartPageListViewItem extends StatelessWidget {
  const CartPageListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: const ValueKey('cart_item'),
      direction: DismissDirection.horizontal,
      onDismissed: (direction) {
        if (direction == DismissDirection.endToStart) {
          log('Item dismissed');
        } else if (direction == DismissDirection.startToEnd) {
          log('Message store');
        }
      },
      background: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          color: Colors.green,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: const Icon(
            Icons.message,
            color: Colors.white,
            size: 28,
          ),
        ),
      ),
      secondaryBackground: Padding(
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
      child: const DismissibleChildWidget(),
    );
  }
}
