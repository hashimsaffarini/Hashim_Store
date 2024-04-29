import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hashim_store/features/favorite/ui/views/widgets/favorite_app_bar.dart';
import 'package:hashim_store/features/favorite/ui/views/widgets/favorite_page_body.dart';
import 'package:hashim_store/features/home/ui/logic/home_cubit/home_page_cubit.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageCubit(),
      child: const Scaffold(
        appBar: FavoriteAppBar(),
        body: Padding(
          padding: EdgeInsets.only(left: 24, top: 30, right: 24),
          child: FavoritePageBody(),
        ),
      ),
    );
  }
}
