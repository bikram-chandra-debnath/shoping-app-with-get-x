import 'package:flutter/material.dart';
import 'package:shopping_app_with_getx/utils/constants/colors.dart';
import 'package:shopping_app_with_getx/utils/them/widgets_them/elevated_button_theme.dart';
import 'package:shopping_app_with_getx/utils/them/widgets_them/text_field_theme.dart';
import 'package:shopping_app_with_getx/utils/them/widgets_them/appbar_them.dart';
import 'package:shopping_app_with_getx/utils/them/widgets_them/bottom_sheet_theme.dart';
import 'package:shopping_app_with_getx/utils/them/widgets_them/checkbox_theme.dart';
import 'package:shopping_app_with_getx/utils/them/widgets_them/chip_them.dart';
import 'package:shopping_app_with_getx/utils/them/widgets_them/outlined_button_theme.dart';
import 'package:shopping_app_with_getx/utils/them/widgets_them/text_theme.dart';

class AppTheme {
  //private constructor
  AppTheme._();

 

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Nunito',
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    disabledColor: AppColors.grey,
    scaffoldBackgroundColor: AppColors.white,
    textTheme: AppTextTheme.lightTextTheme,
    chipTheme: AppChipTheme.darkChipTheme,
    appBarTheme: MyAppBarTheme.lightAppBarTheme,
    checkboxTheme: AppChekboxThem.lightCheckboxThem,
    bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.lightOutlineButtonTheme,
    inputDecorationTheme: AppTextFieldThem.lightInputDecorationThem,

  );

  // Dark Theme

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Nunito',
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    disabledColor: AppColors.grey,
    scaffoldBackgroundColor: AppColors.black,
    textTheme: AppTextTheme.darkTextTheme,
    chipTheme: AppChipTheme.darkChipTheme,
    appBarTheme: MyAppBarTheme.darkAppBarTheme,
    checkboxTheme: AppChekboxThem.darkCheckboxThem,
    bottomSheetTheme: AppBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.darkOutlineButtonTheme,
    inputDecorationTheme: AppTextFieldThem.darkInputDecorationThem,
  );
}
