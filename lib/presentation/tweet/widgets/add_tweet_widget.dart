import 'package:crud_app/application/core/ui_constants.dart';
import 'package:crud_app/presentation/widgets/custom_textfield.dart';
import 'package:crud_app/presentation/widgets/submit_btn.dart';
import 'package:crud_app/presentation/widgets/utils.dart';
import 'package:flutter/material.dart';

class AddTweetWidget extends StatelessWidget {
  AddTweetWidget({super.key});
  final TextEditingController tweetCntl = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
          SubmitBtn(
            label: "Post",
            onPressed: () {
              if (tweetCntl.text.isNotEmpty) {}
            },
          ),
        ],
      ),
    );
  }
}
