import 'package:flutter/material.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';

class AppGridLayout extends StatelessWidget {
  const AppGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent=288,
    required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget Function(BuildContext context, int index) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 items per row
          mainAxisExtent: mainAxisExtent,
          crossAxisSpacing: AppSizes.gridViewSpacing,
          mainAxisSpacing: AppSizes.gridViewSpacing,
        ),
        itemCount: itemCount, // add item count
        itemBuilder: itemBuilder,
      ),
    );
  }
}
