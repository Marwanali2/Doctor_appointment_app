import 'package:flutter/material.dart';
import 'package:flutter_adv_course_2/core/Theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24Black700weight = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
  static TextStyle font32MainBlue700weight = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w700,
    color: ColorsManager.mainBlue,
  );
  static TextStyle font13Grey400weight = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.grayColor,
  );
  static TextStyle font16White600weight = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
}
