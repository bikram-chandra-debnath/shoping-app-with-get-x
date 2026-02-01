import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class AppBillingAmountSection extends StatelessWidget {
  const AppBillingAmountSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // sub Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Text("Subtotla", style: Theme.of(context).textTheme.bodyMedium,),
            Text("\$343", style: Theme.of(context).textTheme.labelLarge,),

          ],
        ),
        SizedBox(height: AppSizes.spaceBtwItems/2,),

        // Shipping Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Shipping Fee", style: Theme.of(context).textTheme.bodyMedium,),
            Text("\$34", style: Theme.of(context).textTheme.labelLarge,),

          ],
        ),
        SizedBox(height: AppSizes.spaceBtwItems/2,),

        // Tax Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Tax Fee", style: Theme.of(context).textTheme.bodyMedium,),
            Text("\$3", style: Theme.of(context).textTheme.labelLarge,),

          ],
        ),
        SizedBox(height: AppSizes.spaceBtwItems/2,),

        // Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Order Total", style: Theme.of(context).textTheme.bodyMedium,),
            Text("\$389", style: Theme.of(context).textTheme.titleMedium,),

          ],
        ),
      ],
    );
  }
}
