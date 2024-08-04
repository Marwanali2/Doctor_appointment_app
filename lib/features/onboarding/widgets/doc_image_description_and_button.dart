import 'package:flutter/material.dart';
import 'package:flutter_adv_course_2/core/Theming/styles.dart';
import 'package:flutter_adv_course_2/features/onboarding/widgets/get_started_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocImageDescriptionAndButton extends StatelessWidget {
  const DocImageDescriptionAndButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          Text(
            'Manage and schedule all of your medical appointments\neasily with Docdoc to get a new experience.',
            textAlign: TextAlign.center,
            style: TextStyles.font13GrayRegular,
          ),
          SizedBox(height: 30.h),
          const GetStartedButton(),
        ],
      ),
    );
  }
}
