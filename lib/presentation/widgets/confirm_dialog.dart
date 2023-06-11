import 'package:flutter/material.dart';

class ConfirmDialog {
  final String title;
  final String message;
  final BuildContext context;
  final Function() onConfirm;

  ConfirmDialog(
      {required this.context,
      required this.message,
      required this.title,
      required this.onConfirm});

  show() {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Cancel"),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              onConfirm.call();
            },
            child: const Text("Confirm"),
          ),
        ],
      ),
    );
  }
}
