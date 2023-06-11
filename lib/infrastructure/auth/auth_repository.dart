import 'package:firebase_auth/firebase_auth.dart';
import 'package:crud_app/domain/auth/i_auth_repo.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthRepo)
class AuthRepository implements IAuthRepo {
  final _fAuthInstance = FirebaseAuth.instance;

  @override
  Future<UserCredential?> register({required String email, required String password}) async {
    try {
      final userCredential = await _fAuthInstance.createUserWithEmailAndPassword(
          email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw e.message ?? "";
    }
  }

  @override
  Future<User?> checkAuth() async {
    try {
      final user = _fAuthInstance.currentUser;
      return user;
    } on FirebaseAuthException catch (e) {
      throw e.message ?? "";
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await _fAuthInstance.signOut();
    } on FirebaseAuthException catch (e) {
      throw e.message ?? "";
    }
  }

  @override
  Future<UserCredential?> login({required String email, required String password}) async {
    try {
      final userCredential =
          await _fAuthInstance.signInWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw e.message ?? "";
    }
  }
/* 
  Future<void> sendVerificationEmail() async {
    try {
      if (_fAuthInstance.currentUser != null) {
        await _fAuthInstance.currentUser!.sendEmailVerification();
      }
    } on FirebaseAuthException catch (e) {
      throw e.message ?? "";
    }
  } */
}
