import 'package:crud_app/application/auth/auth_bloc.dart';
import 'package:crud_app/application/tweet/tweet_bloc.dart';
import 'package:crud_app/domain/tweet/status/tweet_status.dart';
import 'package:crud_app/presentation/widgets/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../application/core/app_colors.dart';
import '../../widgets/confirm_dialog.dart';
import 'add_tweet_sheet.dart';

class TweetsListView extends StatelessWidget {
  const TweetsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<TweetBloc, TweetState>(
      listener: (context, state) {
        if (state.status == const TweetStatus.added()) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text("Tweet Posted!")));
        } else if (state.status == const TweetStatus.edited()) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text("Tweet Edited!")));
        } else if (state.status == const TweetStatus.deleted()) {
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text("Tweet Deleted!")));
        } else if (state.status == const TweetStatus.failed()) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errorMessage)));
        }
      },
      child: BlocBuilder<TweetBloc, TweetState>(
        builder: (ctx, state) {
          return ListView.builder(
            itemCount: state.tweets.length,
            shrinkWrap: true,
            primary: false,
            itemBuilder: (context, index) {
              final userData = context.read<AuthBloc>().state.userData;
              return Container(
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 10),
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: AppColors.borderGrey,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userData!.uid == state.tweets[index].userId
                          ? "You tweeted"
                          : "${state.tweets[index].userName} tweeted",
                      style: const TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                    verticalSpace(10),
                    Text(
                      state.tweets[index].tweet,
                      style: const TextStyle(
                        color: AppColors.black,
                        fontSize: 14,
                      ),
                    ),
                    verticalSpace(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Posted on: ${state.tweets[index].postedDate}",
                          style: const TextStyle(
                            color: AppColors.grey,
                            fontSize: 12,
                          ),
                        ),
                        const Spacer(),
                        if (userData.uid == state.tweets[index].userId)
                          IconButton(
                            onPressed: () {
                              showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                builder: (context) {
                                  return AddTweetSheet(
                                    prevData: state.tweets[index],
                                  );
                                },
                              );
                            },
                            icon: const Icon(
                              Icons.edit,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        if (userData.uid == state.tweets[index].userId)
                          IconButton(
                            onPressed: () {
                              ConfirmDialog(
                                context: context,
                                message: "Do you want to delete?",
                                title: "Confirm",
                                onConfirm: () {
                                  context
                                      .read<TweetBloc>()
                                      .add(DeleteTweet(id: state.tweets[index].id));
                                },
                              ).show();
                            },
                            icon: Icon(
                              Icons.delete,
                              color: Colors.red[400],
                            ),
                          )
                      ],
                    )
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
