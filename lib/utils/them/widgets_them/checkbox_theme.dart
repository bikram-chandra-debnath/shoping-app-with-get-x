import 'package:flutter/material.dart';
import 'package:shopping_app_with_getx/utils/constants/colors.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';

class AppChekboxThem{
  AppChekboxThem._();

  static CheckboxThemeData lightCheckboxThem = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppSizes.xs),
    ),
    checkColor:  WidgetStateProperty.resolveWith((states) {
      if(states.contains(WidgetState.selected)){
        return AppColors.white;
      }else {
        return AppColors.black;
      }
    },
    ),

    fillColor:  WidgetStateProperty.resolveWith((states) {
      if(states.contains(WidgetState.selected)){
        return AppColors.primary;
      }else{
        return Colors.transparent;
      }
    },)
    
    );
  static CheckboxThemeData darkCheckboxThem=CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppSizes.xs),
    ),
    checkColor:  WidgetStateProperty.resolveWith((states) {
      if(states.contains(WidgetState.selected)){
        return AppColors.white;
      }else {
        return AppColors.black;
      }
    },
    ),

    fillColor:  WidgetStateProperty.resolveWith((states) {
      if(states.contains(WidgetState.selected)){
        return AppColors.primary;
      }else{
        return Colors.transparent;
      }
    },)
    
    );
}