import 'package:flutter/material.dart';
import 'package:islamic_questions/features/questions/presentation/view/widget/questions_view_body.dart';

class QuestionsView extends StatelessWidget {
  const QuestionsView({super.key, required this.questions});
  final List questions;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: QuestionsViewBody(
        questions: questions,
      ),
    );
  }
}
