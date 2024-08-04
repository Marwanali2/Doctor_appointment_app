import 'package:flutter/material.dart';
import 'package:flutter_adv_course_2/core/Helpers/app_regex.dart';
import 'package:flutter_adv_course_2/core/Helpers/spacing.dart';
import 'package:flutter_adv_course_2/core/Widgets/app_text_form_field.dart';
import 'package:flutter_adv_course_2/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter_adv_course_2/features/login/ui/widgets/password_validations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  var isObscureText = true;
  late TextEditingController passwordController;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacter = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  @override
  void initState() {
    passwordController = context.read<LoginCubit>().passwordController;
    setupPasswordcontrollerListener();
    super.initState();
  }

  void setupPasswordcontrollerListener() {
    passwordController.addListener(() {
      final password = passwordController.text;
      hasLowerCase = AppRegex.hasLowerCase(password);
      hasUpperCase = AppRegex.hasUpperCase(password);
      hasSpecialCharacter = AppRegex.hasSpecialCharacter(password);
      hasNumber = AppRegex.hasNumber(password);
      hasMinLength = AppRegex.hasMinLength(password);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<LoginCubit>().formKey,
        child: Column(
          children: [
            AppTextFormField(
              hintText: 'Email',
              controller: context.read<LoginCubit>().emailController,
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(value)) {
                  return 'Please enter a valid email';
                }
              },
            ),
            verticalSpace(18),
            AppTextFormField(
              hintText: 'Password',
              controller: context.read<LoginCubit>().passwordController,
              isObscureText: isObscureText,
              isPassword: true,
              suffixIcon: GestureDetector(
                onTap: () => setState(() => isObscureText = !isObscureText),
                child: Icon(
                  isObscureText ? Icons.visibility_off : Icons.visibility,
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid password';
                }
              },
            ),
            verticalSpace(24),
            PasswordValidations(
              hasLowerCase: hasLowerCase,
              hasUpperCase: hasUpperCase,
              hasSpecialCharacter: hasSpecialCharacter,
              hasNumber: hasNumber,
              hasMinLength: hasMinLength,
            ),
          ],
        ));
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
