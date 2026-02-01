
import 'package:flutter/material.dart';
import 'package:shopping_app_with_getx/common/widgets/text/section_heading.dart';
import 'package:shopping_app_with_getx/features/personalization/screens/edit_profile/widgets/user_detailes_row.dart';
import 'package:shopping_app_with_getx/utils/constants/texts.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
                  // account settings heading
                  AppSectionHeading(
                    title: AppTexts.accountSettigs,
                    actionButton: false,
                  ),
    
                  UserDetailsRow(title: AppTexts.name, value: "Bikram nath", onTap: () {}),
                  UserDetailsRow(
                    title:AppTexts.userName,
                    value: "bikramnath83",
                    onTap: () {},
                  ),
    
                  
      ],
    );
  }
}
