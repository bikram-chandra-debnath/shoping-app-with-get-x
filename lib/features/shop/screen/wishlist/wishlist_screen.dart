import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app_with_getx/common/widgets/appbar/my_appbar.dart';
import 'package:shopping_app_with_getx/common/widgets/icons/circular_icons.dart';
import 'package:shopping_app_with_getx/common/widgets/layours/grid_layout.dart';
import 'package:shopping_app_with_getx/common/widgets/products/product_cards/product_cards.dart';
import 'package:shopping_app_with_getx/navigation_menu.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: MyAppBar(
        title: Text(
          "Wishlist",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          AppCirculraIcon(
            icon: Iconsax.add,
            onPressed:
                () => NavigationController.instance.selectedIndex.value = 0,
          ),
        ],
      ),
// body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
             AppSizes.defaultSpace,
          ),
          child: AppGridLayout(
            itemCount: 10,
            itemBuilder: (context, index) {
              return AppProductCardVerticla();
            },
          ),
        ),
      ),
    );
  }
}
