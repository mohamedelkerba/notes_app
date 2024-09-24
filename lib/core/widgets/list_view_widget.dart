import 'package:flutter/material.dart';

MediaQuery listViewWidget(
    {required BuildContext context, required Widget child}) {
  return MediaQuery.removePadding(
    context: context,
    removeTop: true,
    child: child,
  );
}