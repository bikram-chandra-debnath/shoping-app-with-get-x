import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app_with_getx/common/widgets/text/brand_title_with_verify_icon.dart';
import 'package:shopping_app_with_getx/common/widgets/text/product_title_text.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/images.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../../custom_shapes/rounded_container.dart';
import '../../icons/circular_icons.dart';
import '../../images/rounded_image.dart';
import '../../text/product_price.dart';

class AppProductCardHorizontal extends StatelessWidget {
  const AppProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Container(
      width: 310,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
        color: dark ? AppColors.darkerGrey : AppColors.light,
      ),
      child: Row(
        children: [
          AppRoundedContainer(
            height: 120,
            padding: EdgeInsets.all(AppSizes.sm),
            backgroundColor: dark ? AppColors.dark : AppColors.light,
            child: Stack(
              children: [
                // thumblail
                SizedBox(
                  width: 120,
                  height: 120,
                  child: AppRoundedimage(imageUrl: AppImages.productImage2),
                ),

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

          // Right side
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(
                left: AppSizes.sm,
                top: AppSizes.sm,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Product Title
                      AppProductTitleText(
                        title: "Blue Bata shoes",
                        smallSize: true,
                      ),
                      SizedBox(height: AppSizes.spaceBtwItems / 2),

                      // Product brand
                      AppBrandTitleWithVerifyIcon(title: "Bata"),
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(child: AppProductPrice(price: "79")),

                      Container(
                        height: AppSizes.iconlg * 1.2,
                        width: AppSizes.iconlg * 1.2,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppSizes.cardRadiusMd),
                            bottomRight: Radius.circular(
                              AppSizes.productImageRadius,
                            ),
                          ),
                        ),
                        child: Icon(Iconsax.add, color: AppColors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
