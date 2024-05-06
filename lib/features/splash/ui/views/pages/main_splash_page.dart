import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hashim_store/core/utils/app_router.dart';
import 'package:hashim_store/features/cart/ui/views/widgets/cart_page_app_bar.dart';

class MainSplashPage extends StatefulWidget {
  const MainSplashPage({super.key});

  @override
  State<MainSplashPage> createState() => _MainSplashPageState();
}

class _MainSplashPageState extends State<MainSplashPage>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  Animation<double>? _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1400),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _animationController!,
      curve: Curves.easeIn,
    );
    _animationController!.forward().then((_) => _goToHomePage());
  }

  void _goToHomePage() {
    if (mounted) {
      GoRouter.of(context).push(AppRouter.navBar);
    }
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CartPageAppBar(),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Expanded(
            child: FadeTransition(
              opacity: _animation!,
              child: Image.asset(
                'assets/images/gg.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
