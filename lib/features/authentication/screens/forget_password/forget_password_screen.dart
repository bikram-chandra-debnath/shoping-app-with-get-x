import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:iconsax/iconsax.dart";
import "package:shopping_app_with_getx/common/style/padding.dart";
import "package:shopping_app_with_getx/common/widgets/buttons/app_elevated_button.dart";
import "package:shopping_app_with_getx/features/authentication/screens/forget_password/reset_password_screen.dart";
import "package:shopping_app_with_getx/utils/constants/sizes.dart";
import "package:shopping_app_with_getx/utils/constants/texts.dart";

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ------[Header]-----
              // title
              Text(
                AppTexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              SizedBox(height: AppSizes.spaceBtwItems / 2),

              // Subtile
              Text(
                AppTexts.forgetPasswordSubtitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),

              SizedBox(height: AppSizes.spaceBtwSections*2,),

              // ------[Form]-----

              Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: AppTexts.email,
                      prefixIcon: Icon(Iconsax.direct_right),
                    ),
                  ),
                  SizedBox(height: AppSizes.spaceBtwItems,),
                  
                  AppElevatedButton(onPressed: ()=> Get.to (ResetPasswordScreen()), child: Text(AppTexts.submit) )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
