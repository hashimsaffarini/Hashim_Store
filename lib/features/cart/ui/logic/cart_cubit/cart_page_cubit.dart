import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hashim_store/features/home/data/models/product_item_model.dart';

part 'cart_page_state.dart';

class CartPageCubit extends Cubit<CartPageState> {
  CartPageCubit() : super(CartPageInitial());

  int counter = 1;

  Future<void> increment(ProductItemModel product) async {
    if (counter < product.quantity) {
      counter++;
    }
    emit(QuantityChanged(counter));
  }

  Future<void> decrement(ProductItemModel product) async {
    if (counter > 1) {
      counter--;
    }
    emit(QuantityChanged(counter));
  }
}
