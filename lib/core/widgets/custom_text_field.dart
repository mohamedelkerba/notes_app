import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../style/colors/colors.dart';

class CustomTextFormField extends StatefulWidget {
   const CustomTextFormField({
    this.controller,
    super.key,
    this.validator,
    this.keyboardType,
    this.onChange,
    this.hint,
    this.isEnabled,
    this.prefix,
    this.suffix,
    this.onTap,
    this.readOnly = false,
    this.onFieldSubmitted,
    this.width = 394,
    this.focusNode,
    required this.autoFocus,
    this.contentPaddingHorizontal = 24,
    this.contentPaddingVertical = 12,
    this.radius = 25,
    this.height,
    this.fillColor = Colors.white,
    this.enabledBorderColor = brushBorder,
    this.focusBorderColor = selectedBorder,
    this.errorBorderColor = Colors.red,
    this.minLines = 1,
    this.isDense,
    this.maxLines,
    this.isBorder = true,
    this.isCollapsed,
    this.hoverColor = Colors.transparent,
    this.hintFontSize = 16,
    this.sameBorderColor = false,
    this.inputFormatters,
    this.maxLength,
    this.errorState = false,
    this.autofillHints,
    this.textStyle,
    this.hintTextStyle,
    this.initialValue,
  });

  final String? hint;
  final String? initialValue;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final Function(String)? onChange;
  final Widget? prefix;
  final Widget? suffix;
  final bool? isEnabled;
  final List<TextInputFormatter>? inputFormatters;
  final double width;
  final double? height;
  final dynamic onTap;
  final bool readOnly;
  final Function(String)? onFieldSubmitted;
  final FocusNode? focusNode;
  final bool? autoFocus;
  final double contentPaddingHorizontal;
  final double contentPaddingVertical;
  final double radius;
  final Color? fillColor;
  final Color enabledBorderColor;
  final Color focusBorderColor;
  final Color errorBorderColor;
  final Color hoverColor;
  final int minLines;
  final bool? isDense;
  final int? maxLines;
  final bool isBorder;
  final bool? isCollapsed;
  final double? hintFontSize;
  final bool sameBorderColor;
  final int? maxLength;
  final bool errorState;
  final Iterable<String>? autofillHints;
  final TextStyle? textStyle;
  final TextStyle? hintTextStyle;
  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController(text: widget.initialValue);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: TextFormField(
        controller: _controller,
        maxLength: widget.maxLength,
        minLines: widget.minLines,
        maxLines: widget.maxLines,
        autofocus: widget.autoFocus!,
        focusNode: widget.focusNode,
        onChanged: widget.onChange,
        validator: widget.validator,
        keyboardType: widget.keyboardType,
        autofillHints: widget.autofillHints,
        buildCounter: (
            BuildContext context, {
              required int currentLength,
              required bool isFocused,
              required int? maxLength,
            }) {
          return null;
        },
        onFieldSubmitted: widget.onFieldSubmitted,
        onTap: widget.onTap,
        enabled: widget.isEnabled,
        inputFormatters: widget.inputFormatters,
        style: _controller.text == widget.initialValue && widget.initialValue != null
            ? widget.textStyle?.copyWith(color: Colors.grey)
            : widget.textStyle ?? Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.black),
        readOnly: widget.readOnly,
        decoration: InputDecoration(
            fillColor: widget.fillColor ?? Colors.white,
            isCollapsed: widget.isCollapsed ?? false,
            hoverColor: widget.hoverColor,
            hintText: widget.hint,
            hintStyle: widget.hintTextStyle ?? TextStyle(fontSize: widget.hintFontSize!),
            contentPadding: EdgeInsets.symmetric(
                horizontal: widget.contentPaddingHorizontal,
                vertical: widget.contentPaddingVertical),
            helperStyle: const TextStyle(
              height: .2,
            ),
            errorStyle: Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.red, height: 1),
            prefixIcon: widget.prefix,
            suffixIcon: widget.suffix,
            isDense: widget.isDense,
            filled: true,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            border: const OutlineInputBorder(),
            enabledBorder: widget.isBorder ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.radius),
                borderSide: const BorderSide(color:Colors.transparent)
            ) : InputBorder.none,
            focusedBorder: widget.isBorder ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.radius),
                borderSide: const BorderSide(color:Colors.transparent)) : InputBorder.none,
            disabledBorder: widget.isBorder ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.radius),
                borderSide: BorderSide(color: widget.errorState  ? Colors.red : widget.enabledBorderColor)) : InputBorder.none,
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.radius),
                borderSide: BorderSide(color: widget.errorState  ? Colors.red : widget.errorBorderColor)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.radius),
                borderSide: BorderSide(color: widget.errorBorderColor))
        ),
      ),
    );
  }
}
