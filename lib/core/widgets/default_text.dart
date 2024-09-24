import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../style/colors/colors.dart';

class DefaultText extends StatelessWidget {
  DefaultText(
      {super.key,
        this.text,
        this.textStyle,
        this.fontSize ,
        this.fontColor,
        this.fontWeight,
        this.maxLines,
        this.textHeight,
        this.fontFamily,
        this.wordSpacing,
        this.textDirection,
        this.textAlign,
        this.overflow,
        this.decoration = TextDecoration.none
      });
  String? text;
  FontWeight? fontWeight;
  double? fontSize = 14.sp;
  Color? fontColor = brush;
  dynamic textStyle;
  int? maxLines;
  double? textHeight;
  String? fontFamily;
  double? wordSpacing;
  TextAlign ? textAlign;
      TextDirection? textDirection;
  TextOverflow ?overflow;
  TextDecoration? decoration;
  @override
  Widget build(BuildContext context) {
    return Text(
      textDirection:textDirection,
      '$text',
      overflow: overflow,
      maxLines: maxLines,
      softWrap: true,
      textAlign: textAlign,
      style: textStyle ??
          TextStyle(
            fontSize: fontSize ?? 14.sp,
            color: fontColor,
            fontWeight: fontWeight,
            height: textHeight,
            decoration:decoration ,
            fontFamily: fontFamily ?? 'Dexef',
              wordSpacing: wordSpacing,
          ),
    );
  }
}

