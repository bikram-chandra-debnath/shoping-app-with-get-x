
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app_with_getx/common/widgets/text/section_heading.dart';
import 'package:shopping_app_with_getx/features/personalization/screens/edit_profile/widgets/user_detailes_row.dart';
import 'package:shopping_app_with_getx/utils/constants/texts.dart';

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Profile section heading
    AppSectionHeading(
      title: AppTexts.profileSettings,
      actionButton: false,
    ),
    
    UserDetailsRow(
      title: AppTexts.userID,
      value: "10303342",
      icon: Iconsax.copy,
      onTap: () {},
    ),
    UserDetailsRow(
      title: AppTexts.email,
      value: "bikramnath83@gmail.com",
      onTap: () {},
    ),
    UserDetailsRow(
      title: AppTexts.phoneNumber,
      value: "+8801943705332",
      onTap: () {},
    ),
    UserDetailsRow(title: AppTexts.gender, value: "Male", onTap: () {}),
      ],
    );
  }
}
