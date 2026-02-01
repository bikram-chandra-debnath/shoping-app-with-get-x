import "package:flutter/material.dart";
import "package:shopping_app_with_getx/common/style/padding.dart";
import "package:shopping_app_with_getx/common/widgets/appbar/my_appbar.dart";
import "package:shopping_app_with_getx/features/shop/screen/order/widgets/order_list_items.dart";


class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text(
          "My Order",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: AppPadding.screenPadding,
        child: AppOrderListItems(),
      ),
    );
  }
}
