import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_adv_course_2/core/Theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocImageAndText extends StatelessWidget {
  const DocImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            right: 28,
            child: SvgPicture.asset(
                'assets/svgs/docdoc_logo_with_low_opacity.svg')),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
            ),
          ),
          child: Image.asset(
            'assets/images/onboarding_doctor.png',
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 30,
          child: Text(
            'Best Doctor\nAppointment App',
            textAlign: TextAlign.center,
            style: TextStyles.font32MainBlue700weight.copyWith(
              height: 1.6.h,
            ),
          ),
        ),
      ],
    );
  }
}
