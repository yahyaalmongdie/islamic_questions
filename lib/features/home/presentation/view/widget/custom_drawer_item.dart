import 'package:flutter/material.dart';
import 'package:islamic_questions/core/utils/app_colors.dart';
import 'package:islamic_questions/core/utils/app_text_styles.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem(
      {super.key,
      required this.title,
      required this.icon,
      required this.onPress});

  final String title;
  final IconData icon;
  final Function() onPress;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Icon(
        icon,
        size: 25,
        color: AppColors.whiteColor,
      ),
      title: Text(
        title,
        style: AppTextStyles.medium15(context: context)
            .copyWith(color: AppColors.whiteColor),
      ),
    );
  }
}
