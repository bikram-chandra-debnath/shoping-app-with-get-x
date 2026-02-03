
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app_with_getx/common/widgets/loaders/animation_loader.dart';
import 'package:shopping_app_with_getx/utils/constants/colors.dart';
import 'package:shopping_app_with_getx/utils/helpers/helper_function.dart';

class AppFullScreenLoader {
  static void openLoadingDialog(String text,){
    showDialog(context: Get.overlayContext!, 
    barrierDismissible: false,
    builder: (context) => PopScope(
      canPop: false,
      
      child: Container(
        color: AppHelperFunction.isDarkMode(Get.context!)?AppColors.dark: AppColors.white,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            // Extra space
            const SizedBox(height: 250,),


            // Animation

            AppAnimationLoader(text:text,)
            
          ],
        ),
      )),);
  }

static void stopLoading(){
  Navigator.of(Get.overlayContext!).pop();
}
}
