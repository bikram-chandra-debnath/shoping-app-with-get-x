// ignore: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app_with_getx/common/style/padding.dart';
import 'package:shopping_app_with_getx/common/widgets/login_and_signup/app_form_divider.dart';
import 'package:shopping_app_with_getx/features/authentication/controllers/signup/signup_controller.dart';
import 'package:shopping_app_with_getx/features/authentication/screens/signup/widgets/sign_up_form.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';
import 'package:shopping_app_with_getx/utils/constants/texts.dart';

import '../../../../common/widgets/buttons/app_social_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Iconsax.arrow_left)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///---------[ Header Section]------
              Text(
                AppTexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: AppSizes.spaceBtwSections),

              ///--------[body section]-------
              //----------[Form Section]--------
              SignUPForm(),

              SizedBox(height: AppSizes.spaceBtwSections),

              ///-------[Divider section]-------

              AppFormDivider(title: AppTexts.orSingupWith),

              SizedBox(height: AppSizes.spaceBtwSections),

              ///--------[Footer Section]-------
              //------[social buttons]------

              AppSocialButtons()

              //
            ],
          ),
        ),
      ),
    );
  }
}

