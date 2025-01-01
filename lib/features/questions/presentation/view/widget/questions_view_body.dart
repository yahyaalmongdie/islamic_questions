import 'package:flutter/material.dart';
import 'package:islamic_questions/features/questions/presentation/view/widget/custom_appbar.dart';
import 'package:islamic_questions/features/questions/presentation/view/widget/questions_pageview.dart';

class QuestionsViewBody extends StatelessWidget {
  const QuestionsViewBody({super.key, required this.questions});

  final List questions;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(
          categoryName: "الأسئلــة",
          typeTitle: "3/10",
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: QuestionsPageView(
            questions: questions,
          ),
        ))
      ],
    );
  }
}
