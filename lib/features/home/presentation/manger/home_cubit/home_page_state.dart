part of 'home_page_cubit.dart';

sealed class HomePageState {}

final class HomePageInitial extends HomePageState {}

final class HomePageLoading extends HomePageState {}

final class HomePageLoaded extends HomePageState {
  final List<ProductItemModel> products;
  HomePageLoaded(this.products);
}

final class HomePageError extends HomePageState {
  final String message;
  HomePageError(this.message);
}

final class FavoriteProducts extends HomePageState {
  final List<ProductItemModel> products;
  FavoriteProducts(this.products);
}
