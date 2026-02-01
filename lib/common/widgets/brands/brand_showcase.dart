import 'package:flutter/material.dart';
import 'package:shopping_app_with_getx/common/widgets/brands/brand_card.dart';
import 'package:shopping_app_with_getx/common/widgets/custom_shapes/rounded_container.dart';
import 'package:shopping_app_with_getx/utils/constants/colors.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';
import 'package:shopping_app_with_getx/utils/helpers/helper_function.dart';

class AppBrandShowcase extends StatelessWidget {
  const AppBrandShowcase({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return AppRoundedContainer(
      showBorder: true,
      borderColor: AppColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.all(AppSizes.md),
      margin: EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBrandCard(showBorder: false),

          Row(
            children:
                images.map((image) => buildBrandImage(dark, image)).toList(),
          ),
        ],
      ),
    );
  }

  Widget buildBrandImage(bool dark, String image) {
    return Expanded(
      child: AppRoundedContainer(
        height: 100,
        margin: const EdgeInsets.only(right: AppSizes.sm),
        padding: const EdgeInsets.all(AppSizes.md),
        backgroundColor: dark ? AppColors.darkGrey : AppColors.light,
        child: Image(image: AssetImage(image), fit: BoxFit.contain),
      ),
    );
  }
}
