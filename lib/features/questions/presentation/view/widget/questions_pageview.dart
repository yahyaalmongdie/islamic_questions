import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic_questions/features/questions/presentation/manager/questions_cubit/questions_cubit.dart';
import 'package:islamic_questions/features/questions/presentation/view/widget/questions_pageview_item.dart';

class QuestionsPageView extends StatefulWidget {
  const QuestionsPageView({super.key, required this.questions});
  final List questions;

  @override
  State<QuestionsPageView> createState() => _QuestionsPageViewState();
}

class _QuestionsPageViewState extends State<QuestionsPageView> {
  @override
  void initState() {
    BlocProvider.of<QuestionsCubit>(context).pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: const NeverScrollableScrollPhysics(),
      controller: BlocProvider.of<QuestionsCubit>(context).pageController,
      onPageChanged: (value) {
        BlocProvider.of<QuestionsCubit>(context)
            .onChangePage(index: value);
      },
      itemCount: widget.questions.length,
      itemBuilder: (context, index) {
        return QuestionsPageViewItem(
          questionsList: widget.questions,
          questionIndex: index + 1,
          correctAnswer:widget.questions[index]["correctAnswer"],
          question: widget.questions[index]["question"],
          options: widget.questions[index]["options"],
        );
      },
    );
  }
}
