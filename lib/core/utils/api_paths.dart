class ApiPaths {
  static String products() => 'products/';
  static String productItem(String id) => 'products/$id';
  static String favorite() => 'favorite/';
  static String favoriteItem(String id) => 'favorite/$id';
  static String cart() => 'cart/';
  static String cartItem(String id) => 'cart/$id';
  static String user(String uid) => 'users/$uid';
}
