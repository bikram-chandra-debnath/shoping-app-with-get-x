
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app_with_getx/common/widgets/layours/grid_layout.dart';
import 'package:shopping_app_with_getx/common/widgets/products/product_cards/product_cards.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';

class AppSortableProducts extends StatelessWidget {
  const AppSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Filter
        DropdownButtonFormField(
          decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value) {},
          items:
              [
                "Name",
                "Lower Price",
    
                "Higher Price",
                "Sale",
                "Newest",
              ].map((filter) {
                return DropdownMenuItem(
                  
                  value: filter,
                  child: Text(filter),
                );
              }).toList(),
        ),
        SizedBox(height: AppSizes.spaceBtwSections,),
        AppGridLayout(itemCount: 10, itemBuilder: (context,index)=> AppProductCardVerticla())
      ],
    );
  }
}
