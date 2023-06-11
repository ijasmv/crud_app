// ignore_for_file: use_build_context_synchronously

import 'package:crud_app/application/auth/auth_bloc.dart';
import 'package:crud_app/application/core/app_colors.dart';
import 'package:crud_app/application/tweet/tweet_bloc.dart';
import 'package:crud_app/domain/auth/status/auth_status.dart';
import 'package:crud_app/presentation/auth/login_screen.dart';
import 'package:crud_app/presentation/tweet/tweet_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AuthBloc>().add(const CheckAuth());
    });
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) async {
        await Future.delayed(const Duration(seconds: 2));
        if (state.authStatus == const AuthStatus.loggedIn()) {
          context.read<TweetBloc>().add(const GetTweetsStream());
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (ctx) => const TweetScreen()));
        } else {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (ctx) => LoginScreen()));
        }
      },
      child: const Scaffold(
        body: Center(
          child: Icon(
            Icons.people,
            color: AppColors.primaryColor,
            size: 100,
          ),
        ),
      ),
    );
  }
}
