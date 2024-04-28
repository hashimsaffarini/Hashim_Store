import 'package:hashim_store/core/utils/assets.dart';

class ProductItemModel {
  final String id;
  final String title;
  final String imgUrl;
  final String description;
  final int price;
  final String category;
  final List<String> colors;
  final List<String> sizes;
  const ProductItemModel({
    required this.id,
    required this.title,
    required this.imgUrl,
    required this.description,
    required this.price,
    required this.category,
    this.colors = const [
      '720455',
      '121481',
      '430A5D',
      '222831',
      '344955',
      '000000'
    ],
    this.sizes = const [
      'S',
      'M',
      'L',
      'XL',
      'XXL',
      '3XL',
      '4XL',
      '5XL',
    ],
  });
}

List<ProductItemModel> dummyFavouriteProducts = [];
final List<ProductItemModel> dummyProducts = [
  const ProductItemModel(
    title: 'Product Name',
    imgUrl: AssetsData.test,
    price: 99,
    category: 'Man',
    description: 'This is a description of the product',
    id: '1',
  ),
  const ProductItemModel(
    title: 'Product Name',
    imgUrl: AssetsData.test2,
    price: 99,
    category: 'Man',
    description: 'This is a description of the product',
    id: '2',
  ),
  const ProductItemModel(
    title: 'Product Name',
    imgUrl: AssetsData.test3,
    price: 99,
    category: 'Woman',
    description: 'This is a description of the product',
    id: '3',
  ),
  const ProductItemModel(
    title: 'Product Name',
    imgUrl: AssetsData.test4,
    price: 99,
    category: 'Woman',
    description: 'This is a description of the product',
    id: '4',
  ),
  const ProductItemModel(
    title: 'Product Name',
    imgUrl: AssetsData.test5,
    price: 99,
    category: 'Teens',
    description: 'This is a description of the product',
    id: '5',
  ),
  const ProductItemModel(
    title: 'Product Name',
    imgUrl: AssetsData.test6,
    price: 99,
    category: 'Teens',
    description: 'This is a description of the product',
    id: '6',
  ),
  const ProductItemModel(
    title: 'Product Name',
    imgUrl: AssetsData.test7,
    price: 99,
    category: 'Baby',
    description: 'This is a description of the product',
    id: '7',
  ),
  const ProductItemModel(
    title: 'Product Name',
    imgUrl: AssetsData.test8,
    price: 99,
    category: 'Baby',
    description: 'This is a description of the product',
    id: '8',
  ),
];
