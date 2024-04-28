import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hashim_store/features/home/data/models/product_item_model.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageInitial());

  String? selectedCategory;
  static List<ProductItemModel> cartProductsCubit = [];
  void changeFavoriteState(ProductItemModel product) {
    if (dummyFavouriteProducts.contains(product)) {
      dummyFavouriteProducts.remove(product);
    } else {
      dummyFavouriteProducts.add(product);
    }
    emit(HomePageLoaded(
        dummyProducts, dummyFavouriteProducts, dummyCartProducts));
  }

  void getAllProducts() async {
    try {
      emit(HomePageLoading());
      // await Future.delayed(const Duration(seconds: 1));
      emit(HomePageLoaded(
          dummyProducts, dummyFavouriteProducts, dummyCartProducts));
    } catch (e) {
      emit(HomePageError("Failed to fetch products"));
      log('Error fetching products: $e');
    }
  }

  Future<void> getProductsByCategory(String category) async {
    emit(HomePageLoading());
    try {
      final List<ProductItemModel> products = dummyProducts
          .where((element) => element.category == category)
          .toList();
      emit(HomePageLoaded(products, dummyFavouriteProducts, dummyCartProducts));
    } catch (e) {
      emit(HomePageError("Failed to fetch products"));
      log('Error fetching products: $e');
    }
  }

  Future<void> addToCart(ProductItemModel product) async {
    try {
      emit(AddingToCart());
      await Future.delayed(const Duration(seconds: 2));
      dummyCartProducts.add(product);
      cartProductsCubit.add(product);
      emit(AddedToCart(product));
    } catch (e) {
      emit(AddToCartError("Failed to add to cart"));
      log('Error adding to cart: $e');
    }
  }
}
