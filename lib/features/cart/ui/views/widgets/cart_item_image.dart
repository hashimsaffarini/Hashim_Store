import 'package:flutter/material.dart';

class CartItemImage extends StatelessWidget {
  const CartItemImage({
    super.key,
    required this.imgUrl,
  });
  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(
        imgUrl,
        height: 130,
        width: 120,
        fit: BoxFit.cover,
      ),
    );
  }
}
