import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../style/colors/colors.dart';

BoxDecoration commonBoxDecoration({Color? color}) {
  return BoxDecoration(
    color: color ?? transactionContainer,
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.06),
        spreadRadius: 0.5,
        blurRadius: 0,
        offset: const Offset(0, 0.5),
      ),
    ],
    borderRadius: BorderRadius.all(Radius.circular(10.r)),
  );
}
