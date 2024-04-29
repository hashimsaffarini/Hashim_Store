import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hashim_store/core/utils/app_color.dart';

class AddToCartWidget extends StatelessWidget {
  const AddToCartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 2,
      bottom: 0,
      child: GestureDetector(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: const BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8),
            ),
          ),
          child: const Icon(
            FontAwesomeIcons.bagShopping,
            color: Colors.white,
            size: 20,
          ),
        ),
      ),
    );
  }
}
