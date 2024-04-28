import 'package:flutter/material.dart';
import 'package:hashim_store/core/utils/assets.dart';

class CustomCategoryItem extends StatelessWidget {
  const CustomCategoryItem({
    super.key,
    required this.category,
    required this.imgUrl,
    this.onTap,
    required this.id,
  });
  final String id;
  final String category;
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
          category,
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
    id: '0',
    category: 'All',
    imgUrl: AssetsData.all,
    onTap: () {},
  ),
  CustomCategoryItem(
    id: '1',
    category: 'Man',
    imgUrl: AssetsData.man,
    onTap: () {},
  ),
  CustomCategoryItem(
    id: '2',
    category: 'Woman',
    imgUrl: AssetsData.woman,
    onTap: () {},
  ),
  CustomCategoryItem(
    id: '3',
    category: 'Teens',
    imgUrl: AssetsData.teens,
    onTap: () {},
  ),
  CustomCategoryItem(
    id: '4',
    category: 'Baby',
    imgUrl: AssetsData.baby,
    onTap: () {},
  ),
  CustomCategoryItem(
    id: '5',
    category: 'Shoes',
    imgUrl: AssetsData.shoes,
    onTap: () {},
  ),
  CustomCategoryItem(
    id: '6',
    category: 'Summer',
    imgUrl: AssetsData.summer,
    onTap: () {},
  ),
  CustomCategoryItem(
    id: '7',
    category: 'Wristwatch',
    imgUrl: AssetsData.wristwatch,
    onTap: () {},
  ),
];
