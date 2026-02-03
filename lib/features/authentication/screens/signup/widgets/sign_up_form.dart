import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app_with_getx/features/authentication/controllers/signup/signup_controller.dart';
import 'package:shopping_app_with_getx/features/authentication/screens/signup/widgets/privacy_policy_and_checkbox.dart';
import 'package:shopping_app_with_getx/utils/validators/validation.dart';

import '../../../../../common/widgets/buttons/app_elevated_button.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';

class SignUPForm extends StatelessWidget {
  const SignUPForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = SignupController.instance;
    return Form(
      key: controller.signUpFormKey,
      child: Column(
        children: [
          // first and last name
          Row(
            children: [
              // first name
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator:
                      (value) =>
                          AppValidator.validateEmptyText("First Name", value),
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
                  controller: controller.lastName,
                  validator:
                      (value) =>
                          AppValidator.validateEmptyText("Last Name", value),
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
            controller: controller.email,
            validator: (value) => AppValidator.validateEmail(value),
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: AppTexts.email,
            ),
          ),
          SizedBox(height: AppSizes.spaceBtwInputFields),

          // phone number
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => AppValidator.validatePhoneNumber(value),
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.call),
              labelText: AppTexts.phoneNumber,
            ),
          ),
          SizedBox(height: AppSizes.spaceBtwInputFields),

          // password
          Obx(()=> TextFormField(
              controller: controller.password,
              obscureText: controller.ispasswordInvisiable.value,
              validator: (value) => AppValidator.validatePassword(value),
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: AppTexts.password,
                suffixIcon: IconButton(
                  onPressed:
                      () =>
                          controller.ispasswordInvisiable.value =
                              !controller.ispasswordInvisiable.value,
                  icon: Icon(
                    controller.ispasswordInvisiable.value
                        ? Iconsax.eye
                        : Iconsax.eye_slash,
                  ),
                ),
              ),
            ),
          ),

          // privacy policy and checkbox
          PrivacyPolicyCheckbox(),

          SizedBox(height: AppSizes.spaceBtwItems),

          // Create Account Button
          AppElevatedButton(
            onPressed: controller.registerUser,
            child: Text(AppTexts.createAccount),
          ),
        ],
      ),
    );
  }
}
