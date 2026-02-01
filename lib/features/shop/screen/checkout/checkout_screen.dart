import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app_with_getx/common/style/padding.dart';
import 'package:shopping_app_with_getx/common/widgets/appbar/my_appbar.dart';
import 'package:shopping_app_with_getx/common/widgets/custom_shapes/rounded_container.dart';
import 'package:shopping_app_with_getx/common/widgets/screen/success_screen.dart';
import 'package:shopping_app_with_getx/features/shop/screen/cart/widgets/cart_items.dart';
import 'package:shopping_app_with_getx/features/shop/screen/checkout/widgets/billing_address_section.dart';
import 'package:shopping_app_with_getx/features/shop/screen/checkout/widgets/billing_amount_section.dart';
import 'package:shopping_app_with_getx/features/shop/screen/checkout/widgets/billing_payment_section.dart';
import 'package:shopping_app_with_getx/navigation_menu.dart';
import 'package:shopping_app_with_getx/utils/constants/images.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';
import 'package:shopping_app_with_getx/utils/helpers/helper_function.dart';

import '../../../../common/widgets/buttons/app_elevated_button.dart';
import '../../../../common/widgets/textfields/promo_code.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppHelperFunction.isDarkMode(context);
    return Scaffold(
      // AppBar
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text(
          "Checkout",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),

      // body
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPadding.screenPadding,
          child: Column(
            children: [
              // Items
              AppCartItems(showAddRemoveButtons: false),
              SizedBox(height: AppSizes.spaceBtwSections),

              // Promo code - TextField
              AppPromoCoddField(),
              SizedBox(height: AppSizes.spaceBtwSections),

              // billing Section
              AppRoundedContainer(
                showBorder: true,
                backgroundColor: Colors.transparent,
                padding: EdgeInsets.all(AppSizes.md),
                child: Column(
                  children: [
                    // Amount section
                    AppBillingAmountSection(),

                    Divider(),
                    SizedBox(height: AppSizes.spaceBtwItems),
                    // payment section
                    AppBillingPaymentSection(),
                    SizedBox(height: AppSizes.spaceBtwItems),

                    // Address section
                    AppBillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: AppElevatedButton(
          onPressed:
              () => Get.to(
                () => SuccessScreen(
                  title: "Payment Success",
                  subTitle: "Your item will be Shipped Soon!",
                  image: AppImages.successfulPayment,
                  onTap: ()=> Get.offAll(()=> NavigationMenu()),
                ),
              ),
          child: Text("Checkout \$ 323"),
        ),
      ),
    );
  }
}
