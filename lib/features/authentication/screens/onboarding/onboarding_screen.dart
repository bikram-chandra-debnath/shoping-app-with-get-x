import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app_with_getx/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:shopping_app_with_getx/features/authentication/screens/onboarding/widgets/onboarding_button.dart';
import 'package:shopping_app_with_getx/features/authentication/screens/onboarding/widgets/onboarding_dot_indicator.dart';
import 'package:shopping_app_with_getx/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:shopping_app_with_getx/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:shopping_app_with_getx/utils/constants/images.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';
import 'package:shopping_app_with_getx/utils/constants/texts.dart';

class OnboardingScreen extends StatelessWidget {
 OnboardingScreen({super.key});

  final controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal:  AppSizes.defaultSpace),
        child: Stack(
          children: [
        
            // scrollable page
            PageView(
              controller: controller.pageController,
              onPageChanged: (value) => controller.updatePageIndicator(value),
              children: [
                OnboardingPage(
                  animation: AppImages.onboarding1Animation,
                  title: AppTexts.onboardingTitle1,
                  subTitle: AppTexts.onboardingSubTitle1,
                ),
                OnboardingPage(
                  animation: AppImages.onboarding2Animation,
                  title: AppTexts.onboardingTitle2,
                  subTitle: AppTexts.onboardingSubTitle2,
                ),
                OnboardingPage(
                  animation: AppImages.onboarding3Animation,
                  title: AppTexts.onboardingTitle3,
                  subTitle: AppTexts.onboardingSubTitle3,
                ),
              ],
            ),
        
            // page indicator
            OnboardingDotIndicator(),
        
            // bottom button
        
            OnboardingButton(),
        
            // skip button
        
            OnboardingSkip()
          ],
        ),
      ),
    );
  }
}







