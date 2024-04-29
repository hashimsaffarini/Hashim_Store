import 'package:flutter/material.dart';
import 'package:hashim_store/features/favorite/ui/views/widgets/favorite_header_text.dart';
import 'package:hashim_store/features/favorite/ui/views/widgets/favorites_list_view.dart';

class FavoritePageBody extends StatelessWidget {
  const FavoritePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: FavoriteHeaderText(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 20),
        ),
        FavoritesListView(),
      ],
    );
  }
}
