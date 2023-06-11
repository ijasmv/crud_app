import 'package:crud_app/application/auth/auth_bloc.dart';
import 'package:crud_app/application/core/app_colors.dart';
import 'package:crud_app/application/core/ui_constants.dart';
import 'package:crud_app/domain/auth/status/auth_status.dart';
import 'package:crud_app/presentation/splash/splash_screen.dart';
import 'package:crud_app/presentation/tweet/widgets/new_tweet_btn.dart';
import 'package:crud_app/presentation/tweet/widgets/tweets_listview.dart';
import 'package:crud_app/presentation/widgets/confirm_dialog.dart';
import 'package:crud_app/presentation/widgets/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/tweet/tweet_bloc.dart';

class TweetScreen extends StatelessWidget {
  const TweetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // print(context.read<AuthBloc>().state.userData?.uid);
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
                ConfirmDialog(
                  context: context,
                  message: "Do you want to logout?",
                  title: "Confirm",
                  onConfirm: () {
                    context.read<AuthBloc>().add(const SignOut());
                  },
                ).show();
              },
              icon: const Icon(Icons.logout),
            ),
          ],
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kPageHPadding,
                  vertical: kPageVPadding,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const NewTweetBtn(),
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
            BlocBuilder<TweetBloc, TweetState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return Container(
                    alignment: Alignment.center,
                    color: AppColors.black.withOpacity(.3),
                    child: const CircularProgressIndicator(),
                  );
                } else {
                  return const SizedBox();
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
