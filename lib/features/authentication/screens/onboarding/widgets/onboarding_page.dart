import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shopping_app_with_getx/utils/helpers/device_helpers.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key, required this.animation, required this.title, required this.subTitle,
  });

  final String animation,title,subTitle;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: AppDeviceHelper.getAppBarHeight(),
      ),
      child: Column(
        children: [

          // animation
          Lottie.asset(animation),


          // title
          Text(
           title,
            style: Theme.of(context).textTheme.headlineMedium,
          ),

          //subtitle
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
