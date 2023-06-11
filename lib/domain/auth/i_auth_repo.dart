import 'package:firebase_auth/firebase_auth.dart';

abstract class IAuthRepo {
  Future<User?> register(
      {required String email, required String password, required String name});
  Future<User?> checkAuth();
  Future<User?> login({required String email, required String password});
  Future<void> signOut();
}
