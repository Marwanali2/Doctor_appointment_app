import 'package:flutter/material.dart';
import 'package:flutter_adv_course_2/core/Helpers/functions.dart';
import 'package:flutter_adv_course_2/core/Helpers/spacing.dart';
import 'package:flutter_adv_course_2/core/Theming/styles.dart';
import 'package:flutter_adv_course_2/core/Widgets/app_text_button.dart';
import 'package:flutter_adv_course_2/features/login/ui/login_bloc_listener.dart';
import 'package:flutter_adv_course_2/features/login/ui/widgets/already_have_account_text.dart';
import 'package:flutter_adv_course_2/features/login/ui/widgets/email_and_password.dart';
import 'package:flutter_adv_course_2/features/login/ui/widgets/terms_and_conditions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    const EmailAndPassword(),
                    verticalSpace(24),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        'Forgot Password?',
                        style: TextStyles.font13BlueRegular,
                      ),
                    ),
                    verticalSpace(40),
                    AppTextButton(
                      buttonText: 'Login',
                      textStyle: TextStyles.font16WhiteSemiBold,
                      onPressed: () {
                        validateTheLogin(context);
                      },
                    ),
                    verticalSpace(16),
                    const TermsAndConditionsText(),
                    verticalSpace(60),
                    const AlreadyHaveAccountText(),
                    const LoginBlocListener(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }


}
