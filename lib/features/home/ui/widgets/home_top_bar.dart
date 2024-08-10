import 'package:flutter/material.dart';
import 'package:flutter_adv_course_2/core/Helpers/spacing.dart';
import 'package:flutter_adv_course_2/core/Theming/colors.dart';
import 'package:flutter_adv_course_2/core/Theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hi, Omar!', style: TextStyles.font18SemiDarkBold),
            verticalSpace(2),
            Text('How Are you Today?', style: TextStyles.font11SemiGreyRegular)
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 22.r,
          backgroundColor: ColorsManager.semiGrey2,
          child:
              Center(child: SvgPicture.asset('assets/svgs/notifications.svg')),
        )
      ],
    );
  }
}
