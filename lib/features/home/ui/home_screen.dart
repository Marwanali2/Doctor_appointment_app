import 'package:flutter/material.dart';
import 'package:flutter_adv_course_2/core/Helpers/spacing.dart';

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
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              verticalSpace(16),
              const HomeDoctorBlueContainer(),

            ],
          ),
        ),
      ),
    );
  }
}
