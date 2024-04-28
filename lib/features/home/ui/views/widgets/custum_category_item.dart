import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hashim_store/core/utils/app_color.dart';
import 'package:hashim_store/core/utils/assets.dart';
import 'package:hashim_store/features/home/ui/logic/home_cubit/home_page_cubit.dart';

class CustomCategoryItem extends StatelessWidget {
  const CustomCategoryItem({
    super.key,
    required this.category,
    required this.imgUrl,
    required this.id,
  });
  final String id;
  final String category;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<HomePageCubit>(context);
    return BlocBuilder<HomePageCubit, HomePageState>(
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 36,
              backgroundColor: cubit.selectedCategory == category ||
                      cubit.selectedCategory == null && id == '0'
                  ? AppColors.primaryColor
                  : Theme.of(context).colorScheme.primaryContainer,
              child: ImageIcon(
                AssetImage(
                  imgUrl,
                ),
                size: 50,
                color: cubit.selectedCategory == category ||
                        cubit.selectedCategory == null && id == '0'
                    ? Colors.white
                    : Colors.black,
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
      },
    );
  }
}

final List<CustomCategoryItem> categoriesList = [
  const CustomCategoryItem(
    id: '0',
    category: 'All',
    imgUrl: AssetsData.all,
  ),
  const CustomCategoryItem(
    id: '1',
    category: 'Man',
    imgUrl: AssetsData.man,
  ),
  const CustomCategoryItem(
    id: '2',
    category: 'Woman',
    imgUrl: AssetsData.woman,
  ),
  const CustomCategoryItem(
    id: '3',
    category: 'Teens',
    imgUrl: AssetsData.teens,
  ),
  const CustomCategoryItem(
    id: '4',
    category: 'Baby',
    imgUrl: AssetsData.baby,
  ),
  const CustomCategoryItem(
    id: '5',
    category: 'Shoes',
    imgUrl: AssetsData.shoes,
  ),
  const CustomCategoryItem(
    id: '6',
    category: 'Summer',
    imgUrl: AssetsData.summer,
  ),
  const CustomCategoryItem(
    id: '7',
    category: 'Wristwatch',
    imgUrl: AssetsData.wristwatch,
  ),
];
