import 'package:flutter/material.dart';
import 'package:flutter_adv_course_2/core/Theming/colors.dart';
import 'package:flutter_adv_course_2/core/Theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatefulWidget {
  final EdgeInsetsGeometry? contentPadding;
  final String hintText;
  final TextStyle? hintStyle;
  final bool isObscureText;
  final TextStyle? inputTextStyle;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final Color? backgroundColor;
  final Widget? suffixIcon;
  final bool? isPassword;
  final TextEditingController? controller;
  final Function(String?) validator;
  const AppTextFormField({
    super.key,
    this.contentPadding,
    required this.hintText,
    this.hintStyle,
    this.isObscureText = false,
    this.inputTextStyle,
    this.focusedBorder,
    this.enabledBorder,
    this.backgroundColor,
    this.suffixIcon,
    this.isPassword,
    this.controller,
    required this.validator,
  });

  @override
  // ignore: library_private_types_in_public_api
  _AppTextFormFieldState createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  bool isObscureText;
  final FocusNode _focusNode;

  _AppTextFormFieldState()
      : isObscureText = false,
        _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    isObscureText = widget.isObscureText;
    _focusNode.addListener(_onFocusChange);
  }

  void _onFocusChange() {
    setState(() {});
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: _focusNode,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: widget.contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: widget.focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide:
                  BorderSide(color: ColorsManager.mainBlue, width: 1.3.w),
            ),
        enabledBorder: widget.enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide:
                  BorderSide(color: ColorsManager.lighterGrey, width: 1.3.w),
            ),
            errorBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide:
                  BorderSide(color: Colors.red, width: 1.3.w),
            ),
            focusedErrorBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide:
                  BorderSide(color: Colors.red, width: 1.3.w),
            ),
        hintText: widget.hintText,
        hintStyle: widget.hintStyle ?? TextStyles.font14LightGrayRegular,
        suffixIcon: widget.isPassword == true
            ? GestureDetector(
                onTap: () => setState(() => isObscureText = !isObscureText),
                child: Icon(
                  isObscureText ? Icons.visibility_off : Icons.visibility,
                  color: _focusNode.hasFocus ? Colors.blue : Colors.grey,
                ),
              )
            : widget.suffixIcon,
        fillColor: widget.backgroundColor ?? ColorsManager.moreLighterGrey,
        filled: true,
      ),
      controller: widget.controller,
      obscureText: isObscureText,
      style: TextStyles.font14DarkBlueMedium,
      validator: (value) => widget.validator(value),
    );
  }
}
