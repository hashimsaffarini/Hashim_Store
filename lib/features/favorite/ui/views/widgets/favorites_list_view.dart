import 'package:flutter/material.dart';
import 'package:hashim_store/features/favorite/ui/views/widgets/add_to_cart_widget.dart';
import 'package:hashim_store/features/favorite/ui/views/widgets/card_favorite_page.dart';
import 'package:hashim_store/features/favorite/ui/views/widgets/xmark_widget.dart';
class FavoritesListView extends StatelessWidget {
  const FavoritesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Stack(
              children: [
                CardFavoritePage(),
                AddToCartWidget(),
                XmarkWidget(),
              ],
            ),
          );
        },
        childCount: 30,
      ),
    );
  }
}
