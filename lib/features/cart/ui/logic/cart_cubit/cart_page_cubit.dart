import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hashim_store/core/services/home_services.dart.dart';
import 'package:hashim_store/features/home/data/models/product_item_model.dart';

part 'cart_page_state.dart';

class CartPageCubit extends Cubit<CartPageState> {
  CartPageCubit() : super(CartPageInitial());

  int counter = 1;
  final HomeServices homeServices = HomeServicesImpl();
  void increment(ProductItemModel product) {
    product.incrementCounter();
    homeServices.addProductToCart(product);
    emit(
        QuantityChanged()); // You may want to pass product-specific data if needed
  }

  void decrement(ProductItemModel product) {
    product.decrementCounter();
    homeServices.addProductToCart(product);
    emit(QuantityChanged()); // Update to reflect changes
  }

  void getCartProducts() {
    emit(QuantityChanged());
  }
}
