import 'package:flutter/material.dart';
import 'package:hashim_store/features/favorite/ui/views/widgets/favorite_app_bar.dart';
import 'package:hashim_store/features/favorite/ui/views/widgets/favorite_page_body.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: FavoriteAppBar(),
      body: FavoritePageBody(),
    );
  }
}
