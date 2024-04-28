import 'package:flutter/material.dart';
import 'package:hashim_store/core/utils/assets.dart';

class CustomCategoryItem extends StatelessWidget {
  const CustomCategoryItem({
    super.key,
    required this.title,
    required this.imgUrl,
    this.onTap,
  });
  final String title;
  final String imgUrl;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: onTap,
          child: CircleAvatar(
            radius: 36,
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
            child: ImageIcon(
              AssetImage(
                imgUrl,
              ),
              size: 50,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

final List<CustomCategoryItem> categoriesList = [
  CustomCategoryItem(
    title: 'All',
    imgUrl: AssetsData.all,
    onTap: () {},
  ),
  CustomCategoryItem(
    title: 'Man',
    imgUrl: AssetsData.man,
    onTap: () {},
  ),
  CustomCategoryItem(
    title: 'Woman',
    imgUrl: AssetsData.woman,
    onTap: () {},
  ),
  CustomCategoryItem(
    title: 'Teens',
    imgUrl: AssetsData.teens,
    onTap: () {},
  ),
  CustomCategoryItem(
    title: 'Baby',
    imgUrl: AssetsData.baby,
    onTap: () {},
  ),
  CustomCategoryItem(
    title: 'Shoes',
    imgUrl: AssetsData.shoes,
    onTap: () {},
  ),
  CustomCategoryItem(
    title: 'Summer',
    imgUrl: AssetsData.summer,
    onTap: () {},
  ),
  CustomCategoryItem(
    title: 'Wristwatch',
    imgUrl: AssetsData.wristwatch,
    onTap: () {},
  ),
];
