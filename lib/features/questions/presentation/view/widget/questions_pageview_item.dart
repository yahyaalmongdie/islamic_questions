import 'package:flutter/material.dart';
import 'package:islamic_questions/features/questions/presentation/view/widget/next_prev_row.dart';
import 'package:islamic_questions/features/questions/presentation/view/widget/options_list.dart';
import 'package:islamic_questions/features/questions/presentation/view/widget/question_widget.dart';

class QuestionsPageViewItem extends StatelessWidget {
  const QuestionsPageViewItem(
      {super.key,
      required this.options,
      required this.question,
      required this.questionIndex,
      required this.questionsList,
      required this.correctAnswer});
  final List options;
  final String question;
  final int questionIndex, correctAnswer;
  final List questionsList;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            QuestionWidget(questionIndex: questionIndex, question: question),
            const SizedBox(
              height: 20,
            ),
            OptionsList(
              options: options,
              correctAnswer: correctAnswer,
              pageViewIndex: questionIndex,
            ),
            const SizedBox(
              height: 20,
            ),
            NextPrevRow(
              questionsList: questionsList,
         
            ),
          ],
        ),
      ),
    );
  }
}
