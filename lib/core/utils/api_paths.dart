import 'package:firebase_auth/firebase_auth.dart';

class ApiPaths {
  static String _userId() {
    final currentUser = FirebaseAuth.instance.currentUser;
    return currentUser?.uid ?? 'guest';
  }

  static String products() => 'products/';
  static String productItem(String id) => 'products/$id';
  static String favorite() => 'users/${_userId()}/favorite/';
  static String favoriteItem(String id) => 'users/${_userId()}/favorite/$id';
  static String cart() => 'users/${_userId()}/cart/';
  static String cartItem(String id) => 'users/${_userId()}/cart/$id';
  static String user() => 'users/${_userId()}';
}
