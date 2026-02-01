import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../../icons/circular_icons.dart';


class AppProductQuantityWithAddRemove extends StatelessWidget {
  const AppProductQuantityWithAddRemove({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Row(
      children: [
        // Increment button
        AppCirculraIcon(
          color: dark ? AppColors.white : AppColors.black,
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: AppSizes.iconsm,
          backgroundColor:
          dark ? AppColors.darkerGrey : AppColors.light,
        ),
        SizedBox(width: AppSizes.spaceBtwItems),

        Text("2", style: Theme.of(context).textTheme.bodySmall),
        SizedBox(width: AppSizes.spaceBtwItems),
        // decrement button
        AppCirculraIcon(
          color: AppColors.white,
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: AppSizes.iconsm,
          backgroundColor: AppColors.primary,
        ),
      ],
    );
  }
}
