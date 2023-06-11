import 'package:firebase_auth/firebase_auth.dart';

abstract class IAuthRepo {
  Future<UserCredential?> register({required String email, required String password});
  Future<User?> checkAuth();
  Future<UserCredential?> login({required String email, required String password});
  Future<void> signOut();
}
