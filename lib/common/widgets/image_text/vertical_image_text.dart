import 'package:flutter/material.dart';
import 'package:shopping_app_with_getx/common/widgets/custom_shapes/circuler_container.dart';
import 'package:shopping_app_with_getx/utils/constants/colors.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';
import 'package:shopping_app_with_getx/utils/helpers/helper_function.dart';

class AppVerticalImageText extends StatelessWidget {
  const AppVerticalImageText({
    super.key,
    required this.title,
    required this.image,
    required this.textColor,
    this.backgrounColor,
    this.onTap,
  });

  final String title, image;
  final Color textColor;
  final Color? backgrounColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    bool dark = AppHelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          // image
          AppCircularContainer(
            height: 56,
            width: 56,
            backgroundColor:
                backgrounColor ?? (dark ? AppColors.dark : AppColors.light),
            padding: EdgeInsets.all(AppSizes.sm),
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: AppSizes.spaceBtwItems / 2),

          // title
          SizedBox(
            width: 55,
            child: Text(
              title,
              style: Theme.of(
                context,
              ).textTheme.labelMedium!.apply(color: textColor),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
