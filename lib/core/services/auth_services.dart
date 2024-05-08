import 'package:firebase_auth/firebase_auth.dart';
import 'package:hashim_store/core/services/firestore_services.dart';
import 'package:hashim_store/core/utils/api_paths.dart';

abstract class AuthServices {
  Future<bool> signInWithEmailAndPassword(String email, String password);
  Future<bool> signUpWithEmailAndPassword(
      String email, String password, String name);
  Future<void> signOut();
  Future<User?> currentUser();

  String? getName();
}

class AuthServicesImpl implements AuthServices {
  // Singleton Design Pattern
  final firebaseAuth = FirebaseAuth.instance;
  final firestoreServices = FirestoreService.instance;
  @override
  Future<bool> signInWithEmailAndPassword(String email, String password) async {
    try {
      final userCredential = await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      User? user = userCredential.user;
      if (user != null) {
        return true;
      } else {
        throw Exception('User creation failed for unknown reasons');
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw Exception('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        throw Exception('Wrong password provided for that user.');
      } else if (e.code == 'invalid-email') {
        throw Exception('Invalid email provided.');
      } else if (e.code == 'user-disabled') {
        throw Exception('User disabled.');
      }

      throw Exception('Failed to sign in: ${e.message}');
    } catch (e) {
      throw Exception('An unexpected error occurred: ${e.toString()}');
    }
  }

  @override
  Future<void> signOut() async {
    firebaseAuth.signOut();
  }

  @override
  Future<bool> signUpWithEmailAndPassword(
      String email, String password, String name) async {
    try {
      final userCredential = await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      User? user = userCredential.user;
      if (user != null) {
        user.updateDisplayName(name);
        await user.reload();
        await firestoreServices.setData(path: ApiPaths.user(user.uid), data: {
          'uid': user.uid,
          'email': user.email,
          'name': name,
          'phone': user.phoneNumber,
          'photoUrl': user.photoURL,
        });

        return true;
      } else {
        throw Exception('User creation failed for unknown reasons');
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        throw Exception('The account already exists for that email.');
      }
      throw Exception('Failed to sign up: ${e.message}');
    } catch (e) {
      throw Exception('An unexpected error occurred: ${e.toString()}');
    }
  }

  @override
  Future<User?> currentUser() {
    return Future.value(firebaseAuth.currentUser);
  }

  @override
  String? getName() {
    return firebaseAuth.currentUser?.displayName;
  }

  static FirebaseAuth getFirebaseAuth() {
    return FirebaseAuth.instance;
  }
}
