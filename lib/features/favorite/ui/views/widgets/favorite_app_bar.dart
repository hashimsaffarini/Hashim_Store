import 'package:flutter/material.dart';

class FavoriteAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FavoriteAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(0);
}
