import 'package:flutter/material.dart';

class CustomCategoryItem extends StatelessWidget {
  const CustomCategoryItem(
      {super.key, required this.title, required this.imgUrl, this.onTap});
  final String title;
  final String imgUrl;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {},
          child: CircleAvatar(
            radius: 36,
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
            child: const ImageIcon(
              AssetImage(
                'assets/images/sneakers.png',
              ),
              size: 50,
            ),
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'Sneakers',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
