import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:shopping_app_with_getx/common/style/padding.dart';
import 'package:shopping_app_with_getx/common/widgets/buttons/app_elevated_button.dart';
import 'package:shopping_app_with_getx/common/widgets/text/section_heading.dart';
import 'package:shopping_app_with_getx/features/shop/screen/product_details/widget/product_attributes.dart';
import 'package:shopping_app_with_getx/features/shop/screen/product_details/widget/product_meta_data.dart';
import 'package:shopping_app_with_getx/features/shop/screen/product_details/widget/product_thumbnail_and_slider.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';

import 'widget/bottom_add_to_cart.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //  final dark = AppHelperFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///--------[Product Image With Slider]------
            AppProductThumbnailAndSlider(),

            ///---------[Product Details]------
            Padding(
              padding: AppPadding.screenPadding,
              child: Column(
                children: [
                  /// Price, title, Stock and Brand
                  AppProductMetaData(),

                  /// Attributs
                  ///
                  AppProductAttributes(),
                  SizedBox(height: AppSizes.spaceBtwSections),

                  /// Checkout Button
                  ///
                  AppElevatedButton(onPressed: () {}, child: Text("Check Out")),
                  SizedBox(height: AppSizes.spaceBtwSections),

                  /// Description
                  AppSectionHeading(title: "Description", actionButton: false),
                  SizedBox(height: AppSizes.spaceBtwItems),

                  ReadMoreText(
                    "Sneakers are comfortable, flexible shoes with rubber soles, originally for sports but now popular for everyday casual wear, featuring breathable materials like canvas or mesh, and known for being lightweight and cushioned for extended use",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "\nShow more",
                    trimExpandedText: "\nShow less",
                    moreStyle: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w800,
                    ),
                    lessStyle: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: AppSizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),

      /// --------[Bottom Navigation]--------
      /// 
      bottomNavigationBar: AppBottomAddToCart(),
    );
  }
}
