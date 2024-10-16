import 'package:flutter/material.dart';

import '../style/colors/colors.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({super.key, required this.hintText,this.maxLines =1,this.onSaved, required this.controller});

 final String hintText;
 final int maxLines;
 final void Function(String?)?onSaved;
 TextEditingController controller ;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor:addNoteColor ,
      maxLines: maxLines,
      onSaved: onSaved,
      validator: (value){
        if (value?.isEmpty ?? true ){
          return 'Field is required';
        }else {
          return null;
        }
      } ,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
            color: addNoteColor
        ),
        fillColor: Colors.transparent,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        errorBorder: buildBorder(Colors.red),
        focusedBorder: buildBorder(addNoteColor),
        errorStyle: const TextStyle(
          color: Colors.red, // Color of error text
        ),
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