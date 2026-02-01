import "package:flutter/material.dart";
import "package:iconsax/iconsax.dart";
import "package:shopping_app_with_getx/common/style/padding.dart";
import "package:shopping_app_with_getx/common/widgets/buttons/app_elevated_button.dart";
import "package:shopping_app_with_getx/utils/constants/sizes.dart";

import "../../../../common/widgets/appbar/my_appbar.dart";

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // -----[AppBar]------
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text(
          "Add New Address",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding( padding: AppPadding.screenPadding,
          child: Column(
            children:[
              // name
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.user),
                  labelText: "Name",
                ),
              ),
              SizedBox(height: AppSizes.spaceBtwInputFields,),
              // Phone number
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.mobile),
                  labelText: "Phone Number",
                ),
              ),
              SizedBox(height: AppSizes.spaceBtwInputFields,),
// street and postal code
              Row(
                children: [
                  // street
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.buliding3),
                        labelText: "Street",
                      ),
                    ),
                  ),
                  SizedBox(width: AppSizes.spaceBtwInputFields,),
                  // postal code
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.code),
                        labelText: "Postal Code",
                      ),
                    ),
                  ),
                ],
              ),

SizedBox(height: AppSizes.spaceBtwInputFields,),
// city and state
              Row(
                children: [
                  // City
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.buliding),
                        labelText: "City",
                      ),
                    ),
                  ),
                  SizedBox(width: AppSizes.spaceBtwInputFields,),
                  // State
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.activity),
                        labelText: "State",
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: AppSizes.spaceBtwInputFields,),

              // country
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.global),
                  labelText: "Country",
                ),
              ),
              SizedBox(height: AppSizes.spaceBtwSections,),
              // save button
              AppElevatedButton(onPressed: (){}, child: Text("Save"))
            ]
          ),)

      ) ,
    );
  }
}
