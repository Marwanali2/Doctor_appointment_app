import 'package:flutter/material.dart';
import 'package:flutter_adv_course_2/core/Routing/routes.dart';
import 'package:flutter_adv_course_2/core/Theming/colors.dart';
import 'package:flutter_adv_course_2/core/Theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, Routes.loginScreen);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorsManager.mainBlue,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: Size(double.infinity, 52.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
      ),
      child: Text(
        'Get Started',
        style: TextStyles.font16White600weight,
      ),
    );
  }
}
