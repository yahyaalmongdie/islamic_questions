import 'package:flutter/material.dart';
import 'package:islamic_questions/core/utils/app_colors.dart';

class CustomArrowWidget extends StatelessWidget {
  const CustomArrowWidget({super.key, this.onPressed, required this.iconData});

  final Function()? onPressed;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        iconData,
        size: 20,
        color: AppColors.blackColor,
      ),
    );
  }
}
