import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app_with_getx/common/style/shadow.dart';
import 'package:shopping_app_with_getx/utils/constants/colors.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';
import 'package:shopping_app_with_getx/utils/constants/texts.dart';
import 'package:shopping_app_with_getx/utils/helpers/helper_function.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = AppHelperFunction.isDarkMode(context);
    return Positioned(
      bottom: 0,
      left: AppSizes.spaceBtwSections,
      right: AppSizes.spaceBtwSections,
      child: Container(
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.md),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
          color: dark ? AppColors.dark : AppColors.light,
          boxShadow: AppShadow.searchBarShadow,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Iconsax.search_normal, color: AppColors.darkGrey),
            SizedBox(width: AppSizes.spaceBtwItems),
            Text(
              AppTexts.searchBarTitle,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
