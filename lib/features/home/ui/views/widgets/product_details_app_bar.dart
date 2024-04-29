import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hashim_store/core/utils/app_color.dart';

class ProductDetailsPageAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const ProductDetailsPageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      flexibleSpace: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.only(top: 60, left: 24),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.white,
                    size: 26,
                    shadows: [
                      Shadow(
                        offset: Offset(0, 2),
                        blurRadius: 4.0,
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                      )
                    ],
                  ),
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(65);
}
