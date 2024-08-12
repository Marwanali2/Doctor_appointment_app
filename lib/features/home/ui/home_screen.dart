import 'package:flutter/material.dart';
import 'package:flutter_adv_course_2/core/Helpers/spacing.dart';
import 'package:flutter_adv_course_2/features/home/logic/cubit/cubit/home_cubit.dart';
import 'package:flutter_adv_course_2/features/home/logic/cubit/cubit/home_state.dart';
import 'package:flutter_adv_course_2/features/home/ui/widgets/doctors_speciality_list_view.dart';
import 'package:flutter_adv_course_2/features/home/ui/widgets/specializations_and_doctors_bloc_builder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/doctors_list_view.dart';
import 'widgets/doctors_speciality_see_all.dart';
import 'widgets/home_doctor_blue_container.dart';
import 'widgets/home_top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(16, 12, 16, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              verticalSpace(16.h),
              const HomeDoctorBlueContainer(),
              verticalSpace(24.h),
              const DoctorsSpecialitySeeAll(),
              verticalSpace(18),
              const SpecializationsAndDoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }

}
