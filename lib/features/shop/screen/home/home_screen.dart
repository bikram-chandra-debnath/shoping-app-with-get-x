import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app_with_getx/common/widgets/layours/grid_layout.dart';
import 'package:shopping_app_with_getx/common/widgets/products/product_cards/product_cards.dart';
import 'package:shopping_app_with_getx/common/widgets/text/section_heading.dart';
import 'package:shopping_app_with_getx/common/widgets/textfields/search_bar.dart';
import 'package:shopping_app_with_getx/features/shop/controller/home/home_controller.dart';
import 'package:shopping_app_with_getx/features/shop/screen/all_products/all_products_screen.dart';
import 'package:shopping_app_with_getx/features/shop/screen/home/widget/home_appbar.dart';
import 'package:shopping_app_with_getx/features/shop/screen/home/widget/home_categories.dart';
import 'package:shopping_app_with_getx/common/widgets/custom_shapes/primary_header_container.dart';
import 'package:shopping_app_with_getx/features/shop/screen/home/widget/promo_slider.dart';
import 'package:shopping_app_with_getx/utils/constants/images.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';
import 'package:shopping_app_with_getx/utils/constants/texts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final controller = Get.put(HomeController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ------[Upper part]-----
            Stack(
              children: [
                SizedBox(height: AppSizes.homePrimaryHeaderHeight + 20),

                // primary header container
                AppPrimaryHeaderContainer(
                  height: AppSizes.homePrimaryHeaderHeight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // appbar
                      AppHomeAppBar(),

                      SizedBox(height: AppSizes.spaceBtwSections),

                      // new category
                      AppHomeCategories(),
                    ],
                  ),
                ),

                // search bar
                AppSearchBar(),

                //
              ],
            ),

            // ------[Lower part]-----
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  // promotion slider
                  AppPromoSlider(
                    banners: [
                      AppImages.banner1,
                      AppImages.banner2,
                      AppImages.banner3,
                      AppImages.banner4,
                    ],
                  ),
                  SizedBox(height: AppSizes.spaceBtwSections),

                  // Section heading
                  AppSectionHeading(
                    title: AppTexts.popularProducts,
                    onPressed: () => Get.to(()=> AllProductsScreen()),
                  ),

                  SizedBox(height: AppSizes.spaceBtwItems),

                  // Grid view of vertical product Card
                  AppGridLayout(
                    itemCount: 11,
                    itemBuilder: (BuildContext context, int index) {
                      return AppProductCardVerticla();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
