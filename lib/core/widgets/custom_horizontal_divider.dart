
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../style/colors/colors.dart';

class CustomHorizontalDivider extends StatelessWidget {
  CustomHorizontalDivider({this.thickness,this.width,this.color,this.height, this.endIndent, this.indent,super.key,});
  double? width;
  double? thickness;
  double? height;
  Color? color;
  double? endIndent;
  double? indent;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width?? 15.w,
        child: Divider(
          endIndent: endIndent??0,
          indent: indent?? 0,
          thickness:thickness?? 1,
          height:height?? 1.h,
          color: color?? ticketDividerColor,
        ));
  }
}