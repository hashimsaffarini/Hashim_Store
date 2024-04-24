import 'package:flutter/material.dart';
import 'package:hashim_store/core/utils/app_color.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 65,
        width: 65,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(50),
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
