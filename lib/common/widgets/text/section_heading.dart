import 'package:flutter/material.dart';
import 'package:shopping_app_with_getx/utils/constants/texts.dart';

class AppSectionHeading extends StatelessWidget {
  const AppSectionHeading({
    super.key,
    required this.title,
    this.buttonTitle = AppTexts.viewAll,
    this.onPressed,  this.actionButton=true,
  });

  final String title, buttonTitle;
  final VoidCallback? onPressed;
  final bool actionButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      if( actionButton) TextButton(
          onPressed: onPressed,
          child: Text(
            buttonTitle,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
