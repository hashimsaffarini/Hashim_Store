import 'package:flutter/material.dart';
import 'package:hashim_store/features/cart/ui/views/widgets/cart_page_list_view_item.dart';

class ListViewCartPage extends StatelessWidget {
  const ListViewCartPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 8),
          child: CartPageListViewItem(),
        );
      },
    );
  }
}
