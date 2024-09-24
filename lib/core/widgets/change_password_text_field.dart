import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../style/colors/colors.dart';
import 'default_text.dart';

class ChangePasswordTextField extends StatefulWidget {
  ChangePasswordTextField({this.hintText, this.text, this.height,this.width,this.controller, super.key,});

  String? hintText;
  String? text;
  double? height;
  double? width;
  TextEditingController? controller;

  @override
  State<ChangePasswordTextField> createState() => _ChangePasswordTextFieldState();
}

class _ChangePasswordTextFieldState extends State<ChangePasswordTextField> {
  bool isPasswordObscure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: widget.height,
        ),
        TextFormField(
          controller: widget.controller,
          keyboardType: TextInputType.visiblePassword,

          obscureText: isPasswordObscure,
          decoration: InputDecoration(
            border: UnderlineInputBorder(
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(6.w), right: Radius.circular(6.w)),
              borderSide: const BorderSide(color:fieldColor),
            ),
            enabledBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(6.w), right: Radius.circular(6.w)),
              borderSide: const BorderSide(color:fieldColor,),
            ),
            focusedBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(6.w), right: Radius.circular(6.w)),
              borderSide:const  BorderSide(color:fieldColor),
            ),
            hintText: '*******',
            hintStyle: const TextStyle(color: hintTColor),
            prefixIcon: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 16.w,
                ),
                DefaultText(
                  text: widget.text,
                  fontSize: 17.sp,
                  fontColor: Colors.black,
                ),
                SizedBox(
                  width:widget.width?? 48.w,
                ),
              ],
            ),
            suffix: Padding(
              padding:EdgeInsetsDirectional.only (end: 18.0.w),
              child:GestureDetector(
                onTap: (){
                  setState(() {
                    isPasswordObscure = !isPasswordObscure;
                  });
                },
                  child: Icon(Icons.highlight_remove_rounded,size:  20.r,)),
            ),
          ),
        ),
      ],
    );
  }
}
