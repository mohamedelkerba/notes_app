import 'dart:math';

import 'package:flutter/material.dart';

import '../../style/colors/colors.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({super.key , required this.hintText, this.maxLines =1 });

 final String hintText;
 final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor:addNoteColor ,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
            color: addNoteColor
        ),
        fillColor: Colors.transparent,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(addNoteColor),
      ),
    );

  }
}
OutlineInputBorder buildBorder([color]) {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      )
  );
}