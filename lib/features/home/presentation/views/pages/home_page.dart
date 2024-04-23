import 'package:flutter/material.dart';
import 'package:hashim_store/features/home/presentation/views/widgets/custom_app_bar_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HomePageAppBar(),
            // HomePageBody(),
          ],
        ),
      ),
    );
  }
}
