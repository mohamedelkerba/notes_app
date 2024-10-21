import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:training/core/widgets/default_text.dart';

class CustomAppBar extends StatefulWidget {
  final String titleText;
  final String iconAsset;
  final bool isThemeToggle;
  final void Function()? onTap;

  const CustomAppBar({
    super.key,
    required this.titleText,
    required this.iconAsset,
    required this.isThemeToggle,
    this.onTap,
  });

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool isNightMode = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Row(
        children: [
          DefaultText(
            text: widget.titleText,
            fontSize: 28,
          ),
          const Spacer(),
          widget.isThemeToggle
              ? GestureDetector(
                  onTap: () {
                    widget.onTap?.call();
                    setState(() {
                      isNightMode = !isNightMode;
                    });
                  },
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: isNightMode ? Colors.white12  : Colors.black12,
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        isNightMode
                            ? 'assets/images/night_icon.svg'
                            : 'assets/images/light_icon.svg',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                )
              : IconButton(
                  icon: const Icon(Icons.check),
                  onPressed: widget.onTap,
                ),
        ],
      ),
    );
  }
}
