import 'package:flutter/material.dart';
import 'package:shopping_app_with_getx/common/widgets/chips/choice_chips.dart';
import 'package:shopping_app_with_getx/common/widgets/custom_shapes/rounded_container.dart';
import 'package:shopping_app_with_getx/common/widgets/text/product_price.dart';
import 'package:shopping_app_with_getx/common/widgets/text/product_title_text.dart';
import 'package:shopping_app_with_getx/common/widgets/text/section_heading.dart';
import 'package:shopping_app_with_getx/utils/constants/colors.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';
import 'package:shopping_app_with_getx/utils/helpers/helper_function.dart';

class AppProductAttributes extends StatelessWidget {
  const AppProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Column(
      children: [
        // selected Attributes pricing & description
        AppRoundedContainer(
          padding: EdgeInsets.all(AppSizes.md),
          backgroundColor: dark ? AppColors.darkerGrey : AppColors.grey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // title price and stock
              Row(
                children: [
                  // [Text]- variation heading
                  AppSectionHeading(title: 'Variation', actionButton: false),
                  SizedBox(width: AppSizes.spaceBtwItems),
                  Column(
                    children: [
                      // price , sale price & actual price
                      Row(
                        children: [
                          // price
                          AppProductTitleText(
                            title: "Price : ",
                            smallSize: true,
                          ),
                          // actula price
                          Text(
                            "\$250",
                            style: Theme.of(
                              context,
                            ).textTheme.titleSmall!.apply(
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
    
                          SizedBox(width: AppSizes.spaceBtwItems),
                          // sale price
                          AppProductPrice(price: '200'),
                        ],
                      ),
                      // Stock status
                      Row(
                        children: [
                          AppProductTitleText(
                            title: "Stock : ",
                            smallSize: true,
                          ),
                          Text(
                            "In Stock",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              // description
              AppProductTitleText(
                title: "This a product of Bata ",
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        SizedBox(height: AppSizes.spaceBtwItems),
    
        // Attribute Colors
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSectionHeading(title: "Colors", actionButton: false),
            Wrap(
              spacing: AppSizes.sm,
              children: [
                AppChoiceChip(
                  text: 'Red',
                  selected: false,
                  onSelected: (value) {},
                ),
                AppChoiceChip(
                  text: 'Blue',
                  selected: true,
                  onSelected: (value) {},
                ),
                AppChoiceChip(
                  text: 'Black',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
    
        // Attribute size
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSectionHeading(title: "size", actionButton: false),
            Wrap(
              spacing: AppSizes.sm,
              children: [
                AppChoiceChip(
                  text: '41',
                  selected: false,
                  onSelected: (value) {},
                ),
                AppChoiceChip(
                  text: '42',
                  selected: true,
                  onSelected: (value) {},
                ),
                AppChoiceChip(
                  text: '43',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
