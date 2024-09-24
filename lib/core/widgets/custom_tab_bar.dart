import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../style/colors/colors.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
    required this.tabController,
    required this.tabList,
  });

  final TabController? tabController;
  final List<Widget> tabList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Container(
        height: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(9),
          color: tabBarBackground.withOpacity(0.12),
          boxShadow: const [
            BoxShadow(color: buttomshadow, blurRadius: 8, offset: Offset(0, 3)),
          ],
        ),
        child: TabBar(
        controller: tabController,
        indicatorColor: Colors.transparent,
        labelColor: textColor,
        isScrollable: false,
        indicatorSize: TabBarIndicatorSize.label,
        labelPadding:   EdgeInsetsDirectional.only(start: 0.5.w),
        indicatorPadding:  EdgeInsets.only(top: 2.h, bottom: 2.h, left: 2.w, right: 4.w),
        dividerHeight: 0,
        indicator: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          boxShadow: [BoxShadow(
        color: Colors.black.withOpacity(0.16),
          spreadRadius: 0.5,
          blurRadius: 8,
          offset: const Offset(0, 3),
        ),],
          borderRadius: BorderRadius.circular(7.r),
        ),
        tabs: tabList,
      ),
      ),
    );
  }
}
