import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'default_text.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onBackButtonPressed;
  final String backButtonIcon;
  Widget ? trailingWidget;
  final Color backgroundColor;
  final Color textColor;
  final Color hintColor;
  final Color buttonColor;
  final bool hasLeading;
  final bool hasTrailing;
  final Widget titleWidget;
  final String ? leadingText;

   CustomAppBar({
    super.key,
    this.onBackButtonPressed,
    required this.backButtonIcon,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
    this.hintColor = Colors.grey,
    this.buttonColor = Colors.blue,
    this.hasLeading = true,
    this.hasTrailing = true,
    this.leadingText,
    this.trailingWidget,
    required this.titleWidget,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: backgroundColor,
      elevation: 0.0,
     toolbarHeight: 80,
      shadowColor: Colors.transparent,
      title: Row(
        children: [
          if (hasLeading)
            GestureDetector(
              onTap: onBackButtonPressed,
              child: Row(
                children: [
                  SvgPicture.asset(backButtonIcon),
                  const SizedBox(width: 7),
                  DefaultText(
                    text: leadingText!,
                    fontColor: buttonColor,
                    fontSize: 17,
                  ),
                ],
              ),
            ),
          if (hasLeading) const Spacer(),
          titleWidget,
          if (hasTrailing) const Spacer(),
          if (hasTrailing)
            trailingWidget!,

        ],
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(10),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.06),
                spreadRadius: 0.5,
                blurRadius: 0,
                offset: const Offset(0, 0.5),
              ),
            ],
          ),
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 10);
}
