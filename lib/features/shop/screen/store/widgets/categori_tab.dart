import 'package:flutter/material.dart';
import 'package:shopping_app_with_getx/common/widgets/brands/brand_showcase.dart';
import 'package:shopping_app_with_getx/common/widgets/layours/grid_layout.dart';
import 'package:shopping_app_with_getx/common/widgets/products/product_cards/product_cards.dart';
import 'package:shopping_app_with_getx/common/widgets/text/section_heading.dart';
import 'package:shopping_app_with_getx/utils/constants/images.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';

class AppCategoriTab extends StatelessWidget {
  const AppCategoriTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.defaultSpace,
          ),
          child: Column(
            children: [
              AppBrandShowcase(
                images: [
                  AppImages.productImage7,
                  AppImages.productImage47,
                  AppImages.productImage43,
                ],
              ),
              AppBrandShowcase(
                images: [
                  AppImages.productImage7,
                  AppImages.productImage47,
                  AppImages.productImage43,
                ],
              ),
              AppBrandShowcase(
                images: [
                  AppImages.productImage7,
                  AppImages.productImage47,
                  AppImages.productImage43,
                ],
              ),

              SizedBox(height: AppSizes.spaceBtwItems),

              // Section Heading
              AppSectionHeading(title: "You might like", onPressed: () {}),

              AppGridLayout(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return AppProductCardVerticla();
                },
              ),
              SizedBox(height: AppSizes.spaceBtwSections,)
            ],
          ),
        ),
      ],
    );
  }
}
