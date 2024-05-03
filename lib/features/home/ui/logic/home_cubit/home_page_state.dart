part of 'home_page_cubit.dart';

sealed class HomePageState {}

final class HomePageInitial extends HomePageState {}

final class HomePageLoading extends HomePageState {}

final class HomePageLoaded extends HomePageState {
  final List<ProductItemModel> favProducts;
  final List<ProductItemModel> products;
  final List<ProductItemModel> cartProducts;
  HomePageLoaded(this.products, this.favProducts, this.cartProducts);
}

final class HomePageError extends HomePageState {
  final String message;
  HomePageError(this.message);
}

final class AddingToCart extends HomePageState {}

final class AddedToCart extends HomePageState {
  final ProductItemModel product;
  AddedToCart(this.product);
}

final class AddToCartError extends HomePageState {
  final String message;
  AddToCartError(this.message);
}

// final class QuantityChanged extends HomePageState {
//   final int counter;
//   QuantityChanged(this.counter);
// }
