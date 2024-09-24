import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../style/colors/colors.dart';

class CustomStack extends StatelessWidget {
  final double picRadius;
  final double whiteRadius;
  final double greenRadius;
  final double bottomPositionWhite;
  final double rightPositionWhite;
  final double bottomPositionGreen;
  final double rightPositionGreen;


  const CustomStack({
    super.key,
    required this.picRadius,
    required this.whiteRadius,
    required this.greenRadius,
     this.bottomPositionWhite =2.5,
     this.rightPositionWhite=2.5,
     this.bottomPositionGreen=2.5,
     this.rightPositionGreen=2.5,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        CircleAvatar(
          radius: picRadius,
          backgroundColor:userContainer,
          child: SvgPicture.asset(
            'assets/images/group_icon.svg',
            semanticsLabel: 'Group Icon',
          ),
        ),
        Positioned(
          bottom:bottomPositionWhite,
          right:rightPositionWhite,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: whiteRadius,
          ),
        ),
        Positioned(
          bottom:bottomPositionGreen,
          right: rightPositionGreen,
          child: CircleAvatar(
            backgroundColor: Colors.green,
            radius: greenRadius,
          ),
        ),
      ],
    );
  }
}
