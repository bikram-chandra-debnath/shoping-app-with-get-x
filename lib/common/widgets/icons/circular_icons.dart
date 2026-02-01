import 'package:flutter/material.dart';
import 'package:shopping_app_with_getx/utils/constants/colors.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';
import 'package:shopping_app_with_getx/utils/helpers/helper_function.dart';

class AppCirculraIcon extends StatelessWidget {
  const AppCirculraIcon({
    super.key,
    this.sidth,
    this.height,
    this.size = AppSizes.iconmd,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
    this.width,
  });

  final double? sidth, height, width, size;
  final IconData? icon;
  final Color? color, backgroundColor;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color:
            (backgroundColor != null)
                ? backgroundColor
                : dark
                ? AppColors.dark.withValues(alpha: 0.9)
                : AppColors.light.withValues(alpha: 0.9),
        borderRadius: BorderRadius.circular(1000),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, color: color, size: size),
      ),
    );
  }
}
