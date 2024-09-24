import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget {
  final double width;
  final double height;
  final Widget child;
   Color? backGroundColor;

  CircleContainer({
    super.key,
    this.backGroundColor,
    this.width = 36.0,
    this.height = 36.0,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backGroundColor,
        shape: BoxShape.circle,
      ),
      child: Center(child: child),
    );
  }
}
