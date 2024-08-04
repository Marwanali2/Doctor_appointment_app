import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_adv_course_2/core/Helpers/spacing.dart';
import 'package:flutter_adv_course_2/core/Theming/colors.dart';
import 'package:flutter_adv_course_2/core/Theming/styles.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacter;
  final bool hasNumber;
  final bool hasMinLength;
  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacter,
    required this.hasNumber,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidateRow('At least 1 lowercase letter', hasLowerCase),
        verticalSpace(2),
        buildValidateRow('At least 1 uppercase letter', hasUpperCase),
        verticalSpace(2),
        buildValidateRow('At least 1 special character', hasSpecialCharacter),
        verticalSpace(2),
        buildValidateRow('At least 1 number', hasNumber),
        verticalSpace(2),
        buildValidateRow('At least 8 characters', hasMinLength),
      ],
    );
  }

  Widget buildValidateRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: ColorsManager.grayColor,
        ),
        horizontalSpace(6),
        Text(text,
            style: TextStyles.font13DarkBlueRegular.copyWith(
              decoration: hasValidated ? TextDecoration.lineThrough : null,
              decorationColor: Colors.green,
              decorationThickness: 2,
              color: hasValidated
                  ? ColorsManager.grayColor
                  : ColorsManager.darkBlue,
            )),
      ],
    );
  }
}
