class ProductItemModel {
  final String id;
  final String title;
  final String imgUrl;
  final String description;
  final int price;
  final String category;
  final int quantity;
  final List<String> colors;
  final List<String> sizes;
  final int sale;
  int counter;
  ProductItemModel({
    required this.id,
    required this.title,
    required this.imgUrl,
    required this.description,
    required this.price,
    required this.category,
    this.quantity = 10,
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
    this.counter = 1,
    this.sale = 25,
  });

  void incrementCounter() {
    if (counter < quantity) {
      counter++;
    }
  }

  void decrementCounter() {
    if (counter > 1) {
      counter--;
    }
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'imgUrl': imgUrl,
      'description': description,
      'price': price,
      'category': category,
      'quantity': quantity,
      'colors': colors,
      'sizes': sizes,
      'sale': sale,
      'counter': counter,
    };
  }

  factory ProductItemModel.fromMap(
      Map<String, dynamic> map, String documentId) {
    return ProductItemModel(
      id: documentId,
      title: map['title'] as String,
      imgUrl: map['imgUrl'] as String,
      description: map['description'] as String,
      price: map['price'] as int,
      category: map['category'] as String,
      quantity: map['quantity'] as int,
      // Use `.cast<String>()` to safely cast the dynamic list to a list of strings
      colors: List<String>.from(map['colors'] ?? []).cast<String>(),
      sizes: List<String>.from(map['sizes'] ?? []).cast<String>(),
      sale: map['sale'] as int,
      counter: (map['counter'] ?? 1)
          as int, // Provide a default value in case it's null
    );
  }
}

List<ProductItemModel> dummyCartProducts = [];
List<ProductItemModel> dummyFavouriteProducts = [];
// final List<ProductItemModel> dummyProducts = [
//   ProductItemModel(
//     title: 'Product Name',
//     imgUrl: AssetsData.test,
//     price: 99,
//     category: 'Man',
//     description: 'This is a description of the product',
//     id: '1',
//   ),
//   ProductItemModel(
//     title: 'Product Name',
//     imgUrl: AssetsData.test2,
//     price: 99,
//     category: 'Man',
//     description: 'This is a description of the product',
//     id: '2',
//   ),
//   ProductItemModel(
//     title: 'Product Name',
//     imgUrl: AssetsData.test3,
//     price: 99,
//     category: 'Woman',
//     description: 'This is a description of the product',
//     id: '3',
//   ),
//   ProductItemModel(
//     title: 'Product Name',
//     imgUrl: AssetsData.test4,
//     price: 99,
//     category: 'Woman',
//     description: 'This is a description of the product',
//     id: '4',
//   ),
//   ProductItemModel(
//     title: 'Product Name',
//     imgUrl: AssetsData.test5,
//     price: 99,
//     category: 'Teens',
//     description: 'This is a description of the product',
//     id: '5',
//   ),
//   ProductItemModel(
//     title: 'Product Name',
//     imgUrl: AssetsData.test6,
//     price: 99,
//     category: 'Teens',
//     description: 'This is a description of the product',
//     id: '6',
//   ),
//   ProductItemModel(
//     title: 'Product Name',
//     imgUrl: AssetsData.test7,
//     price: 99,
//     category: 'Baby',
//     description: 'This is a description of the product',
//     id: '7',
//   ),
//   ProductItemModel(
//     title: 'Product Name',
//     imgUrl: AssetsData.test8,
//     price: 99,
//     category: 'Baby',
//     description: 'This is a description of the product',
//     id: '8',
//   ),
// ];
