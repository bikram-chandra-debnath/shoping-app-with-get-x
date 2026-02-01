import 'package:flutter/material.dart';
import 'package:shopping_app_with_getx/common/widgets/custom_shapes/primary_header_container.dart';
import 'package:shopping_app_with_getx/common/widgets/images/user_profile_logo.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';


class AppProfilePrimaryHeader extends StatelessWidget {
  const AppProfilePrimaryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // total height
        SizedBox(height: AppSizes.profilePrimaryHeaderHeight+60,),
        AppPrimaryHeaderContainer(
           height: AppSizes.profilePrimaryHeaderHeight,
          child: Container(),),
    
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Center(
              child: UserProfileLogo(),
            ),
          ),
    
         
      ],
    );
  }
}
