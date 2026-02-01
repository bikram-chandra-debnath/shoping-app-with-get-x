import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:iconsax/iconsax.dart";
import "package:shopping_app_with_getx/common/style/padding.dart";
import "package:shopping_app_with_getx/common/widgets/appbar/my_appbar.dart";
import "package:shopping_app_with_getx/features/personalization/screens/address/widgets/single_address.dart";
import "package:shopping_app_with_getx/utils/constants/sizes.dart";

import "../../../../utils/constants/colors.dart";
import "add_new_address.dart";

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // -----[AppBar]------
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text(
          "Address",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      // -----[Body]------
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPadding.screenPadding,
          child: Column(

            children: [
              AppSingleAddress(
                isSelected: true,
              ),
              SizedBox(
                height: AppSizes.spaceBtwItems,
              ),
              AppSingleAddress(
                isSelected: false,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(

        onPressed: ()=> Get.to(()=> AddNewAddress()),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,

        child: Icon(Iconsax.add),),
    );
  }
}
