part of 'home_page_cubit.dart';

sealed class HomePageState {}

final class HomePageInitial extends HomePageState {}

final class HomePageLoading extends HomePageState {}

final class HomePageLoaded extends HomePageState {
  final List<ProductItemModel> favProducts;
  final List<ProductItemModel> products;
  HomePageLoaded(this.products, this.favProducts);
}

final class HomePageError extends HomePageState {
  final String message;
  HomePageError(this.message);
}
