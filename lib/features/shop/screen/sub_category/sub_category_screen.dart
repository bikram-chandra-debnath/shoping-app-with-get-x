import 'package:flutter/material.dart';
import 'package:shopping_app_with_getx/common/style/padding.dart';
import 'package:shopping_app_with_getx/common/widgets/appbar/my_appbar.dart';
import 'package:shopping_app_with_getx/common/widgets/text/section_heading.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';

import '../../../../common/widgets/products/product_cards/produc_cards_horizontal.dart';
import '../../../../utils/helpers/helper_function.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppHelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text(
          "Subcategory",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPadding.screenPadding,
          child: Column(
            children: [
              Column(
                children: [
                  // Sub Category
                  AppSectionHeading(title: "Sports shoes", onPressed: () {}),
                  SizedBox(height: AppSizes.spaceBtwItems / 2),

                  // Horizontal Product Card
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => AppProductCardHorizontal(),
                      separatorBuilder:
                          (context, index) =>
                              SizedBox(width: AppSizes.spaceBtwItems),
                      itemCount: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(height: AppSizes.spaceBtwSections/2,),
              Column(
                children: [
                  // Sub Category
                  AppSectionHeading(title: "Sports shoes", onPressed: () {}),
                  SizedBox(height: AppSizes.spaceBtwItems / 2),

                  // Horizontal Product Card
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => AppProductCardHorizontal(),
                      separatorBuilder:
                          (context, index) =>
                          SizedBox(width: AppSizes.spaceBtwItems),
                      itemCount: 5,
                    ),
                  ),
                ],
              ),
              SizedBox(height: AppSizes.spaceBtwSections/2,),
              Column(
                children: [
                  // Sub Category
                  AppSectionHeading(title: "Sports shoes", onPressed: () {}),
                  SizedBox(height: AppSizes.spaceBtwItems / 2),

                  // Horizontal Product Card
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => AppProductCardHorizontal(),
                      separatorBuilder:
                          (context, index) =>
                          SizedBox(width: AppSizes.spaceBtwItems),
                      itemCount: 5,
                    ),
                  ),
                ],
              ),
              SizedBox(height: AppSizes.spaceBtwSections/2,),
              Column(
                children: [
                  // Sub Category
                  AppSectionHeading(title: "Sports shoes", onPressed: () {}),
                  SizedBox(height: AppSizes.spaceBtwItems / 2),

                  // Horizontal Product Card
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => AppProductCardHorizontal(),
                      separatorBuilder:
                          (context, index) =>
                          SizedBox(width: AppSizes.spaceBtwItems),
                      itemCount: 5,
                    ),
                  ),
                ],
              ),
              SizedBox(height: AppSizes.spaceBtwSections/2,),
              Column(
                children: [
                  // Sub Category
                  AppSectionHeading(title: "Sports shoes", onPressed: () {}),
                  SizedBox(height: AppSizes.spaceBtwItems / 2),

                  // Horizontal Product Card
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => AppProductCardHorizontal(),
                      separatorBuilder:
                          (context, index) =>
                          SizedBox(width: AppSizes.spaceBtwItems),
                      itemCount: 28,
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
