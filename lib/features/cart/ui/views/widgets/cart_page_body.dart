import 'package:flutter/material.dart';
import 'package:hashim_store/features/cart/ui/views/widgets/cart_page_header_text.dart';
import 'package:hashim_store/features/cart/ui/views/widgets/cart_page_list_view_item.dart';
import 'package:hashim_store/features/cart/ui/views/widgets/single_child_scroll_child_cart_page.dart';

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
        DraggableScrollableSheet(
          initialChildSize: 0.39,
          minChildSize: 0.1,
          maxChildSize: 0.42,
          builder: (context, scrollController) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: SingleChildScrollView(
                controller: scrollController,
                child: const SingleChildScrollChildCartPage(),
              ),
            );
          },
        )
      ],
    );
  }
}
