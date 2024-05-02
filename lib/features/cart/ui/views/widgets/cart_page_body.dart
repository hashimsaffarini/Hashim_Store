import 'package:flutter/material.dart';
import 'package:hashim_store/features/cart/ui/views/widgets/cart_page_header_text.dart';
import 'package:hashim_store/features/cart/ui/views/widgets/cart_page_list_view_item.dart';
import 'package:hashim_store/features/cart/ui/views/widgets/scrollable_sheet_widget.dart';

class CartPageBody extends StatelessWidget {
  const CartPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CartPageHeaderText(),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: CartPageListViewItem(),
                    );
                  },
                ),
              )
            ],
          ),
        ),
        const ScrollableSheetWidget()
      ],
    );
  }
}
