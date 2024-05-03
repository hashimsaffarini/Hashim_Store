part of 'cart_page_cubit.dart';

sealed class CartPageState {}

final class CartPageInitial extends CartPageState {}

final class QuantityChanged extends CartPageState {
  QuantityChanged();
}
