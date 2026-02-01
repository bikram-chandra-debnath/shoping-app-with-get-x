import 'package:flutter/material.dart';
import 'package:shopping_app_with_getx/utils/constants/colors.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';

class AppOutlinedButtonTheme{
  AppOutlinedButtonTheme._();


  static OutlinedButtonThemeData lightOutlineButtonTheme = OutlinedButtonThemeData(
    style:  OutlinedButton.styleFrom(
      elevation:  0,
      foregroundColor: AppColors.dark,
      side:  const BorderSide(color: AppColors.buttonPrimary),
      textStyle: const TextStyle(fontSize: 16,color: AppColors.black,fontWeight: FontWeight.w600,),
      padding: const EdgeInsets.symmetric(vertical: AppSizes.buttonHeight,horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd))
    )
  );
  static OutlinedButtonThemeData darkOutlineButtonTheme = OutlinedButtonThemeData(
    style:  OutlinedButton.styleFrom(
      elevation:  0,
      foregroundColor: AppColors.light,
      side:  const BorderSide(color: AppColors.buttonPrimary),
      textStyle: const TextStyle(fontSize: 16,color: AppColors.textWhite,fontWeight: FontWeight.w600,),
      padding: const EdgeInsets.symmetric(vertical: AppSizes.buttonHeight,horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd))
    )
  );
}