import 'package:flutter/material.dart';
import 'package:shopping_app_with_getx/utils/helpers/helper_function.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/texts.dart';

class PrivacyPolicyCheckbox extends StatelessWidget {
  const PrivacyPolicyCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Row(
      children: [
        Checkbox(value: true, onChanged: (value) {}),

        RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.bodyMedium,
            children: [
              TextSpan(text: AppTexts.iAgree),
              TextSpan(
                text: AppTexts.privacy,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium!.copyWith(
                  color: dark? AppColors.white: AppColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark? AppColors.white: AppColors.primary,
                ),
              ),
              TextSpan(text: AppTexts.and),
              TextSpan(
                text: AppTexts.terms,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium!.copyWith(
                  color:dark? AppColors.white: AppColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark? AppColors.white: AppColors.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}