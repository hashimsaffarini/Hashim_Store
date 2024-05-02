import 'package:flutter/material.dart';
class CartItemImage extends StatelessWidget {
  const CartItemImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(
        'assets/images/test2.png',
        height: 130,
        width: 120,
        fit: BoxFit.cover,
      ),
    );
  }
}
