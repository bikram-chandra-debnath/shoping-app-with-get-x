import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app_with_getx/navigation_menu.dart';
import 'package:shopping_app_with_getx/utils/constants/colors.dart';

import '../../../../../common/widgets/buttons/app_elevated_button.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';
import '../../forget_password/forget_password_screen.dart';
import '../../signup/sign_up_screen.dart';

class AppLoginForm extends StatelessWidget {
  const AppLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // email
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.direct_right),
            labelText: AppTexts.email,
          ),
        ),

        SizedBox(height: AppSizes.spaceBtwInputFields),

        // password
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.password_check),
            labelText: AppTexts.password,
            suffixIcon: Icon(Iconsax.eye_slash),
          ),
        ),

        SizedBox(height: AppSizes.spaceBtwInputFields / 2),

        // remember me and  forget password
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // remember me
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                Text(AppTexts.rememberMe),
              ],
            ),
            // forget password
            TextButton(
              onPressed: () => Get.to(ForgetPasswordScreen()),
              child: Text(AppTexts.forgetPassword),
            ),
          ],
        ),

        // login button
        AppElevatedButton(
          onPressed: () => Get.offAll(() => NavigationMenu()),
          child: Text(AppTexts.signIn),
        ),

        SizedBox(height: AppSizes.spaceBtwItems / 2),

        // sign up button
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(foregroundColor: AppColors.primary),
            onPressed: () => Get.to(SignUpScreen()),
            child: Text(AppTexts.createAccount),
          ),
        ),
      ],
    );
  }
}
