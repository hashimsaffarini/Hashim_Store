import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hashim_store/core/utils/app_router.dart';
import 'package:hashim_store/features/home/ui/logic/home_cubit/home_page_cubit.dart';
import 'package:hashim_store/features/home/ui/views/widgets/empty_widget.dart';
import 'package:hashim_store/features/home/ui/views/widgets/grid_view_item.dart';

class GriveViewCategoriesItems extends StatefulWidget {
  const GriveViewCategoriesItems({
    super.key,
  });

  @override
  State<GriveViewCategoriesItems> createState() =>
      _GriveViewCategoriesItemsState();
}

class _GriveViewCategoriesItemsState extends State<GriveViewCategoriesItems> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageCubit, HomePageState>(
      builder: (context, state) {
        if (state is HomePageLoading) {
          return const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 120),
              child: Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            ),
          );
        } else if (state is HomePageLoaded) {
          if (state.products.isEmpty) {
            return const EmptyWidget();
          } else {
            return SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.7,
                crossAxisCount: 2,
                crossAxisSpacing: 14,
                mainAxisSpacing: 12,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return GestureDetector(
                    onTap: () {
                      GoRouter.of(context)
                          .push(
                            AppRouter.productDetailsPage,
                            extra: state.products[index],
                          )
                          .then((value) => setState(() {}));
                    },
                    child: GridViewItem(
                      product: state.products[index],
                    ),
                  );
                },
                childCount: state.products.length,
              ),
            );
          }
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: Text('Error'),
            ),
          );
        }
      },
    );
  }
}
