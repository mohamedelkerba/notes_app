import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/default_text.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color backGroundColor;
  final double? height;
  final double? width;
  final Color? textColor;
  final Color? borderColor;
  final bool isBorder;
  final  int textSize;
  CustomButton({
    super.key,
    required this.text,
    required this.backGroundColor,
    this.height,
    this.width,
    this.textColor= Colors.white,
    this.borderColor,
     this.textSize=14,
    this.isBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height?.h,
      width: width?.w,
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius:  BorderRadius.all(Radius.circular(8.r)),
        border: isBorder ? Border.all(color: borderColor!) : null,
      ),
      child: Center(
        child: DefaultText(
          text: text,
          fontSize: textSize.sp,
          fontColor: textColor,
        ),
      ),
    );
  }
}
