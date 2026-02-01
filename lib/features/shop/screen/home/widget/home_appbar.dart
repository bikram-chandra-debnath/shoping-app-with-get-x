import 'package:flutter/material.dart';
import 'package:shopping_app_with_getx/common/widgets/appbar/my_appbar.dart';
import 'package:shopping_app_with_getx/common/widgets/products/cart/app_cart_counter_icon.dart';
import 'package:shopping_app_with_getx/utils/constants/colors.dart';

class AppHomeAppBar extends StatelessWidget {
  const AppHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Good Morning",
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: AppColors.grey),
          ),
          Text(
            "Bikram Nath",
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: AppColors.white),
          ),
        ],
      ),
    
      actions: [AppCartCounterIcon()],
    );
  }
}
