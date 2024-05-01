import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashim_store/core/utils/app_color.dart';
import 'package:hashim_store/features/favorite/ui/views/widgets/add_to_cart_widget.dart';
import 'package:hashim_store/features/favorite/ui/views/widgets/card_favorite_page.dart';
import 'package:hashim_store/features/favorite/ui/views/widgets/xmark_widget.dart';
import 'package:hashim_store/features/home/ui/logic/home_cubit/home_page_cubit.dart';

class FavoritesListView extends StatelessWidget {
  const FavoritesListView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<HomePageCubit>(context);
    return BlocBuilder<HomePageCubit, HomePageState>(
      builder: (context, state) {
        if (state is HomePageLoaded) {
          final favProducts = state.favProducts;
          if (favProducts.isEmpty) {
            return SliverFillRemaining(
              child: Center(
                child: Text(
                  'Add some products to your favorites list!',
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            );
          } else {
            return SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Stack(
                      children: [
                        CardFavoritePage(
                          product: favProducts[index],
                        ),
                        AddToCartWidget(
                          onTap: () {
                            if (state.cartProducts
                                .contains(favProducts[index])) {
                              AwesomeDialog(
                                context: context,
                                dialogType: DialogType.info,
                                animType: AnimType.bottomSlide,
                                title: 'This product is already in the cart',
                                btnOkOnPress: () {},
                                btnOkColor: AppColors.primaryColor,
                              ).show();
                            } else {
                              AwesomeDialog(
                                context: context,
                                dialogType: DialogType.success,
                                animType: AnimType.bottomSlide,
                                dismissOnTouchOutside: false,
                                title: 'Added to cart',
                                desc: 'Product added to cart successfully',
                                btnOkOnPress: () {
                                  cubit.addToCartFromFavorite(
                                      favProducts[index]);
                                  cubit.changeFavoriteState(favProducts[index]);
                                },
                                btnOkColor: AppColors.primaryColor,
                              ).show();
                            }
                          },
                        ),
                        XmarkWidget(
                          onPressed: () {
                            cubit.changeFavoriteState(favProducts[index]);
                          },
                        ),
                      ],
                    ),
                  );
                },
                childCount: favProducts.length,
              ),
            );
          }
        } else if (state is HomePageLoading) {
          return const SliverFillRemaining(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        return const SliverFillRemaining(
          child: Center(
            child: Text('Error'),
          ),
        );
      },
    );
  }
}
