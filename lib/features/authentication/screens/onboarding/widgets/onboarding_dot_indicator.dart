import 'package:flutter/material.dart';
import 'package:shopping_app_with_getx/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:shopping_app_with_getx/utils/helpers/device_helpers.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingDotIndicator extends StatelessWidget {
  OnboardingDotIndicator({super.key});
  final controller = OnboardingController.instance;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: AppDeviceHelper.getScreenWidth(context) / 3,
      right: AppDeviceHelper.getScreenWidth(context) / 3,
      bottom: AppDeviceHelper.getBottomNavigationBarHeight() * 3,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: (index) => controller.dotNavigationClick(index),
        count: 3,
        effect: ExpandingDotsEffect(dotHeight: 6.0),
      ),
    );
  }
}
