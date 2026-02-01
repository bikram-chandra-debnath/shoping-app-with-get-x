import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/images.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../../images/rounded_image.dart';
import '../../text/brand_title_with_verify_icon.dart';
import '../../text/product_title_text.dart';


class AppCartItem extends StatelessWidget {
  const AppCartItem({
    super.key,
  });


  @override
  Widget build(BuildContext context) {

    final dark = AppHelperFunction.isDarkMode(context);
    return Row(
      children: [
        // product image
        AppRoundedimage(
          imageUrl: AppImages.productImage4a,
          height: 60,
          width: 60,
          padding: EdgeInsets.all(AppSizes.sm),
          backgroundColor: dark ? AppColors.darkerGrey : AppColors.light,
        ),
        SizedBox(width: AppSizes.spaceBtwItems),


        // brand, name, variation
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // brand
            AppBrandTitleWithVerifyIcon(title: "Iphone"),
            // name
            AppProductTitleText(title: "Iphone 11 64GB white",maxLines: 1,),

            RichText(text: TextSpan(
                children: [
                  // variation or attributes
                  TextSpan(
                    text: "Color ", style: Theme.of(context).textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: "black ", style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  TextSpan(
                    text: "storage", style: Theme.of(context).textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: "64GB", style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ]
            ))
          ],))

      ],
    );
  }
}
