import 'package:flutter/material.dart';
import 'package:shopping_app_with_getx/common/widgets/login_and_signup/app_form_divider.dart';
import 'package:shopping_app_with_getx/features/authentication/screens/login/widgets/app_login_form.dart';
import 'package:shopping_app_with_getx/features/authentication/screens/login/widgets/app_login_header.dart';
import 'package:shopping_app_with_getx/common/widgets/buttons/app_social_button.dart';
import 'package:shopping_app_with_getx/utils/helpers/helper_function.dart';

import '../../../../common/style/padding.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/texts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppHelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPadding.screenPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ///---------[ Header Section]------

              // title and sub title
              AppLoginHeader(),

              SizedBox(height: AppSizes.spaceBtwSections),

              ///--------[body section]-------

              // email, password, login button, forget password, sign up button
              AppLoginForm(),

              SizedBox(height: AppSizes.spaceBtwSections),

              /// Divider
              AppFormDivider( title: AppTexts.orSingInWith,),

              SizedBox(height: AppSizes.spaceBtwSections),

              ///-------[footer section]------

              //social buttons
              AppSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}



