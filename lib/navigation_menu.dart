import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app_with_getx/features/personalization/screens/profile/profile_screen.dart';
import 'package:shopping_app_with_getx/features/shop/screen/home/home_screen.dart';
import 'package:shopping_app_with_getx/features/shop/screen/store/store_screen.dart';
import 'package:shopping_app_with_getx/features/shop/screen/wishlist/wishlist_screen.dart';
import 'package:shopping_app_with_getx/utils/constants/colors.dart';
import 'package:shopping_app_with_getx/utils/helpers/helper_function.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    final controller = Get.put(NavigationController());
    return Scaffold(
      body: Obx(() => controller.pages[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(
        () => NavigationBar(
          backgroundColor: dark ? AppColors.dark : AppColors.light,
          elevation: 0,

          indicatorColor:
              dark
                  ? AppColors.light.withValues(alpha: 0.1)
                  : AppColors.dark.withValues(alpha: 0.1),
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (value) {
            controller.selectedIndex.value = value;
          },
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
            NavigationDestination(icon: Icon(Iconsax.shop4), label: "Store"),
            NavigationDestination(icon: Icon(Iconsax.heart), label: "Wishlist"),
            NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
          ],
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {
 static NavigationController get instance => Get.find();
  RxInt selectedIndex = 0.obs;

  List<Widget> pages = [
    HomeScreen(),
    StoreScreen(),
    WishlistScreen(),
    ProfileScreen( ),
  ];
}
