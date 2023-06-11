import 'package:crud_app/application/auth/auth_bloc.dart';
import 'package:crud_app/application/core/app_colors.dart';
import 'package:crud_app/application/core/ui_constants.dart';
import 'package:crud_app/domain/auth/status/auth_status.dart';
import 'package:crud_app/presentation/splash/splash_screen.dart';
import 'package:crud_app/presentation/tweet/widgets/new_tweet_widget.dart';
import 'package:crud_app/presentation/tweet/widgets/tweets_listview.dart';
import 'package:crud_app/presentation/widgets/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TweetScreen extends StatelessWidget {
  const TweetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.authStatus == const AuthStatus.signedOut()) {
          Navigator.popUntil(context, (route) => route.isFirst);
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (ctx) => const SplashScreen()));
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text("Logged Out Successfully")));
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tweets"),
          actions: [
            IconButton(
              onPressed: () {
                context.read<AuthBloc>().add(const SignOut());
              },
              icon: const Icon(Icons.logout),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kPageHPadding,
              vertical: kPageVPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const NewTweetWidget(),
                verticalSpace(20),
                const Text(
                  "Recent Tweets",
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                verticalSpace(10),
                const TweetsListView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
