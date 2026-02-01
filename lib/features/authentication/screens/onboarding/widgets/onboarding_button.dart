import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:shopping_app_with_getx/common/widgets/buttons/app_elevated_button.dart';
import 'package:shopping_app_with_getx/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';
import 'package:shopping_app_with_getx/utils/constants/texts.dart';

class OnboardingButton extends StatelessWidget {
  OnboardingButton({super.key});

  final controller = OnboardingController.instance;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: AppSizes.spaceBtwItems,
      // ignore: unrelated_type_equality_checks
      child: AppElevatedButton(
          onPressed: controller.nextPage,
          child:  Obx(
        () => Text(
            // ignore: unrelated_type_equality_checks
            controller.currentIndex == 2 ? AppTexts.getStarted : AppTexts.next,
          ),
        ),
      ),
    );
  }
}
