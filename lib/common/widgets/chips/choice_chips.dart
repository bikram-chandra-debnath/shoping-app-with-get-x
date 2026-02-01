import 'package:flutter/material.dart';
import 'package:shopping_app_with_getx/common/widgets/custom_shapes/circuler_container.dart';
import 'package:shopping_app_with_getx/utils/constants/colors.dart';
import 'package:shopping_app_with_getx/utils/helpers/helper_function.dart';

class AppChoiceChip extends StatelessWidget {
  const AppChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    required this.onSelected,
  });
  final String text;
  final bool selected;
  final Function(bool?) onSelected;
  @override
  Widget build(BuildContext context) {
    bool isColor = AppHelperFunction.getColor(text) != null;
    bool dark = AppHelperFunction.isDarkMode(context);

    return ChoiceChip(
      label: isColor ? SizedBox() : Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? AppColors.white : dark?AppColors.white: AppColors.black),
      shape: isColor ? CircleBorder() : null,
      padding: isColor ? EdgeInsets.zero : null,
      labelPadding: isColor? EdgeInsets.zero:null,
      avatar:
          isColor
              ? AppCircularContainer(
                width: 50,
                height: 50,
                backgroundColor: AppHelperFunction.getColor(text)!,
              )
              : null,
      backgroundColor: isColor ? AppHelperFunction.getColor(text) : null,
    );
  }
}
