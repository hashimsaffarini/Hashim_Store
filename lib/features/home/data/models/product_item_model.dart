import 'package:hashim_store/core/utils/assets.dart';

class ProductItemModel {
  final String id;
  final String title;
  final String imgUrl;
  final String description;
  final int price;
  final String category;

  const ProductItemModel({
    required this.id,
    required this.title,
    required this.imgUrl,
    required this.description,
    required this.price,
    required this.category,
  });
}

final List<ProductItemModel> dummyProducts = [
  const ProductItemModel(
    title: 'Product Name',
    imgUrl: AssetsData.test,
    price: 99,
    category: 'Men',
    description: 'This is a description of the product',
    id: '1',
  ),
  const ProductItemModel(
    title: 'Product Name',
    imgUrl: AssetsData.test2,
    price: 99,
    category: 'Men',
    description: 'This is a description of the product',
    id: '2',
  ),
  const ProductItemModel(
    title: 'Product Name',
    imgUrl: AssetsData.test3,
    price: 99,
    category: 'Men',
    description: 'This is a description of the product',
    id: '3',
  ),
  const ProductItemModel(
    title: 'Product Name',
    imgUrl: AssetsData.test4,
    price: 99,
    category: 'Men',
    description: 'This is a description of the product',
    id: '4',
  ),
  const ProductItemModel(
    title: 'Product Name',
    imgUrl: AssetsData.test5,
    price: 99,
    category: 'Men',
    description: 'This is a description of the product',
    id: '5',
  ),
  const ProductItemModel(
    title: 'Product Name',
    imgUrl: AssetsData.test6,
    price: 99,
    category: 'Men',
    description: 'This is a description of the product',
    id: '6',
  ),
  const ProductItemModel(
    title: 'Product Name',
    imgUrl: AssetsData.test7,
    price: 99,
    category: 'Men',
    description: 'This is a description of the product',
    id: '7',
  ),
  const ProductItemModel(
    title: 'Product Name',
    imgUrl: AssetsData.test8,
    price: 99,
    category: 'Men',
    description: 'This is a description of the product',
    id: '8',
  ),
];
