import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../style/colors/colors.dart';
import 'default_text.dart';

class TabWidget extends StatelessWidget {
  final String enLabel;
  final String arLabel;
  final bool rightDivider;
  const TabWidget({super.key,
    required this.enLabel,
    required this.arLabel,
    required this.rightDivider,
  });
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(vertical: 4.h),
      child: Container(
        height: 30.h,
        decoration: (rightDivider) ?  BoxDecoration(
          border: BorderDirectional(
            end: BorderSide(
              color: tabDivider.withOpacity(0.3),
              width: 1.w,
            ),
          ),
        ) : null,
        child: Center(
          child: DefaultText(
            text:enLabel ,
            fontSize: 14.sp,
            fontColor: Colors.black,
          ),
        ),
      ),
    );
  }
}