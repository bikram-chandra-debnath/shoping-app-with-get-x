import 'package:flutter/material.dart';
import 'package:shopping_app_with_getx/utils/constants/colors.dart';

class AppChipTheme{
  AppChipTheme._();


  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: AppColors.grey.withValues(alpha: 0.4),
    labelStyle: const TextStyle(color: AppColors.black),
    selectedColor: AppColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 12.0),
    checkmarkColor: AppColors.white,
  );
  static ChipThemeData darkChipTheme = ChipThemeData(
     disabledColor: AppColors.darkerGrey,
    labelStyle: const TextStyle(color: AppColors.white),
    selectedColor: AppColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 12.0),
    checkmarkColor: AppColors.white,
  );
}