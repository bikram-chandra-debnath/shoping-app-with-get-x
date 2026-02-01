import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';
import '../custom_shapes/rounded_container.dart';


class AppPromoCoddField extends StatelessWidget {
  const AppPromoCoddField({
    super.key,
  });


  @override
  Widget build(BuildContext context) {

    final dark = AppHelperFunction.isDarkMode(context);
    return AppRoundedContainer(
      showBorder: true,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.only(
        left: AppSizes.md,
        top: AppSizes.md,
        right: AppSizes.sm,
        bottom: AppSizes.sm,
      ),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                hintText: "Have a promo code? Enter here",
              ),
            ),
          ),
          SizedBox(
            width: 80.0,
            child: ElevatedButton(
              onPressed: (){},

              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.withValues(alpha: 0.5),
                  foregroundColor:
                  dark
                      ? AppColors.white.withValues(alpha: 0.5)
                      : AppColors.dark.withValues(alpha: 0.5),
                  side: BorderSide(
                    color: Colors.grey.withValues(alpha: 0.1),
                  )
              ),
              child: Text("Apply"),
            ),
          ),
        ],
      ),
    );
  }
}
