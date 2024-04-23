import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hashim_store/features/home/presentation/views/pages/home_page.dart';

abstract class AppRouter {
  static const homePage = '/';
  static final router = GoRouter(routes: [
    GoRoute(
      path: homePage,
      pageBuilder: (context, state) => const MaterialPage(
        child: HomePage(),
      ),
    )
  ]);
}
