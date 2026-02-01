import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app_with_getx/common/widgets/text/brand_title.dart';
import 'package:shopping_app_with_getx/utils/constants/colors.dart';
import 'package:shopping_app_with_getx/utils/constants/enums.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';

class AppBrandTitleWithVerifyIcon extends StatelessWidget {
  const AppBrandTitleWithVerifyIcon({
    super.key,
    required this.title,
     this.maxLines=1,
    this.textColor,
    this.iconColor= AppColors.primary,
    this.textAlign= TextAlign.center,
     this.brandTextSize=TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize:MainAxisSize.min ,
      children: [
        Flexible(
          child: AppBrandTitle(
            title: title,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
            color: textColor,
          ),
        ),
        SizedBox(width: AppSizes.xs),
        Icon(Iconsax.verify5, color: AppColors.primary, size: AppSizes.iconxs),
      ],
    );
  }
}
