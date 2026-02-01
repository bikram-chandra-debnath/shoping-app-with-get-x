import 'package:flutter/material.dart';
import 'package:shopping_app_with_getx/common/widgets/appbar/my_appbar.dart';
import 'package:shopping_app_with_getx/common/widgets/products/cart/app_cart_counter_icon.dart';
import 'package:shopping_app_with_getx/common/widgets/textfields/search_bar.dart';
import 'package:shopping_app_with_getx/common/widgets/custom_shapes/primary_header_container.dart';
import 'package:shopping_app_with_getx/utils/constants/colors.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';
import 'package:shopping_app_with_getx/utils/constants/texts.dart';


class AppStorePrimaryHeader extends StatelessWidget {
  const AppStorePrimaryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(height: AppSizes.storePrimaryHeaderHeight + 20),
    
        // primary header container
        AppPrimaryHeaderContainer(
          height: AppSizes.storePrimaryHeaderHeight,
          child: MyAppBar(
            title: Text(
              AppTexts.store,
              style: Theme.of(context).textTheme.headlineMedium!
                  .apply(color: AppColors.white),
            ),
            actions: [AppCartCounterIcon()],
          ),
        ),
    
        // search bar
        AppSearchBar(),
    
        //
      ],
    );
  }
}
