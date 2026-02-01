import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app_with_getx/common/style/padding.dart';
import 'package:shopping_app_with_getx/common/widgets/appbar/my_appbar.dart';
import 'package:shopping_app_with_getx/common/widgets/brands/brand_card.dart';
import 'package:shopping_app_with_getx/common/widgets/layours/grid_layout.dart';
import 'package:shopping_app_with_getx/common/widgets/text/section_heading.dart';
import 'package:shopping_app_with_getx/features/shop/screen/brands/brand_products.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text("Brand", style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPadding.screenPadding,
          child: Column(
            children: [
              // [Text]- Brands
              AppSectionHeading(title: "Brands", actionButton: false),
              SizedBox(height: AppSizes.spaceBtwItems),

              // List of Brands
              AppGridLayout(
                mainAxisExtent: 80,
                itemCount: 10,
                itemBuilder: (context, index) => AppBrandCard( onTap: ()=>Get.to(()=>BrandProducts() ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
