
import 'package:flutter/material.dart';
import 'package:shopping_app_with_getx/common/widgets/custom_shapes/rounded_container.dart';
import 'package:shopping_app_with_getx/common/widgets/images/circular_image.dart';
import 'package:shopping_app_with_getx/common/widgets/text/brand_title_with_verify_icon.dart';
import 'package:shopping_app_with_getx/common/widgets/text/product_price.dart';
import 'package:shopping_app_with_getx/common/widgets/text/product_title_text.dart';
import 'package:shopping_app_with_getx/utils/constants/colors.dart';
import 'package:shopping_app_with_getx/utils/constants/images.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';

class AppProductMetaData extends StatelessWidget {
  const AppProductMetaData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // sale tag , Price, share button
        Row(
          children: [
            // sale Tag
            AppRoundedContainer(
              radius: AppSizes.sm,
              backgroundColor: AppColors.yellow.withValues(
                alpha: 0.8,
              ),
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
            SizedBox(width: AppSizes.spaceBtwItems),
            // sale price
            Text(
              "\$250",
              style: Theme.of(context).textTheme.titleSmall!.apply(
                decoration: TextDecoration.lineThrough,
              ),
            ),
            // actual price
            SizedBox(width: AppSizes.spaceBtwItems),
            AppProductPrice(price: "150", isLarge: true),
            Spacer(),
        
            // share button
            IconButton(onPressed: () {}, icon: Icon(Icons.share)),
          ],
        ),
        
        SizedBox(height: AppSizes.spaceBtwItems / 1.5),
        // Product title
        AppProductTitleText(title: "Bata air Striker",smallSize: false,),
        SizedBox(height: AppSizes.spaceBtwItems / 1.5),
        
        // Product Status
        Row(
          children: [
            AppProductTitleText(title: "Status"),
            SizedBox(width: AppSizes.spaceBtwItems),
            Text(
              "In Storck",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
        SizedBox(height: AppSizes.spaceBtwItems / 1.5),
        
        //Product brand image with title
        Row(
          children: [
    
            // brand image
            AppCircularImage(
              padding: 0,
              image: AppImages.bata,
              width: 32,
              height: 32,
            ),
            SizedBox(width: AppSizes.spaceBtwItems),
    
            // brand title
            AppBrandTitleWithVerifyIcon(title: "Bata"),
          ],
        ),
      ],
    );
  }
}
