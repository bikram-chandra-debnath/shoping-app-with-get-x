import 'package:flutter/material.dart';
import 'package:shopping_app_with_getx/common/style/padding.dart';
import 'package:shopping_app_with_getx/common/widgets/appbar/my_appbar.dart';
import 'package:shopping_app_with_getx/common/widgets/brands/brand_card.dart';
import 'package:shopping_app_with_getx/common/widgets/products/sortable_product.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text(
          
          "Bata", style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: AppPadding.screenPadding, child: Column(children: [
          AppBrandCard(), 
          SizedBox(height: AppSizes.spaceBtwSections,),
          AppSortableProducts(),
        ],),),
      ),
    );
  }
}