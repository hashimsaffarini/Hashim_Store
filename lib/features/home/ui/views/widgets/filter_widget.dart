import 'package:flutter/material.dart';
import 'package:hashim_store/core/utils/app_color.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 58,
        width: 58,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Icon(
          Icons.filter_alt_rounded,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
