import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hashim_store/core/utils/app_router.dart';
import 'package:hashim_store/features/home/data/models/product_item_model.dart';
import 'package:hashim_store/features/home/ui/logic/home_cubit/home_page_cubit.dart';
import 'package:hashim_store/features/home/ui/views/widgets/grid_view_item.dart';
class GridViewItemSearchPage extends StatefulWidget {
  const GridViewItemSearchPage({
    super.key,
    required this.product,
  });

  final ProductItemModel product;

  @override
  State<GridViewItemSearchPage> createState() => _GridViewItemSearchPageState();
}

class _GridViewItemSearchPageState extends State<GridViewItemSearchPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context)
            .push(
              AppRouter.productDetailsPage,
              extra: widget.product,
            )
            .then((value) => setState(() {
                  BlocProvider.of<HomePageCubit>(context).getAllProducts();
                }));
      },
      child: GridViewItem(
        product: widget.product,
      ),
    );
  }
}
