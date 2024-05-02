import 'package:flutter/material.dart';

class CartPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CartPageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(0);
}
