import 'package:flutter/material.dart';
import 'package:shopping_app_with_getx/common/widgets/custom_shapes/rounded_container.dart';
import 'package:shopping_app_with_getx/common/widgets/images/rounded_image.dart';
import 'package:shopping_app_with_getx/common/widgets/text/brand_title_with_verify_icon.dart';
import 'package:shopping_app_with_getx/utils/constants/enums.dart';
import 'package:shopping_app_with_getx/utils/constants/images.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';
import 'package:shopping_app_with_getx/utils/constants/texts.dart';


class AppBrandCard extends StatelessWidget {
  const AppBrandCard({
    super.key,  this.showBorder=true, this.onTap,
  });
  final bool showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AppRoundedContainer(
        height:AppSizes.brandCardHeight,
       
        showBorder:showBorder,
        padding: EdgeInsets.all(AppSizes.sm),
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            Flexible(child: AppRoundedimage(imageUrl: AppImages.bata,backgroundColor: Colors.transparent,)),
            SizedBox(width: AppSizes.spaceBtwItems / 2),
      
            // brand name and verify icon
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppBrandTitleWithVerifyIcon(
                    title: AppTexts.bata,
                    brandTextSize: TextSizes.large,
                  ),
                  
                  Text(
                    "172 products",
                    style: Theme.of(context).textTheme.labelMedium,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
