import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_status.freezed.dart';

@freezed
class AuthStatus with _$AuthStatus {
  const factory AuthStatus() = _AuthStatus;
  const factory AuthStatus.loggedIn() = _LoggedIn;
  const factory AuthStatus.registered() = _Registered;
  const factory AuthStatus.signedOut() = _SignedOut;
  const factory AuthStatus.loginFailed() = _LoginFailed;
  const factory AuthStatus.registerFailed() = _RegisterFailed;
}
