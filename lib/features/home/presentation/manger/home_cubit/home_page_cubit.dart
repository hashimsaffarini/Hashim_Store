import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hashim_store/features/home/data/models/product_item_model.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageInitial());
  List<ProductItemModel> favouriteProductsCubit = [];
  void changeFavoriteState(ProductItemModel product) {
    if (favouriteProductsCubit.contains(product)) {
      favouriteProductsCubit.remove(product);
    } else {
      favouriteProductsCubit.add(product);
    }
    emit(HomePageLoaded(dummyProducts, favouriteProductsCubit));
  }
}
