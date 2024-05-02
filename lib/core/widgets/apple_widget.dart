import 'package:flutter/material.dart';
import 'package:hashim_store/core/utils/app_color.dart';

class AppleWidget extends StatelessWidget {
  const AppleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: 40,
      decoration: BoxDecoration(
        color: AppColors.greyPrimary,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}
