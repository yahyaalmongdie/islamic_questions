import 'package:flutter/material.dart';
import 'package:islamic_questions/core/utils/app_colors.dart';
import 'package:islamic_questions/core/utils/app_text_styles.dart';

class LevelsGridViewItem extends StatelessWidget {
  const LevelsGridViewItem({super.key, required this.index});

  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
          color: AppColors.goldColor, borderRadius: BorderRadius.circular(24)),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color(0xff202020),
                  const Color(0xffB19768),
                ]),
            borderRadius: BorderRadius.circular(24)),
        child: Text(
          "$index",
          style: AppTextStyles.bold28(context: context),
        ),
      ),
    );
  }
}
