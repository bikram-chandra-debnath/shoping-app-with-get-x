import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app_with_getx/common/widgets/text/section_heading.dart';
import 'package:shopping_app_with_getx/features/authentication/screens/login/login_screen.dart';
import 'package:shopping_app_with_getx/features/personalization/screens/address/address_screen.dart';
import 'package:shopping_app_with_getx/features/personalization/screens/profile/widgets/profile_primary_header.dart';
import 'package:shopping_app_with_getx/features/personalization/screens/profile/widgets/settings_menu_tile.dart';
import 'package:shopping_app_with_getx/features/personalization/screens/profile/widgets/user_profile_title.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';

import '../../../shop/screen/order/order_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // user profile
            AppProfilePrimaryHeader(),

            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  // User profile details
                  UserProfileTile(),
                  SizedBox(height: AppSizes.spaceBtwItems),
                  // account settings heading
                  AppSectionHeading(
                    title: "Account Settings",
                    actionButton: false,
                  ),
                  // Settings menu
                  SettingsMenuTile(
                    onTap: ()=> Get.to(()=> AddressScreen()),
                    title: 'My Address',
                    subtitle: 'Set shopping delivery address',
                    icon: Iconsax.safe_home,
                  ),
                  SettingsMenuTile(
                    onTap: (){},
                    title: 'My Cart',
                    subtitle: 'Add, remove products and move to checkout',
                    icon: Iconsax.shopping_cart,
                  ),
                  SettingsMenuTile(
                    onTap: ()=> Get.to(()=> OrderScreen()),
                    title: 'MY Order',
                    subtitle: 'In-progress and completed Orders',
                    icon: Iconsax.bag_tick,
                  ),

                  SizedBox(height: AppSizes.spaceBtwSections),

                  // logout
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () => Get.offAll(() => LoginScreen()),
                      child: Text("Logout"),
                    ),
                  ),

                  SizedBox(height: AppSizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
