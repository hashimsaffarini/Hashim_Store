//import 'package:firebase_auth/firebase_auth.dart';
import 'package:hashim_store/core/services/firestore_services.dart';
import 'package:hashim_store/core/utils/api_paths.dart';
import 'package:hashim_store/features/home/data/models/product_item_model.dart';

abstract class HomeServices {
  Future<List<ProductItemModel>> getProducts();
  Future<void> addProduct(ProductItemModel product);
  Future<List<ProductItemModel>> getFavProducts();
  Future<void> addFavProduct(ProductItemModel product);
  Future<void> removeFavProduct(ProductItemModel product);
  Future<void> addProductToCart(ProductItemModel product);
  Future<void> removeProductFromCart(ProductItemModel product);
  Future<List<ProductItemModel>> getCartProducts();
}

class HomeServicesImpl implements HomeServices {
  final firestoreService = FirestoreService.instance;

  @override
  Future<List<ProductItemModel>> getProducts() async =>
      await firestoreService.getCollection<ProductItemModel>(
        path: ApiPaths.products(),
        builder: (data, documentId) => ProductItemModel.fromMap(
          data,
          documentId,
        ),
      );
  @override
  Future<void> addProduct(ProductItemModel product) async {
    await firestoreService.setData(
      path: ApiPaths.productItem(product.id),
      data: product.toMap(),
    );
  }

  @override
  Future<void> addFavProduct(ProductItemModel product) async {
    // if (FirebaseAuth.instance.currentUser == null) {
    //   throw Exception('User not logged in');
    // }
    await firestoreService.setData(
      path: ApiPaths.favoriteItem(product.id),
      data: product.toMap(),
    );
  }

  @override
  Future<List<ProductItemModel>> getFavProducts() async =>
      await firestoreService.getCollection<ProductItemModel>(
        path: ApiPaths.favorite(),
        builder: (data, documentId) => ProductItemModel.fromMap(
          data,
          documentId,
        ),
      );
  @override
  Future<void> removeFavProduct(ProductItemModel product) async =>
      await firestoreService.deleteData(
        path: ApiPaths.favoriteItem(product.id),
      );

  @override
  Future<void> addProductToCart(ProductItemModel product) async =>
      await firestoreService.setData(
        path: ApiPaths.cartItem(product.id),
        data: product.toMap(),
      );

  @override
  Future<void> removeProductFromCart(ProductItemModel product) async =>
      await firestoreService.deleteData(
        path: ApiPaths.cartItem(product.id),
      );

  @override
  Future<List<ProductItemModel>> getCartProducts() async =>
      await firestoreService.getCollection(
        path: ApiPaths.cart(),
        builder: (data, documentId) => ProductItemModel.fromMap(
          data,
          documentId,
        ),
      );
}
