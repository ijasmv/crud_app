import 'package:crud_app/application/core/app_colors.dart';
import 'package:flutter/material.dart';

class SubmitBtn extends StatelessWidget {
  const SubmitBtn({super.key, required this.label, required this.onPressed, this.color});
  final String label;
  final Color? color;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: color ?? AppColors.primaryColor,
        ),
        child: Text(
          label,
          style: const TextStyle(color: AppColors.white),
        ),
      ),
    );
  }
}
