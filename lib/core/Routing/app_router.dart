import 'package:flutter/material.dart';
import 'package:flutter_adv_course_2/core/Routing/routes.dart';
import 'package:flutter_adv_course_2/features/login/ui/login_screen.dart';
import 'package:flutter_adv_course_2/features/onboarding/onboarding_screen.dart';

class AppRouter{
  Route generateRoute(RouteSettings settings){
    // this is the arguments that we can pass to the screen like  this Navigator.pushNamed(context, Routes.loginScreen, arguments: 'Hello');
    final arguments=settings.arguments;
    switch(settings.name){
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.loginScreen:
      return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}