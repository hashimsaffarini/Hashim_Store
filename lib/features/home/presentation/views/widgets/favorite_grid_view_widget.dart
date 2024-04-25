import 'package:flutter/material.dart';

class FavoriteGridViewWidget extends StatelessWidget {
  const FavoriteGridViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 6,
      top: 6,
      child: Container(
        height: 42,
        width: 42,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
