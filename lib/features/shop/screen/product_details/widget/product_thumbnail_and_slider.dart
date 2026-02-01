
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app_with_getx/common/widgets/appbar/my_appbar.dart';
import 'package:shopping_app_with_getx/common/widgets/icons/circular_icons.dart';
import 'package:shopping_app_with_getx/common/widgets/images/rounded_image.dart';
import 'package:shopping_app_with_getx/utils/constants/colors.dart';
import 'package:shopping_app_with_getx/utils/constants/images.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';
import 'package:shopping_app_with_getx/utils/helpers/helper_function.dart';

class AppProductThumbnailAndSlider extends StatelessWidget {
  const AppProductThumbnailAndSlider({
    super.key,
  });

  

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Container(
      color: dark? AppColors.darkerGrey: AppColors.light,
      child: Stack(
        children: [
          // [Image]- Main Image or Thumbnail
          SizedBox(
            height: 400,
            child: Padding(
              padding: const EdgeInsets.all(
                AppSizes.productImageRadius * 2,
              ),
              child: Center(child: Image(image: AssetImage(AppImages.productImage10))),
            ),
          ),
      
          // Image slider
          Positioned(
            left: AppSizes.defaultSpace,
            right: 0,
            bottom: AppSizes.defaultSpace/2,
            child: SizedBox(
              height: 80,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index) =>  AppRoundedimage(
                  imageUrl: AppImages.productImage10,
                  width: 80,
                  backgroundColor: dark ? AppColors.dark : AppColors.white,
                  padding: EdgeInsets.all(AppSizes.sm),
                  border: Border.all(color: AppColors.primary),
                  
                ), separatorBuilder: (BuildContext context, int index) => SizedBox(width: AppSizes.spaceBtwItems,),
              ),
            ),
          ),
    
          MyAppBar(
            showBackArrow: true,
            actions: [
              AppCirculraIcon(icon:Iconsax.heart5,color: Colors.red,)
            ],
          )
       
        ],
      ),
    );
  }
}
