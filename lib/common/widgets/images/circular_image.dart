import 'package:flutter/material.dart';
import 'package:shopping_app_with_getx/utils/constants/colors.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';
import 'package:shopping_app_with_getx/utils/helpers/helper_function.dart';

class AppCircularImage extends StatelessWidget {
  const AppCircularImage({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
    this.isNetworkImage = false,
    this.overlayColors,
    this.backgroundColor,
    this.width = 56,
    this.height = 56,
    this.padding = AppSizes.sm,
    this.showBorder = false,
    this.borderColor = AppColors.primary,
    this.borderWidth = 1.0,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColors;
  final Color? backgroundColor;
  final double width, height, padding;
  final bool showBorder;
  final Color borderColor;
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor??(dark? AppColors.dark: AppColors.light),
        borderRadius: BorderRadius.circular(100),
        border:showBorder? Border.all(color: borderColor, width: borderWidth): null,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image(image: isNetworkImage? NetworkImage(image):AssetImage(image) as ImageProvider),
      ),
    );
  }
}
