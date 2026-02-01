import 'package:flutter/material.dart';
import 'package:shopping_app_with_getx/common/widgets/text/section_heading.dart';
import 'package:shopping_app_with_getx/utils/constants/colors.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';

class AppBillingAddressSection extends StatelessWidget {
  const AppBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
AppSectionHeading(title: "Billing Address", buttonTitle: "Change",onPressed: (){},),
        Text("Bikram nath", style: Theme.of(context).textTheme.bodyLarge,),

        SizedBox(height: AppSizes.spaceBtwItems/2,),
        
        Row(
          children: [
            Icon(Icons.phone,size:  AppSizes.iconsm,color: AppColors.darkGrey, ),
            SizedBox(width: AppSizes.spaceBtwItems,),
            Text("+880123456789"),
          ],
        ),
SizedBox(height: AppSizes.spaceBtwItems/2,),
        Row(
          children: [
            Icon(Icons.location_history,size:  AppSizes.iconsm,color: AppColors.darkGrey, ),
            SizedBox(width: AppSizes.spaceBtwItems,),
            Expanded(child: Text("House No.295, noakhali, Chattogram", softWrap: true,)),
          ],
        )

      ],
    );
  }
}
