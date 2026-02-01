import "package:flutter/material.dart";
import "package:shopping_app_with_getx/utils/constants/colors.dart";
import "package:shopping_app_with_getx/utils/constants/sizes.dart";

class AppRoundedContainer extends StatelessWidget {
  const AppRoundedContainer({
    super.key,
    this.height,
    this.width,
    this.backgroundColor = AppColors.white,
    this.padding,
    this.margin,
    this.child,
    this.radius = AppSizes.cardRadiusLg,
     this.showBorder = false,
     this.borderColor= AppColors.borderPrimary,
  });

  final double? height, width;
  final double radius;
  final Widget? child;
  final bool showBorder;

  final Color backgroundColor, borderColor;
  final EdgeInsetsGeometry? padding, margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        border:  showBorder? Border.all(color: borderColor): null,
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
