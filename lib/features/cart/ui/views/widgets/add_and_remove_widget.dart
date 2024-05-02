import 'package:flutter/material.dart';
import 'package:hashim_store/core/utils/app_color.dart';
class AddAndRemoveWidget extends StatelessWidget {
  const AddAndRemoveWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 223, 217, 217),
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          ),
          child: const Icon(
            Icons.remove,
            color: AppColors.primaryColor,
            size: 20,
          ),
        ),
        const SizedBox(width: 12),
        const Text(
          '1',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(width: 12),
        Container(
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 20,
          ),
        ),
        const Spacer(),
        const Text(
          '₪99.99',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}

