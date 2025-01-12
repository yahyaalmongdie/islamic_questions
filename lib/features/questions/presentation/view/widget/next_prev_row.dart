import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic_questions/core/utils/app_assets.dart';
import 'package:islamic_questions/core/utils/app_colors.dart';
import 'package:islamic_questions/core/utils/app_text_styles.dart';
import 'package:islamic_questions/features/questions/presentation/manager/options_cubit/options_cubit.dart';
import 'package:islamic_questions/features/questions/presentation/manager/questions_cubit/questions_cubit.dart';
import 'package:islamic_questions/features/questions/presentation/view/widget/custom_arrow_widget.dart';
import 'package:islamic_questions/features/questions/presentation/view/widget/score_dailog.dart';

class NextPrevRow extends StatelessWidget {
  const NextPrevRow({super.key, required this.questionsList});
  final List questionsList;

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: AppColors.goldColor, borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          BlocConsumer<QuestionsCubit, QuestionsState>(
            listener: (context, state) {},
            builder: (context, state) {
              return Visibility(
                visible:
                    BlocProvider.of<QuestionsCubit>(context).showPreviousArrow,
                child: CustomArrowWidget(
                  onPressed: () {
                    BlocProvider.of<QuestionsCubit>(context).onPressedPrevious(
                        index: BlocProvider.of<QuestionsCubit>(context)
                            .currentPage);
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
                visible:
                    BlocProvider.of<QuestionsCubit>(context).showScoreButton,
                child: Text(
                  "عرض الدرجة",
                  style: AppTextStyles.regular16(context: context).copyWith(
                      color: Colors.red[900], fontWeight: FontWeight.bold),
                ),
              );
            },
          ),
          const ShowScoreButton(),
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

class ShowScoreButton extends StatelessWidget {
  const ShowScoreButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QuestionsCubit, QuestionsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Visibility(
          visible: BlocProvider.of<QuestionsCubit>(context).showScoreButton,
          child: CustomArrowWidget(
            onPressed: () {
              var cubit = BlocProvider.of<OptionsCubit>(context);
              if (cubit.score > 8) {
                return scoreDailog(
                    context: context,
                    score: cubit.score,
                    image: Assets.imagesScore910);
              } else if (cubit.score <= 8 && cubit.score > 6) {
                return scoreDailog(
                    context: context,
                    score: cubit.score,
                    image: Assets.imagesScore78);
              } else if (cubit.score <= 6 && cubit.score >= 5) {
                return scoreDailog(
                    context: context,
                    score: cubit.score,
                    image: Assets.imagesScore56);
              } else {
                return scoreDailog(
                    context: context,
                    score: cubit.score,
                    image: Assets.imagesScore14);
              }
            },
            iconData: Icons.arrow_forward_ios,
          ),
        );
      },
    );
  }
}
