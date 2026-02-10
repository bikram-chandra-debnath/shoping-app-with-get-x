
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:shopping_app_with_getx/common/style/padding.dart';
import 'package:shopping_app_with_getx/common/widgets/buttons/app_elevated_button.dart';
import 'package:shopping_app_with_getx/data/repository/authentication_repository.dart';
import 'package:shopping_app_with_getx/features/authentication/controllers/signup/verify_email_controller.dart';
import 'package:shopping_app_with_getx/utils/constants/images.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';
import 'package:shopping_app_with_getx/utils/constants/texts.dart';
import 'package:shopping_app_with_getx/utils/helpers/device_helpers.dart';

class VerifyEmailScreen extends StatelessWidget {
   const VerifyEmailScreen({super.key, this.email});

  final String? email;
  

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerifyEmailController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: AppSizes.defaultSpace/2),
            child: IconButton(
              onPressed: AuthenticationRepository.instance.logout ,
              icon: Icon(CupertinoIcons.clear),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: AppPadding.screenPadding,
          child: Column(
            children: [
              //image
              Lottie.asset(AppImages.passwordverify,height: AppDeviceHelper.getScreenWidth(context)*0.6),
              // title
              Text(
                AppTexts.verifyEmailTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: AppSizes.spaceBtwItems),
              //email
              Text(
                email??"",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(height: AppSizes.spaceBtwItems),
              //subtitle
              Text(
                AppTexts.verifyEmailSubtitle,
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: AppSizes.spaceBtwSections),

              //done

              AppElevatedButton(onPressed:controller.checkEmailVerificationStatus , child: Text(AppTexts.appContinue)),
              // resend email
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed:controller.sendEmailVerification,
                  child: Text(AppTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

