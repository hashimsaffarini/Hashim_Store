import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hashim_store/core/services/home_services.dart.dart';
import 'package:hashim_store/features/home/data/models/product_item_model.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageInitial());
  final HomeServices homeServices = HomeServicesImpl();
  String? selectedCategory;
  static List<ProductItemModel> cartProductsCubit = [];
  int counter = 0;
  void changeFavoriteState(ProductItemModel product) async {
    try {
      final List<ProductItemModel> products = await homeServices.getProducts();
      final List<ProductItemModel> favProducts =
          await homeServices.getFavProducts();
      final List<ProductItemModel> cartProducts =
          await homeServices.getCartProducts();
      int index = favProducts.indexWhere((element) => element.id == product.id);
      if (index != -1) {
        homeServices.removeFavProduct(product);
        favProducts.removeAt(index);
      } else {
        homeServices.addFavProduct(product);
        favProducts.add(product);
      }
      emit(
        HomePageLoaded(products, favProducts, cartProducts),
      );
    } catch (e) {
      emit(HomePageError("Failed to fetch products"));
      log('Error fetching products: $e');
    }
  }

  void getAllProducts() async {
    emit(HomePageLoading());
    try {
      final List<ProductItemModel> products = await homeServices.getProducts();
      final List<ProductItemModel> favProducts =
          await homeServices.getFavProducts();
      final List<ProductItemModel> cartProducts =
          await homeServices.getCartProducts();
      emit(HomePageLoaded(products, favProducts, cartProducts));
    } catch (e) {
      emit(HomePageError("Failed to fetch products"));
      log('Error fetching products: $e');
    }
  }

  void getProductsForCart() async {
    try {
      final List<ProductItemModel> products = await homeServices.getProducts();
      final List<ProductItemModel> favProducts =
          await homeServices.getFavProducts();
      final List<ProductItemModel> cartProducts =
          await homeServices.getCartProducts();
      emit(HomePageLoaded(products, favProducts, cartProducts));
    } catch (e) {
      emit(HomePageError("Failed to fetch products"));
      log('Error fetching products: $e');
    }
  }

  Future<void> getProductsByCategory(String category) async {
    emit(HomePageLoading());
    try {
      final List<ProductItemModel> products = await homeServices.getProducts();
      final List<ProductItemModel> filteredProducts =
          products.where((element) => element.category == category).toList();
      final List<ProductItemModel> favProducts =
          await homeServices.getFavProducts();
      final List<ProductItemModel> cartProducts =
          await homeServices.getCartProducts();
      emit(HomePageLoaded(filteredProducts, favProducts, cartProducts));
    } catch (e) {
      emit(HomePageError("Failed to fetch products"));
      log('Error fetching products: $e');
    }
  }

  Future<void> addToCart(ProductItemModel product) async {
    emit(AddingToCart());
    try {
      final List<ProductItemModel> cartProducts =
          await homeServices.getCartProducts();
      cartProducts.add(product);
      cartProductsCubit.add(product);
      homeServices.addProductToCart(product);
      emit(AddedToCart(product));
    } catch (e) {
      emit(AddToCartError("Failed to add to cart"));
      log('Error adding to cart: $e');
    }
  }

  Future<void> removeProductFromCart(ProductItemModel product) async {
    try {
      final List<ProductItemModel> products = await homeServices.getProducts();
      final List<ProductItemModel> favProducts =
          await homeServices.getFavProducts();
      final List<ProductItemModel> cartProducts =
          await homeServices.getCartProducts();
      cartProducts.remove(product);
      cartProductsCubit.remove(product);
      homeServices.removeProductFromCart(product);
      emit(HomePageLoaded(products, favProducts, cartProducts));
    } catch (e) {
      emit(HomePageError("Failed to fetch products"));
      log('Error fetching products: $e');
    }
  }

  Future<void> addToCartFromFavorite(ProductItemModel product) async {
    try {
      final List<ProductItemModel> products = await homeServices.getProducts();
      final List<ProductItemModel> favProducts =
          await homeServices.getFavProducts();
      final List<ProductItemModel> cartProducts =
          await homeServices.getCartProducts();
      cartProducts.add(product);
      cartProductsCubit.add(product);
      homeServices.addProductToCart(product);
      emit(HomePageLoaded(products, favProducts, cartProducts));
    } catch (e) {
      emit(HomePageError("Failed to fetch products"));
      log('Error fetching products: $e');
    }
  }

  // Future<void> increment(ProductItemModel product) async {
  //   if (product.counterUser < product.quantity) {
  //     counter++;
  //   }
  //   emit(QuantityChanged(counter));
  // }

  // Future<void> decrement(ProductItemModel product) async {
  //   if (product.counterUser > 1) {
  //     counter--;
  //   }
  //   emit(QuantityChanged(counter));
  // }
}
