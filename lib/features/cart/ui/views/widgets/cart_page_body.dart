import 'package:flutter/material.dart';

class CartPageBody extends StatelessWidget {
  const CartPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Cart Page',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }
}
