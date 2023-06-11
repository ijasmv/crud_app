import 'package:crud_app/presentation/widgets/utils.dart';
import 'package:flutter/material.dart';
import '../../../application/core/app_colors.dart';

class TweetsListView extends StatelessWidget {
  const TweetsListView({super.key});
  final content =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec iaculis leo vel mauris aliquam vulputate. Donec faucibus eros sit amet egestas luctus. Vestibulum vestibulum, lorem ut varius egestas, arcu massa malesuada ante, non porttitor risus lorem vitae purus. Nam pharetra sed diam quis pretium. Donec viverra leo sem, in egestas leo blandit id. Donec id magna finibus, semper est ut, venenatis erat. Pellentesque ac mattis elit. In elementum nisi";

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, index) {
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
                content,
                style: const TextStyle(
                  color: AppColors.black,
                  fontSize: 14,
                ),
              ),
              verticalSpace(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "Posted on: 2023-04-23 23:43:21",
                    style: TextStyle(
                      color: AppColors.grey,
                      fontSize: 12,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.edit,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
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
  }
}
