import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app_with_getx/common/style/shadow.dart';
import 'package:shopping_app_with_getx/common/widgets/custom_shapes/rounded_container.dart';
import 'package:shopping_app_with_getx/common/widgets/icons/circular_icons.dart';
import 'package:shopping_app_with_getx/common/widgets/images/rounded_image.dart';
import 'package:shopping_app_with_getx/common/widgets/text/brand_title_with_verify_icon.dart';
import 'package:shopping_app_with_getx/common/widgets/text/product_price.dart';
import 'package:shopping_app_with_getx/common/widgets/text/product_title_text.dart';
import 'package:shopping_app_with_getx/features/shop/screen/product_details/product_details_screen.dart';
import 'package:shopping_app_with_getx/utils/constants/colors.dart';
import 'package:shopping_app_with_getx/utils/constants/images.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';
import 'package:shopping_app_with_getx/utils/constants/texts.dart';
import 'package:shopping_app_with_getx/utils/helpers/helper_function.dart';

class AppProductCardVerticla extends StatelessWidget {
  const AppProductCardVerticla({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap:() => Get.to(()=> ProductDetailsScreen()),
      child: Container(
        height: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: AppShadow.verticlaProductShadow,

          borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
          color: dark ? AppColors.darkGrey : AppColors.white,
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            // thumbnail, favourite button and discount tag
            AppRoundedContainer(
              width: 180,
              padding: const EdgeInsets.all(AppSizes.sm),
              backgroundColor: dark ? AppColors.dark : AppColors.light,
              child: Stack(
                children: [
                  // thumbnail
                  Center(child: AppRoundedimage(imageUrl: AppImages.productImage15)),

                  // discount tag
                  Positioned(
                    top: 12.0,
                    child: AppRoundedContainer(
                      radius: AppSizes.sm,
                      backgroundColor: AppColors.yellow.withValues(alpha: 0.8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSizes.sm,
                        vertical: AppSizes.xs,
                      ),
                      child: Text(
                        "20%",
                        style: Theme.of(
                          context,
                        ).textTheme.labelLarge!.apply(color: AppColors.black),
                      ),
                    ),
                  ),

                  // favourite button
                  Positioned(
                    right: 0,
                    top: 0,
                    child: AppCirculraIcon(
                      icon: Iconsax.heart,
                      // color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: AppSizes.spaceBtwItems / 2),
            // product details
            Padding(
              padding: const EdgeInsets.only(left: AppSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // product title
                  AppProductTitleText(
                    title: "Blue Bata Shoes",
                    smallSize: false,
                  ),

                  SizedBox(height: AppSizes.spaceBtwItems / 2),

                  // product brand name
                  AppBrandTitleWithVerifyIcon(title: AppTexts.bata,),

                ],
              ),
            ),
            Spacer(),

                  // product price
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: AppSizes.sm),
                  child: AppProductPrice(price: '79'),
                ),

                // add to cart button

                Container(
                  height: AppSizes.iconlg * 1.2,
                  width: AppSizes.iconlg * 1.2,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppSizes.cardRadiusMd),
                      bottomRight: Radius.circular(AppSizes.productImageRadius),
                    ),
                  ),
                  child: Icon(Iconsax.add, color: AppColors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
