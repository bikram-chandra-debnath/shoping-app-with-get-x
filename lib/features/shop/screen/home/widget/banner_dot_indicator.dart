import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app_with_getx/features/shop/controller/home/home_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerDotIndicator extends StatelessWidget {
  const BannerDotIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;
    return Obx(()=>
       SmoothPageIndicator(
        controller: PageController(initialPage: controller.currentIndex.value),
        count: 4,
        effect: ExpandingDotsEffect(dotHeight: 6.0),
      ),
    );
  }
}
