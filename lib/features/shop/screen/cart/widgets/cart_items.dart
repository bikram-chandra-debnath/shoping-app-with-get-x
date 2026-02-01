import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/products/cart/product_quantity_with_add_remove.dart';
import '../../../../../common/widgets/text/product_price.dart';
import '../../../../../utils/constants/sizes.dart';


// ignore: must_be_immutable
class AppCartItems extends StatelessWidget {
   AppCartItems({
    super.key,
    required this.showAddRemoveButtons,
  });

  bool showAddRemoveButtons;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder:
          (BuildContext context, int index) =>
          SizedBox(height: AppSizes.spaceBtwSections),
      itemCount: 3,
      itemBuilder: (context, index) {
        return Column(
          children: [
            // cart item
            AppCartItem(),
            if (showAddRemoveButtons)SizedBox(height: AppSizes.spaceBtwItems),
            // price, counter button
            if (showAddRemoveButtons)Row(
              children: [
                // extra space
                SizedBox(width: 70),

                // quantity button
                AppProductQuantityWithAddRemove(),

                Spacer(),

                // price text
                AppProductPrice(price: "323"),
              ],
            ),
          ],
        );
      },
    );
  }
}
