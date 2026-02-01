import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:shopping_app_with_getx/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:shopping_app_with_getx/utils/constants/texts.dart';
import 'package:shopping_app_with_getx/utils/helpers/device_helpers.dart';

class OnboardingSkip extends StatelessWidget {
   OnboardingSkip({super.key});
  final controller = OnboardingController.instance;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: AppDeviceHelper.getAppBarHeight(),
      right: 0,
      child: Obx(
        // ignore: unrelated_type_equality_checks
        ()=>controller.currentIndex ==2? SizedBox():  TextButton(
          onPressed: controller.skipPage,
          
          child:Text(AppTexts.skip),
        ),
      ),
    );
  }
}
