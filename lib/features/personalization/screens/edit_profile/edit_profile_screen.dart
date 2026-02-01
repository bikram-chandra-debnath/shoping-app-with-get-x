import 'package:flutter/material.dart';
import 'package:shopping_app_with_getx/common/style/padding.dart';
import 'package:shopping_app_with_getx/common/widgets/appbar/my_appbar.dart';
import 'package:shopping_app_with_getx/features/personalization/screens/edit_profile/widgets/account_settings.dart';
import 'package:shopping_app_with_getx/features/personalization/screens/edit_profile/widgets/profile_settings.dart';
import 'package:shopping_app_with_getx/features/personalization/screens/edit_profile/widgets/user_profile_with_edit_icon.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';
import 'package:shopping_app_with_getx/utils/constants/texts.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text(
          AppTexts.editProfile,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: AppPadding.screenPadding,
          child: Column(
            children: [
              // User profile with edit icon
              UserProfileWithEditIcon(),
              SizedBox(height: AppSizes.spaceBtwSections),

              Divider(),

              SizedBox(height: AppSizes.spaceBtwItems),

              // Account Settings
              AccountSettings(),
              SizedBox(height: AppSizes.spaceBtwItems),

              Divider(),

              SizedBox(height: AppSizes.spaceBtwItems),

              // Profile Settings
              ProfileSettings(),

              SizedBox(height: AppSizes.spaceBtwItems),

              Divider(),

              SizedBox(height: AppSizes.spaceBtwItems),

              // Account close Button
              TextButton(
                onPressed: () {},
                child: Text(
                  AppTexts.closeAccount,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium!.apply(color: Colors.red),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
