import 'package:flutter/material.dart';
import 'package:islamic_questions/core/shared/sustom_bottom_navigation_bar.dart';
import 'package:islamic_questions/features/questions/presentation/view/widget/questions_view_body.dart';

class QuestionsView extends StatelessWidget {
  const QuestionsView({super.key, required this.questions});
  final List questions;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          body: SafeArea(
            child: QuestionsViewBody(
              questions: questions,
            ),
          ),
          bottomNavigationBar: const CustomBottomNavigationBar()),
    );
  }
}
