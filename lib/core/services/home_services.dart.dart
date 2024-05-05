import 'package:hashim_store/core/services/firestore_services.dart';
import 'package:hashim_store/core/utils/api_paths.dart';
import 'package:hashim_store/features/home/data/models/product_item_model.dart';

abstract class HomeServices {
  Future<List<ProductItemModel>> getProducts();
  Future<void> addProduct(ProductItemModel product);
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
}
