
import 'package:flutter/cupertino.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app_with_getx/common/widgets/icons/circular_icons.dart';
import 'package:shopping_app_with_getx/common/widgets/images/user_profile_logo.dart';

class UserProfileWithEditIcon extends StatelessWidget {
  const UserProfileWithEditIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // user profile logo
        Center(child: UserProfileLogo()),
    
        // edit icons
        Positioned(
          top: 0,
          bottom: 0,
          left: 0,
          right: 0,
          child: Center(child: AppCirculraIcon(icon: Iconsax.edit)),
        ),
      ],
    );
  }
}
