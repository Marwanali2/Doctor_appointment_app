import 'package:flutter/material.dart';
import 'package:flutter_adv_course_2/core/Helpers/spacing.dart';
import 'package:flutter_adv_course_2/features/home/logic/cubit/cubit/home_cubit.dart';
import 'package:flutter_adv_course_2/features/home/logic/cubit/cubit/home_state.dart';
import 'package:flutter_adv_course_2/features/home/ui/widgets/doctors_list_view.dart';
import 'package:flutter_adv_course_2/features/home/ui/widgets/doctors_speciality_list_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecializationsAndDoctorsBlocBuilder extends StatelessWidget {
  const SpecializationsAndDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationsLoading ||
          current is SpecializationsSuccess ||
          current is SpecializationsError,
      builder: (context, state) {
        return state.maybeWhen(
          specializationsLoading: () => SizedBox(
            height: 100.h,
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
          specializationsSuccess: (specializationsResponseModel) {
            var specializationsList =
                specializationsResponseModel.specializationDataList;

            return Expanded(
              child: Column(
                children: [
                  DoctorsSpecialityListView(
                    specializationDataList: specializationsList ?? [],
                  ),
                  verticalSpace(8),
                  DoctorsListView(
                    doctorsList: specializationsList?[0]?.doctorsList,
                  ),
                ],
              ),
            );
          },
          specializationsError: (message) => Center(
            child: Text(message.toString()),
          ),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
