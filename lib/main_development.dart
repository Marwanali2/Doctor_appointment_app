import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_adv_course_2/core/DI/dependency_injection.dart';
import 'package:flutter_adv_course_2/core/Routing/app_router.dart';
import 'package:flutter_adv_course_2/doc_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  // Set the color of the status bar
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white, // Set the color here
    statusBarIconBrightness:
        Brightness.dark, // Set the brightness of the status bar icons
  ));
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
