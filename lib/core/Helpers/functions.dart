import 'package:flutter/material.dart';
import 'package:flutter_adv_course_2/core/Helpers/extensions.dart';
import 'package:flutter_adv_course_2/core/Theming/styles.dart';
import 'package:flutter_adv_course_2/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void validateTheLogin(BuildContext context) {
  final loginCubit = context.read<LoginCubit>();
  if (loginCubit.formKey.currentState!.validate()) {
    loginCubit.emitLoginState();
  }
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
              child: Text(
                'Got it',
                style: TextStyles.font14BlueSemiBold,
              ))
        ],
      );
    },
  );
}
