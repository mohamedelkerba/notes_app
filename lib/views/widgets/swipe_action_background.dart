import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SwipeActionBackground extends StatelessWidget {
  const SwipeActionBackground({
    Key? key,
    required this.alignment,
    required this.color,
    this.icon,
    this.assetPath,
  }) : super(key: key);

  final Alignment alignment;
  final Color color;
  final IconData? icon;
  final String? assetPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: alignment == Alignment.centerLeft
          ? const EdgeInsets.only(left: 16.0)
          : const EdgeInsets.only(right: 16.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: alignment == Alignment.centerLeft
            ? const BorderRadius.horizontal(left: Radius.circular(12))
            : const BorderRadius.horizontal(right: Radius.circular(12)),
      ),
      alignment: alignment,
      child: icon != null
          ? Icon(icon, color: Colors.white, size: 35)
          : SvgPicture.asset(
        assetPath!,
        color: Colors.white,
        height: 35,
        width: 35,
      ),
    );
  }
}
