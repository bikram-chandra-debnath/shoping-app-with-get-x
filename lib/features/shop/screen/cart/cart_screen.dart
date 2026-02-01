import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:shopping_app_with_getx/common/style/padding.dart";
import "package:shopping_app_with_getx/common/widgets/appbar/my_appbar.dart";
import "package:shopping_app_with_getx/common/widgets/buttons/app_elevated_button.dart";
import "package:shopping_app_with_getx/features/shop/screen/cart/widgets/cart_items.dart";
import "package:shopping_app_with_getx/utils/constants/sizes.dart";

import "../checkout/checkout_screen.dart";



class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //-----[AppBar]------
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text("Cart", style: Theme.of(context).textTheme.headlineMedium),
      ),

      //-----[body]------
      body: Padding(
        padding: AppPadding.screenPadding,
        child: AppCartItems( showAddRemoveButtons: true,),
      ),

      // bottom navigation bar
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: AppElevatedButton(
          onPressed: () => Get.to(() => CheckoutScreen()),
          child: Text("Checkout \$ 323"),
        ),
      ),
    );
  }
}
