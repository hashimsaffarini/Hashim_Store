import 'package:flutter/material.dart';
import 'package:hashim_store/features/cart/ui/views/widgets/cart_page_app_bar.dart';
import 'package:hashim_store/features/cart/ui/views/widgets/cart_page_body.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CartPageAppBar(),
      body: Padding(
        padding: EdgeInsets.only(left: 24, top: 30, right: 24),
        child: CartPageBody(),
      ),
    );
  }
}
