import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app_with_getx/common/widgets/icons/circular_icons.dart';
import 'package:shopping_app_with_getx/utils/constants/colors.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';
import 'package:shopping_app_with_getx/utils/helpers/helper_function.dart';

class AppBottomAddToCart extends StatelessWidget {
  const AppBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.defaultSpace,
        vertical: AppSizes.defaultSpace / 2,
      ),
      decoration: BoxDecoration(
        color: dark ? AppColors.darkGrey : AppColors.light,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppSizes.cardRadiusLg),
          topRight: Radius.circular(AppSizes.cardRadiusLg),
        ),
      ),

      child: Row(
        children: [
          // increment button
          AppCirculraIcon(
            icon: Iconsax.minus,
            backgroundColor: AppColors.darkerGrey,
            width: 40,
            height: 40,
            color: AppColors.white,
          ),
          SizedBox(width: AppSizes.spaceBtwItems),
          Text("2", style: Theme.of(context).textTheme.titleSmall),
          SizedBox(width: AppSizes.spaceBtwItems),
          // decriment button
          AppCirculraIcon(
            icon: Iconsax.add,
            backgroundColor: AppColors.black,
            width: 40,
            height: 40,
            color: AppColors.white,
          ),

Spacer(),

          // add to cart button
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(AppSizes.md),
              backgroundColor: AppColors.black,
              side: BorderSide(color: AppColors.black),
            ),
            child: Row(
              children: [
                Icon(Iconsax.shopping_bag),
                SizedBox(width: AppSizes.spaceBtwItems / 2),
                Text("Add To Cart"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
