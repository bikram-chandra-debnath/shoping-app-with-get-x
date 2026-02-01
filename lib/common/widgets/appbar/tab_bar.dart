
import 'package:flutter/material.dart';
import 'package:shopping_app_with_getx/utils/constants/colors.dart';
import 'package:shopping_app_with_getx/utils/helpers/device_helpers.dart';
import 'package:shopping_app_with_getx/utils/helpers/helper_function.dart';

class AppTabBar extends StatelessWidget implements PreferredSizeWidget {
  const AppTabBar({
    super.key, required this.tabs,
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Material(
      color: dark? AppColors.black: AppColors.white,
      
      child: TabBar(
        labelColor: dark? AppColors.white: AppColors.primary,
        unselectedLabelColor: AppColors.darkGrey,
        indicatorColor: AppColors.primary,
        isScrollable: true,
        tabs:tabs
      ),
    );
  }
  
  @override
  // toDo: implement preferredSize
  Size get preferredSize =>Size.fromHeight(AppDeviceHelper.getAppBarHeight());
}
