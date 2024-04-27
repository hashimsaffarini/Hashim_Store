import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hashim_store/features/home/presentation/manger/home_cubit/home_page_cubit.dart';
import 'package:hashim_store/features/home/presentation/views/widgets/gird_view_categories_items.dart';
import 'package:hashim_store/features/home/presentation/views/widgets/home_page_app_bar.dart';
import 'package:hashim_store/features/home/presentation/views/widgets/home_page_body.dart';
import 'package:hashim_store/features/home/presentation/views/widgets/home_page_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageCubit(
        
      ),
      child: const Scaffold(
        appBar: HomePageAppBar(),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  HomePageBody(),
                ],
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              sliver: GriveViewCategoriesItems(),
            ),
          ],
        ),
        drawer: HomePageDrawer(),
      ),
    );
  }
}
