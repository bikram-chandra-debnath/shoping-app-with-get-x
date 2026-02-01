import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app_with_getx/utils/helpers/helper_function.dart';

import '../../../../../common/widgets/custom_shapes/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class AppSingleAddress extends StatelessWidget {
  const AppSingleAddress({super.key, required this.isSelected});

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return AppRoundedContainer(
      backgroundColor:
          isSelected
              ? AppColors.primary.withValues(alpha: 0.5)
              : Colors.transparent,
      width: double.maxFinite,
      borderColor: isSelected ? Colors.transparent : dark? AppColors.darkerGrey: AppColors.grey,
      showBorder: true,
      padding: EdgeInsets.all(AppSizes.md),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // name
              Text(
                "Bikram nath",
                style: Theme.of(context).textTheme.titleLarge,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: AppSizes.spaceBtwItems/2,),
              // phone number
              Text(
                "+8801943705332",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: AppSizes.spaceBtwItems/2,),
              // address
              Text(
                "Dhaka,Bangladesh",

              ),
            ],
          ),
         if(isSelected)
           Positioned(top: 0, bottom: 0, right: 6, child: Icon(Iconsax.tick_circle)),

        ],
      ),
    );
  }
}
