import 'package:flutter/material.dart';
class FavoritePageBody extends StatelessWidget {
  const FavoritePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Favorite',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
