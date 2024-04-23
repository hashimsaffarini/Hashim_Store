import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hashim_store/core/widgets/custom_nav_bar.dart';

abstract class AppRouter {
  static const navBar = '/';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: navBar,
        pageBuilder: (context, state) => const MaterialPage(
          child: BottomNavBar(),
        ),
      )
    ],
  );
}
