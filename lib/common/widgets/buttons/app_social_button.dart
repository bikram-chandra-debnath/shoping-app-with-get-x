import 'package:flutter/material.dart';

import '../../../utils/constants/images.dart';
import '../../../utils/constants/sizes.dart';

class AppSocialButtons extends StatelessWidget {
  const AppSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Googel
        buildButton(AppImages.googleIcon, () {}),

        SizedBox(width: AppSizes.spaceBtwItems),

        // facebook
        buildButton(AppImages.facebookIcon, (){}),
      ],
    );
  }

  Container buildButton( String image, VoidCallback onPressed ) {
    return Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(100),
        ),
        child: IconButton(
          onPressed: onPressed,
          icon: Image.asset(
            image,
            height: AppSizes.iconmd,
            width: AppSizes.iconmd,
          ),
        ),
      );
  }
}
