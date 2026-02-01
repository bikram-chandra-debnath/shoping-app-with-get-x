import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app_with_getx/common/widgets/images/rounded_image.dart';
import 'package:shopping_app_with_getx/features/shop/controller/home/home_controller.dart';
import 'package:shopping_app_with_getx/features/shop/screen/home/widget/banner_dot_indicator.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';

class AppPromoSlider extends StatelessWidget {
  const AppPromoSlider({super.key, required this.banners});

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;
    return Column(
      children: [
        // Slider
        CarouselSlider(
          items:
              banners
                  .map((banner) => AppRoundedimage(imageUrl: banner))
                  .toList(),
          options: CarouselOptions(
            viewportFraction: 1.0,
            onPageChanged: (index, reason) => controller.onPageChenged(index),
          ),
          carouselController: controller.carouselController,
        ),

        SizedBox(height: AppSizes.spaceBtwItems),

        // Indicator
        BannerDotIndicator(),
      ],
    );
  }
}
