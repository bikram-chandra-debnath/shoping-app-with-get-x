
import 'package:flutter/material.dart';
import 'package:shopping_app_with_getx/common/widgets/custom_shapes/circuler_container.dart';
import 'package:shopping_app_with_getx/common/widgets/custom_shapes/rounded_edge_container.dart';
import 'package:shopping_app_with_getx/utils/constants/colors.dart';
import 'package:shopping_app_with_getx/utils/helpers/device_helpers.dart';

class AppPrimaryHeaderContainer extends StatelessWidget {
  const AppPrimaryHeaderContainer({
    super.key,required this.child, required this.height,
  });

  final Widget child;
  final double height;

  @override
  Widget build(BuildContext context) {
    return AppRoundedEdgeContainer(
      child: Container(
        height: height,
        width: double.infinity,
        color: AppColors.primary,
        child: Stack(
          children: [
      
            // Circular container
            Positioned(
              top: -160,
              right: -150,
              child: AppCircularContainer(
                height: AppDeviceHelper.getScreenHeight(context) * 0.4,
                width: AppDeviceHelper.getScreenHeight(context) * 0.4,
                backgroundColor: AppColors.white.withValues(alpha: 0.1),
              ),
            ),
      
            // Circular container
            Positioned(
              top: 50,
              right: -250,
              child: AppCircularContainer(
                height: AppDeviceHelper.getScreenHeight(context) * 0.4,
                width:AppDeviceHelper.getScreenHeight(context) * 0.4,
                backgroundColor: AppColors.white.withValues(alpha: 0.1),
              ),
            ),
            child
          ],
        ),
      ),
    );
  }
}
