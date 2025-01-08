import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic_questions/core/utils/app_colors.dart';
import 'package:islamic_questions/core/utils/app_text_styles.dart';
import 'package:islamic_questions/features/questions/presentation/manager/questions_cubit/questions_cubit.dart';
import 'package:islamic_questions/features/questions/presentation/view/widget/custom_arrow_widget.dart';

class NextPrevRow extends StatelessWidget {
  const NextPrevRow(
      {super.key, required this.questionsList});
  final List questionsList;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: AppColors.goldColor, borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          BlocConsumer<QuestionsCubit, QuestionsState>(
            listener: (context, state) {

            },
            builder: (context, state) {
              return Visibility(
                visible:
                    BlocProvider.of<QuestionsCubit>(context).showPreviousArrow,
                child: CustomArrowWidget(
                  onPressed: () {
                    BlocProvider.of<QuestionsCubit>(context)
                        .onPressedPrevious(
                          index: BlocProvider.of<QuestionsCubit>(context).currentPage 
                        );
                  },
                  iconData: Icons.arrow_back_ios,
                ),
              );
            },
          ),
          BlocConsumer<QuestionsCubit, QuestionsState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              return Visibility(
                visible:
                    BlocProvider.of<QuestionsCubit>(context).showPreviousArrow,
                child: Text(
                  "السابق",
                  style: AppTextStyles.regular16(context: context),
                ),
              );
            },
          ),
          const Spacer(),
          BlocConsumer<QuestionsCubit, QuestionsState>(
            listener: (context, state) {},
            builder: (context, state) {
              return Visibility(
                visible: BlocProvider.of<QuestionsCubit>(context).showNextArrow,
                child: Text(
                  "التالي",
                  style: AppTextStyles.regular16(context: context),
                ),
              );
            },
          ),
          BlocConsumer<QuestionsCubit, QuestionsState>(
            listener: (context, state) {},
            builder: (context, state) {
              return Visibility(
                visible: BlocProvider.of<QuestionsCubit>(context).showNextArrow,
                child: CustomArrowWidget(
                  onPressed: () {
                    BlocProvider.of<QuestionsCubit>(context)
                        .onPressNext(questions: questionsList);
                  },
                  iconData: Icons.arrow_forward_ios,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
