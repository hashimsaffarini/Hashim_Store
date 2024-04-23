import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hashim_store/features/home/presentation/views/widgets/custom_text_field.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          CustomTextField(),
        ],
      ),
    );
  }
}
