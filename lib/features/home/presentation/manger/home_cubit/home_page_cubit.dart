import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hashim_store/features/home/data/models/product_item_model.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageInitial());

  void changeFavoriteState(ProductItemModel product) {
    if (dummyFavouriteProducts.contains(product)) {
      dummyFavouriteProducts.remove(product);
    } else {
      dummyFavouriteProducts.add(product);
    }
    emit(HomePageLoaded(dummyProducts, dummyFavouriteProducts));
  }

  void getAllProducts() {
    emit(HomePageLoading());
    emit(HomePageLoaded(dummyProducts, dummyFavouriteProducts));
  }
}
