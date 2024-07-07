import 'package:flutter/material.dart';
import 'package:flutter_adv_course_2/features/onboarding/widgets/doc_image_and_text.dart';
import 'package:flutter_adv_course_2/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/doc_image_description_and_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
          child: Column(
            children: [
              const DocLogoAndName(),
              SizedBox(height: 42.h),
              const DocImageAndText(),
              SizedBox(height: 18.h),
              const DocImageDescriptionAndButton(),
            ],
          ),
        ),
      ),
    ));
  }
}
