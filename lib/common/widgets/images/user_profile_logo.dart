import 'package:flutter/material.dart';
import 'package:shopping_app_with_getx/common/widgets/images/circular_image.dart';
import 'package:shopping_app_with_getx/utils/constants/images.dart';


class UserProfileLogo extends StatelessWidget {
  const UserProfileLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppCircularImage(
      height: 120,
      width: 120,
      borderWidth: 5.0,
      padding: 0,
      image: AppImages.userProfile);
  }
}
