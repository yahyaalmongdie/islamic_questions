import 'package:flutter/material.dart';
import 'package:islamic_questions/core/utils/app_colors.dart';
import 'package:islamic_questions/core/utils/app_text_styles.dart';
import 'package:islamic_questions/features/questions/presentation/view/widget/custom_arrow_widget.dart';

class NextPrevRow extends StatelessWidget {
  const NextPrevRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: AppColors.goldColor, borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          CustomArrowWidget(
            onPressed: () {},
            iconData: Icons.arrow_back_ios,
          ),
          Text(
            "السابق",
            style: AppTextStyles.regular16(context: context),
          ),
          const Spacer(),
          Text(
            "التالي",
            style: AppTextStyles.regular16(context: context),
          ),
          CustomArrowWidget(
            onPressed: () {},
            iconData: Icons.arrow_forward_ios,
          ),
        ],
      ),
    );
  }
}
