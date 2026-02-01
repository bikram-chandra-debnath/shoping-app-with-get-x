import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app_with_getx/common/widgets/custom_shapes/rounded_container.dart';
import 'package:shopping_app_with_getx/utils/constants/colors.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';

class AppOrderListItems extends StatelessWidget {
  const AppOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return ListView.separated(
      itemBuilder:
          (context, index) => AppRoundedContainer(
            padding: EdgeInsets.all(AppSizes.md),
            showBorder: true,
            backgroundColor: dark ? AppColors.dark : AppColors.light,
            child: Column(
              children: [
                // 1st - row
                Row(
                  children: [
                    // ship icon
                    Icon(Iconsax.ship),
                    SizedBox(width: AppSizes.spaceBtwItems / 2),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //processing title
                          Text(
                            "Processing",
                            style: Theme.of(context).textTheme.bodyLarge!.apply(
                              color: AppColors.primary,
                              fontWeightDelta: 1,
                            ),
                          ),
                          // date
                          Text(
                            "02 jan 2026",
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ],
                      ),
                    ),
                    // arrow icon
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Iconsax.arrow_right_34),
                    ),
                  ],
                ),
                SizedBox(height: AppSizes.spaceBtwItems),
                // 2st - row
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          // tag icon
                          Icon(Iconsax.tag),
                          SizedBox(width: AppSizes.spaceBtwItems / 2),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // order title
                                Text(
                                  "Order",
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                                // order value
                                Text(
                                  "#3498u",
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          // calendar icon
                          Icon(Iconsax.calendar),
                          SizedBox(width: AppSizes.spaceBtwItems / 2),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // shiping  title
                                Text(
                                  "Shiping date",
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                                // date
                                Text(
                                  "06 jan 2026",
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
      separatorBuilder:
          (context, index) => SizedBox(height: AppSizes.spaceBtwItems),
      itemCount: 3,
    );
  }
}
