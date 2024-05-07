import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hashim_store/core/widgets/custom_nav_bar.dart';
import 'package:hashim_store/features/auth/ui/views/pages/sign_in_page.dart';
import 'package:hashim_store/features/auth/ui/views/pages/sign_up_page.dart';
import 'package:hashim_store/features/home/data/models/product_item_model.dart';
import 'package:hashim_store/features/home/ui/views/pages/product_details_page.dart';
//import 'package:hashim_store/features/boarding/ui/views/pages/boarding_page.dart';

abstract class AppRouter {
  static const boardingPage = '/';
  static const navBar = '/navBar';
  static const productDetailsPage = '/productDetailsPpage';
  static const signIn = '/';
  static const signUp = '/signUp';
  static final router = GoRouter(
    routes: [
      // GoRoute(
      //   path: mainSplashPage,
      //   pageBuilder: (context, state) => const MaterialPage(
      //     child: BoardingPage(),
      //   ),
      // ),
      GoRoute(
        path: signIn,
        pageBuilder: (context, state) => const MaterialPage(
          child: SignInPage(),
        ),
      ),
      GoRoute(
        path: navBar,
        pageBuilder: (context, state) => const MaterialPage(
          child: BottomNavBar(),
        ),
      ),
      GoRoute(
        path: productDetailsPage,
        pageBuilder: (context, state) => MaterialPage(
          child: ProductDetailsPage(
            product: state.extra as ProductItemModel,
          ),
        ),
      ),
      GoRoute(
        path: signUp,
        pageBuilder: (context, state) => const MaterialPage(
          child: SignUpPage(),
        ),
      ),
    ],
  );
}
