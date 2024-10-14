import 'package:flutter/material.dart';
import '../../core/widgets/default_text.dart';
import '../../style/colors/colors.dart';

class CustomButton extends StatelessWidget {
    CustomButton({super.key , this.onTap});
  void Function()?onTap;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: addNoteColor),
        child: Center(
            child: DefaultText(
              text: 'Add',
              fontSize: 18,
              fontColor: Colors.white,
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }
}
