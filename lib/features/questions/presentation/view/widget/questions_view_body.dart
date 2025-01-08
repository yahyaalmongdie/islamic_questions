import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic_questions/features/questions/presentation/manager/questions_cubit/questions_cubit.dart';
import 'package:islamic_questions/features/questions/presentation/view/widget/custom_appbar.dart';
import 'package:islamic_questions/features/questions/presentation/view/widget/questions_pageview.dart';

class QuestionsViewBody extends StatelessWidget {
  const QuestionsViewBody({super.key, required this.questions});

  final List questions;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocConsumer<QuestionsCubit, QuestionsState>(
          listener: (context, state) {},
          builder: (context, state) {
            return CustomAppBar(
              categoryName: "الأسئلــة",
              typeTitle:
                  "${BlocProvider.of<QuestionsCubit>(context).currentPage + 1}/${questions.length}",
            );
          },
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
