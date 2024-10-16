
import 'package:flutter/material.dart';

import 'default_text.dart';

class DeleteConfirmationDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: DefaultText(
        text: 'Delete Note',
        fontColor: Colors.white,
        fontSize: 18,
      ),
      content: DefaultText(
        text: 'Are you sure you want to delete this note?',
        fontSize: 14,
        fontColor: Colors.white,
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(false);
          },
          child: DefaultText(
            text: 'Cancel',
            fontColor: Colors.white,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(true);
          },
          child: DefaultText(
            text: 'Delete',
            fontColor: Colors.red,
          ),
        ),
      ],
    );
  }
}