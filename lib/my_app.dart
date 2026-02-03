import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app_with_getx/bindings/bindings.dart';
import 'package:shopping_app_with_getx/utils/constants/colors.dart';
import 'package:shopping_app_with_getx/utils/them/them.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      initialBinding: AppBindings(),
      darkTheme: AppTheme.darkTheme,
      home: Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(child: CircularProgressIndicator(color: AppColors.white)),
      ),
    );
  }
}
