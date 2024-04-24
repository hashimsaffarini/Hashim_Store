import 'package:flutter/material.dart';
import 'package:hashim_store/features/home/presentation/views/widgets/home_page_app_bar.dart';
import 'package:hashim_store/features/home/presentation/views/widgets/home_page_body.dart';
import 'package:hashim_store/features/home/presentation/views/widgets/home_page_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomePageAppBar(),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 40),
            HomePageBody(),
          ],
        ),
      ),
      drawer: HomePageDrawer(),
    );
  }
}
