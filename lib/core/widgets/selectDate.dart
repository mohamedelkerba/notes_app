import 'package:flutter/material.dart';

void selectDate(TextEditingController dateController,BuildContext context) async {
  DateTime? picked = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(2000),
    lastDate: DateTime(2100),
  );

  if (picked != null) {
    dateController.text = picked.toString().split(" ")[0];
  }
}
