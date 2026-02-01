import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app_with_getx/common/widgets/appbar/tab_bar.dart';
import 'package:shopping_app_with_getx/common/widgets/brands/brand_card.dart';
import 'package:shopping_app_with_getx/common/widgets/text/section_heading.dart';
import 'package:shopping_app_with_getx/features/shop/screen/brands/all_brands_screen.dart';
import 'package:shopping_app_with_getx/features/shop/screen/store/widgets/categori_tab.dart';
import 'package:shopping_app_with_getx/features/shop/screen/store/widgets/store_primary_header.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';
import 'package:shopping_app_with_getx/utils/constants/texts.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: 340,
                pinned: true,
                floating: false,
                flexibleSpace: SingleChildScrollView(
                  child: Column(
                    children: [
                      // primary header
                      AppStorePrimaryHeader(),
                      SizedBox(height: AppSizes.spaceBtwItems),
                      // Brands heading
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSizes.defaultSpace,
                        ),
                        child: Column(
                          children: [
                            // section Heading
                            AppSectionHeading(
                              title: AppTexts.brands,
                              onPressed: ()=> Get.to(()=> AllBrandsScreen()),
                            ),
                            // brand card
                            SizedBox(
                              height: 70.0,
                              child: ListView.separated(
                                separatorBuilder:
                                    (context, index) =>
                                        SizedBox(width: AppSizes.spaceBtwItems),

                                itemCount: 10,
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,

                                itemBuilder: (context, index) {
                                  return SizedBox(width: AppSizes.brandCardWidth , child: AppBrandCard());
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                bottom: AppTabBar(
                  tabs: [
                    Tab(child: Text("Sports")),
                    Tab(child: Text("Furniture")),
                    Tab(child: Text("Electronics")),
                    Tab(child: Text("Clothes")),
                    Tab(child: Text("Cosmetics")),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              AppCategoriTab(),
              AppCategoriTab(),
              AppCategoriTab(),
              AppCategoriTab(),
              AppCategoriTab(),
            ],
          ),
        ),
      ),
    );
  }
}
