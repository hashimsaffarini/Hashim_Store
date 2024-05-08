import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashim_store/core/services/auth_services.dart';
import 'package:hashim_store/core/utils/app_router.dart';
import 'package:hashim_store/features/home/ui/logic/home_cubit/home_page_cubit.dart';
import 'package:hashim_store/features/home/ui/views/widgets/gird_view_categories_items.dart';
import 'package:hashim_store/features/home/ui/views/widgets/home_page_app_bar.dart';
import 'package:hashim_store/features/home/ui/views/widgets/home_page_body.dart';
import 'package:hashim_store/features/home/ui/views/widgets/home_page_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<HomePageCubit>(context).getAllProducts();
    if (!HomePageCubit.openAppFirstTime &&
        AuthServicesImpl().getName() == null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _showWelcomeDialog(context);
      });
      HomePageCubit.openAppFirstTime = true;
    }
  }

  void _showWelcomeDialog(BuildContext context) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.info,
      animType: AnimType.bottomSlide,
      title: 'Welcome!',
      titleTextStyle: GoogleFonts.interTight(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      desc: 'How would you like to continue?',
      descTextStyle: GoogleFonts.interTight(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      btnCancelOnPress: () {},
      btnCancelText: 'As Guest',
      btnOkOnPress: () {
        GoRouter.of(context).go(AppRouter.signIn);
      },
      btnOkText: 'SignIN/SignUP',
    ).show();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomePageAppBar(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                HomePageBody(),
              ],
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            sliver: GriveViewCategoriesItems(),
          ),
        ],
      ),
      drawer: HomePageDrawer(),
    );
  }
}
