import 'package:flutter/material.dart';
import 'package:islamic_questions/core/utils/app_assets.dart';
import 'package:islamic_questions/core/utils/app_colors.dart';
import 'package:islamic_questions/core/utils/app_text_styles.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: AppColors.goldColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              Assets.imagesMosque,
              fit: BoxFit.scaleDown,
              color: AppColors.blackColor,
            ),
          ),
          Text(
            title,
            style: AppTextStyles.bold16(context: context),
          ),
        ],
      ),
    );
  }
}
