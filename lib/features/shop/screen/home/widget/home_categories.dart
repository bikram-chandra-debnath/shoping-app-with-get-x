import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app_with_getx/common/widgets/image_text/vertical_image_text.dart';
import 'package:shopping_app_with_getx/utils/constants/colors.dart';
import 'package:shopping_app_with_getx/utils/constants/images.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';
import 'package:shopping_app_with_getx/utils/constants/texts.dart';

import '../../sub_category/sub_category_screen.dart';

class AppHomeCategories extends StatelessWidget {
  const AppHomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: AppSizes.spaceBtwSections),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Section Title
          Text(
            AppTexts.popularCategories,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: AppColors.light),
          ),

          SizedBox(height: AppSizes.spaceBtwItems / 2),

          //// Categories list
          SizedBox(
            height: 80,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 10,

              itemBuilder:
                  (context, index) => AppVerticalImageText(
                    onTap: () => Get.to(() => SubCategoryScreen()),
                    title: "Sports Categories",
                    image: AppImages.sports,
                    textColor: AppColors.white,
                  ),
              separatorBuilder:
                  (BuildContext context, int index) =>
                      SizedBox(width: AppSizes.spaceBtwItems),
            ),
          ),
        ],
      ),
    );
  }
}
