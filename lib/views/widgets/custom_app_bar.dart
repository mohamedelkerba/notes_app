import 'package:flutter/material.dart';
import '../../core/widgets/default_text.dart';

class CustomAppBar extends StatelessWidget {
    const CustomAppBar({super.key, required this.titleText ,required this.icon, this.onPressed});

   final IconData icon;
   final String titleText;
   final void Function()?onPressed;

   @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Row(
        children: [
          DefaultText(
            text:titleText,
            fontSize: 28,
          ),
          const Spacer(),
          Container(
            width: 45,
            height: 45,
            decoration: const BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.all(Radius.circular(12))
            ),
            child: Center(
              child: IconButton(
                onPressed :onPressed,
                icon:Icon(icon),
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}