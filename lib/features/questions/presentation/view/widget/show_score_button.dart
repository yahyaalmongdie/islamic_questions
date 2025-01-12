import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:islamic_questions/core/utils/app_assets.dart';
import 'package:islamic_questions/features/questions/presentation/manager/options_cubit/options_cubit.dart';
import 'package:islamic_questions/features/questions/presentation/manager/questions_cubit/questions_cubit.dart';
import 'package:islamic_questions/features/questions/presentation/view/widget/custom_arrow_widget.dart';
import 'package:islamic_questions/features/questions/presentation/view/widget/score_dailog.dart';

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
                    onPressShowAnswers: () {
                      context.pop();
                      BlocProvider.of<OptionsCubit>(context)
                          .showAllCorrectAnswers();
                    },
                    context: context,
                    score: cubit.score,
                    image: Assets.imagesScore910);
              } else if (cubit.score <= 8 && cubit.score > 6) {
                return scoreDailog(
                    onPressShowAnswers: () {
                      context.pop();
                      BlocProvider.of<OptionsCubit>(context)
                          .showAllCorrectAnswers();
                    },
                    context: context,
                    score: cubit.score,
                    image: Assets.imagesScore78);
              } else if (cubit.score <= 6 && cubit.score >= 5) {
                return scoreDailog(
                    onPressShowAnswers: () {
                      context.pop();
                      BlocProvider.of<OptionsCubit>(context)
                          .showAllCorrectAnswers();
                    },
                    context: context,
                    score: cubit.score,
                    image: Assets.imagesScore56);
              } else {
                return scoreDailog(
                    onPressShowAnswers: () {
                      context.pop();
                      BlocProvider.of<OptionsCubit>(context)
                          .showAllCorrectAnswers();
                    },
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
