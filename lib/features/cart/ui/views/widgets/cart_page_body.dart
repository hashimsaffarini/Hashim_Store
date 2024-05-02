import 'package:flutter/material.dart';
import 'package:hashim_store/features/cart/ui/views/widgets/cart_page_header_text.dart';
import 'package:hashim_store/features/cart/ui/views/widgets/list_view_cart_page.dart';
import 'package:hashim_store/features/cart/ui/views/widgets/scrollable_sheet_widget.dart';

class CartPageBody extends StatelessWidget {
  const CartPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CartPageHeaderText(),
              SizedBox(height: 20),
              Expanded(
                child: ListViewCartPage(),
              )
            ],
          ),
        ),
        ScrollableSheetWidget()
      ],
    );
  }
}
