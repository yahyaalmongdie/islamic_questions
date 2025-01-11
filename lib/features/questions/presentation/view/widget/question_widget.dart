import 'package:flutter/material.dart';
import 'package:islamic_questions/core/utils/app_colors.dart';
import 'package:islamic_questions/core/utils/app_text_styles.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({
    super.key,
    required this.questionIndex,
    required this.question,
  });

  final int questionIndex;
  final String question;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: AppColors.goldColor, borderRadius: BorderRadius.circular(16)),
      child: Text(
        "${questionIndex+1} - ${question}",
        style: AppTextStyles.bold16(context: context),
      ),
    );
  }
}
