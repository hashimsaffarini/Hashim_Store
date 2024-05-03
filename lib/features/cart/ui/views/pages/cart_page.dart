import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hashim_store/features/cart/ui/views/widgets/cart_page_app_bar.dart';
import 'package:hashim_store/features/cart/ui/views/widgets/cart_page_body.dart';
import 'package:hashim_store/features/home/ui/logic/home_cubit/home_page_cubit.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<HomePageCubit>(context).getAllProducts();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CartPageAppBar(),
      body: CartPageBody(),
    );
  }
}
