import 'package:flutter/material.dart';
import 'package:flutter_adv_course_2/core/Helpers/extensions.dart';
import 'package:flutter_adv_course_2/core/Routing/routes.dart';
import 'package:flutter_adv_course_2/core/Theming/colors.dart';
import 'package:flutter_adv_course_2/core/Theming/styles.dart';
import 'package:flutter_adv_course_2/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter_adv_course_2/features/login/logic/cubit/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Sucess || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: ColorsManager.mainBlue,
                  ),
                );
              },
            );
          },
          sucess: (loginResponse) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
          error: (error) {
            setupMethodState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupMethodState(BuildContext context, String error) {
        context.pop();
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          icon: const Icon(
            Icons.error,
            color: Colors.red,
            size: 32,
          ),
          content: Text(
            error,
            style: TextStyles.font15DarkBlueMedium,
          ),
          actions: [
            TextButton(
                onPressed: () {
                  context.pop();
                },
                child: Text('Got it',style: TextStyles.font14BlueSemiBold,))
          ],
        );
      },
    );
            
  }
}
