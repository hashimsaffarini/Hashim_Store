import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hashim_store/core/utils/app_color.dart';

class XmarkWidget extends StatelessWidget {
  const XmarkWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 2,
      child: IconButton(
        icon: const Icon(
          FontAwesomeIcons.xmark,
          color: AppColors.greyPrimary,
          size: 28,
        ),
        onPressed: () {},
      ),
    );
  }
}
