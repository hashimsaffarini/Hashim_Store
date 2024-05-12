import 'package:cached_network_image/cached_network_image.dart';
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
      child: CachedNetworkImage(
        imageUrl: imgUrl,
        height: 130,
        width: 120,
        fit: BoxFit.cover,
      ),
    );
  }
}
