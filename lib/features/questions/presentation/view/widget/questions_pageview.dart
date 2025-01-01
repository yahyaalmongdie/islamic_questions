import 'package:flutter/material.dart';
import 'package:islamic_questions/features/questions/presentation/view/widget/questions_pageview_item.dart';

class QuestionsPageView extends StatelessWidget {
  const QuestionsPageView({super.key, required this.questions});
  final List questions;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(

      itemCount: questions.length,
      itemBuilder: (context, index) {
        return QuestionsPageViewItem(
          questionsList:questions,
          questionIndex: index + 1,
          question: questions[index]["question"],
          options: questions[index]["options"],
        );
      },
    );
  }
}
