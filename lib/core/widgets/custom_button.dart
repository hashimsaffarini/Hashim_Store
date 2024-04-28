import 'package:flutter/material.dart';
import 'package:hashim_store/core/utils/app_color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.height = 61,
    this.width = double.infinity,
    this.borderRadius = 10,
    required this.onPressed,
    this.child,
  });
  final double height;
  final double width;
  final double borderRadius;
  final VoidCallback? onPressed;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: child,
      ),
    );
  }
}
