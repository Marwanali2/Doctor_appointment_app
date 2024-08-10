import 'package:flutter/material.dart';
import 'package:flutter_adv_course_2/core/Theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeDoctorBlueContainer extends StatelessWidget {
  const HomeDoctorBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 165.h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image:
                    AssetImage('assets/images/home_doctor_blue_container.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18.w, top: 12.h, bottom: 15.w),
                  child: Text(
                    'Book and\nschedule with\nnearest doctor',
                    style: TextStyles.font18WhiteMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 18.w),
                  child: Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        //fixedSize: Size(109.w, 36.h),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(48.r),
                        ),
                      ),
                      child: Text(
                        'Find Nearby',
                        style: TextStyles.font12BlueRegular,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 0.w,
            top: 5,
            child: Image.asset(
              'assets/images/blue-container-doctor.png',
              height: 200.h,
            ),
          ),
        ],
      ),
    );
  }
}
