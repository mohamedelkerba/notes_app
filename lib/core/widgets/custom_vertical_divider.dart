import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../style/colors/colors.dart';

class CustomVerticalDivider extends StatelessWidget {
   CustomVerticalDivider({this.height,this.color,this.width,this.thickness,super.key,});
  double? height;
  double? thickness;
  double? width;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height:height?? 15.h,
        child: VerticalDivider(
          thickness:thickness?? 1,
          width: width?? 0.5.w,
          color: color?? hint,
        ));
  }
}