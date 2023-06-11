import 'package:crud_app/application/core/app_colors.dart';
import 'package:crud_app/presentation/tweet/widgets/add_tweet_sheet.dart';
import 'package:flutter/material.dart';

class NewTweetBtn extends StatelessWidget {
  const NewTweetBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AppColors.transparent,
      highlightColor: AppColors.transparent,
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (context) {
            return AddTweetSheet();
          },
        );
      },
      child: Container(
        height: 100,
        width: double.infinity,
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
        child: const Text(
          "Add new tweet..",
          style: TextStyle(
            color: AppColors.grey,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
