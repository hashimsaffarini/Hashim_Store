import 'package:flutter/material.dart';
import 'package:hashim_store/features/cart/ui/views/widgets/cart_page_header_text.dart';
import 'package:hashim_store/features/cart/ui/views/widgets/cart_page_list_view_item.dart';

class CartPageBody extends StatelessWidget {
  const CartPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CartPageHeaderText(),
        SizedBox(height: 20),
        CartPageListViewItem(),
      ],
    );
  }
}
