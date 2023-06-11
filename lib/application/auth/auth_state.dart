part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool isLoading,
    required AuthStatus authStatus,
    required User? userData,
    required String errorMessage,
  }) = _AuthState;

  factory AuthState.initial() {
    return const AuthState(
      isLoading: false,
      authStatus: AuthStatus(),
      userData: null,
      errorMessage: "",
    );
  }
}
