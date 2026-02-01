import 'package:flutter/material.dart';
import 'package:shopping_app_with_getx/common/widgets/text/section_heading.dart';
import 'package:shopping_app_with_getx/utils/constants/colors.dart';
import 'package:shopping_app_with_getx/utils/constants/images.dart';
import '../../../../../common/widgets/custom_shapes/rounded_container.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';

class AppBillingPaymentSection extends StatelessWidget {
  const AppBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Column(
      children: [
        AppSectionHeading(
          title: "Payment Method",
          buttonTitle: "Change",
          onPressed: () {},
        ),
        SizedBox(height: AppSizes.spaceBtwItems / 2),

        Row(
          children: [
            // payment icon
            AppRoundedContainer(
              padding: EdgeInsets.all(AppSizes.sm),
              width: 60,
              height: 35,
              backgroundColor: dark ? AppColors.lightGrey : AppColors.white,
              child: Image(
                image: AssetImage(AppImages.googlePay),
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(width: AppSizes.spaceBtwItems/2),
// payment name
            Text("GooglePay", style: Theme.of(context).textTheme.bodyLarge,)
          ],
        )
      ],
    );
  }
}
