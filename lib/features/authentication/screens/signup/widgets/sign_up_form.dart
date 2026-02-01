import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app_with_getx/features/authentication/screens/signup/verify_email.dart';
import 'package:shopping_app_with_getx/features/authentication/screens/signup/widgets/privacy_policy_and_checkbox.dart';

import '../../../../../common/widgets/buttons/app_elevated_button.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';

class SignUPForm extends StatelessWidget {
  const SignUPForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [


        // first and last name
        Row(
          children: [
            // first name
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.user),
                  labelText: AppTexts.firstName,
                ),
              ),
            ),
            SizedBox(width: AppSizes.spaceBtwInputFields),

            // last name
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.user),
                  labelText: AppTexts.lastName,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: AppSizes.spaceBtwInputFields),

        // Email
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.direct_right),
            labelText: AppTexts.email,
          ),
        ),
        SizedBox(height: AppSizes.spaceBtwInputFields),

        // phone number
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.call),
            labelText: AppTexts.phoneNumber,
          ),
        ),
        SizedBox(height: AppSizes.spaceBtwInputFields),

        // password
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.password_check),
            labelText: AppTexts.password,
            suffixIcon: Icon(Iconsax.eye),
          ),
        ),

        // privacy policy and checkbox
        PrivacyPolicyCheckbox(),

        SizedBox(height: AppSizes.spaceBtwItems),

        // Create Account Button

        AppElevatedButton(onPressed: ()=> Get.to(VerifyEmailScreen()), child: Text(AppTexts.createAccount)),
      ],
    );
  }
}


