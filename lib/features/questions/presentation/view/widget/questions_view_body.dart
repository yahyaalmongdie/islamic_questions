import 'package:flutter/material.dart';
import 'package:islamic_questions/core/utils/app_colors.dart';

class QuestionsViewBody extends StatelessWidget {
  const QuestionsViewBody({super.key, required this.questions});

  final List questions;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: questions.length,
        itemBuilder: (context, index) {
          return Text(
            questions[index]["question"],
            style: const TextStyle(color: AppColors.whiteColor),
          );
        });
  }
}
