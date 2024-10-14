import 'package:flutter/material.dart';
import '../../core/style/colors/colors.dart';
import '../../core/widgets/default_text.dart';

class CustomButton extends StatelessWidget {
    CustomButton({super.key , this.onTap,  this.isLoading = false });
  void Function()?onTap;
  final bool isLoading ;
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
            child:  isLoading  ? const CircularProgressIndicator() : DefaultText(
              text:'Add',
              fontSize: 18,
              fontColor: Colors.white,
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }
}
