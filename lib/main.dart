import 'package:crud_app/application/auth/auth_bloc.dart';
import 'package:crud_app/application/tweet/tweet_bloc.dart';
import 'package:crud_app/domain/core/di/injectable.dart';
import 'package:crud_app/presentation/splash/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureDependencies();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => getIt<AuthBloc>()),
        BlocProvider(create: (ctx) => getIt<TweetBloc>()),
      ],
      child: MaterialApp(
        title: 'CRUD APP',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
