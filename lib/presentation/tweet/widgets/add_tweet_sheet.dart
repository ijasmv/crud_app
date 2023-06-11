import 'package:crud_app/application/auth/auth_bloc.dart';
import 'package:crud_app/application/core/ui_constants.dart';
import 'package:crud_app/application/tweet/tweet_bloc.dart';
import 'package:crud_app/domain/tweet/model/tweet_data.dart';
import 'package:crud_app/presentation/widgets/custom_textfield.dart';
import 'package:crud_app/presentation/widgets/submit_btn.dart';
import 'package:crud_app/presentation/widgets/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddTweetSheet extends StatelessWidget {
  AddTweetSheet({super.key, this.prevData});
  final TweetData? prevData;
  final TextEditingController tweetCntl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    if (prevData != null) {
      tweetCntl.text = prevData!.tweet;
    }
    return Container(
      margin: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: kPageHPadding,
        vertical: kPageVPadding,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomTextField(
            maxLines: 8,
            maxLength: 280,
            hint: "Type in your tweet..",
            controller: tweetCntl,
          ),
          verticalSpace(10),
          BlocBuilder<TweetBloc, TweetState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const CircularProgressIndicator();
              } else {
                return SubmitBtn(
                  label: "Post",
                  onPressed: () {
                    if (tweetCntl.text.isNotEmpty) {
                      if (prevData != null) {
                        //Edit

                        context.read<TweetBloc>().add(EditTweet(
                              data: TweetData(
                                id: prevData!.id,
                                postedDate: DateTime.now().toString().split(".").first,
                                tweet: tweetCntl.text,
                                userId: prevData!.id,
                              ),
                            ));
                      } else {
                        // Add New
                        final userData = context.read<AuthBloc>().state.userData;
                        context.read<TweetBloc>().add(AddTweet(
                              data: TweetData(
                                postedDate: DateTime.now().toString().split(".").first,
                                tweet: tweetCntl.text,
                                userId: userData!.uid,
                                userName: userData.displayName ?? "Anonymous",
                              ),
                            ));
                      }
                    }
                  },
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
