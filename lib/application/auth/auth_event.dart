part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.register(
      {required String email, required String password, required String name}) = Register;
  const factory AuthEvent.login({required String email, required String password}) = Login;
  const factory AuthEvent.signOut() = SignOut;
  const factory AuthEvent.checkAuth() = CheckAuth;
}
