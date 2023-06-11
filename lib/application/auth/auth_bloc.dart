import 'package:crud_app/domain/auth/i_auth_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:crud_app/domain/auth/status/auth_status.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepo iAuthRepo;
  AuthBloc(this.iAuthRepo) : super(AuthState.initial()) {
    // Create new user
    on<Register>((event, emit) async {
      emit(state.copyWith(isLoading: true, authStatus: const AuthStatus()));
      try {
        final userCred =
            await iAuthRepo.register(email: event.email, password: event.password);
        print(userCred);
        print(userCred?.user);
        if (userCred != null) {
          emit(state.copyWith(
            isLoading: false,
            authStatus: const AuthStatus.registered(),
            userData: userCred.user,
          ));
        } else {
          emit(state.copyWith(
              isLoading: false,
              authStatus: const AuthStatus.registerFailed(),
              userData: null,
              errorMessage: "Register Failed"));
        }
      } catch (e) {
        emit(state.copyWith(
            isLoading: false,
            authStatus: const AuthStatus.registerFailed(),
            userData: null,
            errorMessage: e.toString()));
      }
    });

    // Login
    on<Login>((event, emit) async {
      emit(state.copyWith(isLoading: true, authStatus: const AuthStatus()));
      try {
        final userCred = await iAuthRepo.login(email: event.email, password: event.password);
        if (userCred != null) {
          emit(state.copyWith(
            isLoading: false,
            authStatus: const AuthStatus.loggedIn(),
            userData: userCred.user,
          ));
        } else {
          emit(state.copyWith(
              isLoading: false,
              authStatus: const AuthStatus.loginFailed(),
              userData: null,
              errorMessage: "Login Failed"));
        }
      } catch (e) {
        emit(state.copyWith(
            isLoading: false,
            authStatus: const AuthStatus.loginFailed(),
            userData: null,
            errorMessage: e.toString()));
      }
    });

    // Check Auth
    on<CheckAuth>((event, emit) async {
      emit(state.copyWith(isLoading: true, authStatus: const AuthStatus()));
      try {
        final userCred = await iAuthRepo.checkAuth();
        if (userCred != null) {
          emit(state.copyWith(
            isLoading: false,
            authStatus: const AuthStatus.loggedIn(),
            userData: userCred,
          ));
        } else {
          emit(state.copyWith(
              isLoading: false,
              authStatus: const AuthStatus.loginFailed(),
              userData: null,
              errorMessage: "Authentication Failed"));
        }
      } catch (e) {
        emit(state.copyWith(
            isLoading: false,
            authStatus: const AuthStatus.loginFailed(),
            userData: null,
            errorMessage: e.toString()));
      }
    });

    // Sign Out
    on<SignOut>((event, emit) async {
      emit(state.copyWith(isLoading: true, authStatus: const AuthStatus()));
      try {
        await iAuthRepo.signOut();
        emit(state.copyWith(
          isLoading: false,
          authStatus: const AuthStatus.signedOut(),
          userData: null,
        ));
      } catch (_) {}
    });
  }
}
