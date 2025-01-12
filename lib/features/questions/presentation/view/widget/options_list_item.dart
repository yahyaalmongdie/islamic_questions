import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic_questions/core/utils/app_text_styles.dart';
import 'package:islamic_questions/features/questions/presentation/manager/options_cubit/options_cubit.dart';

class OptionsListItem extends StatelessWidget {
  const OptionsListItem({
    super.key,
    required this.options,
    required this.correctAnswer,
    required this.pageViewIndex,
  });

  final List options;
  final int correctAnswer;
  final int pageViewIndex;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
        ...List.generate(options.length, (index) {
          return BlocConsumer<OptionsCubit, OptionsState>(
            listener: (context, state) {},
            builder: (context, state) {
              return RadioListTile(
                  secondary: Visibility(
                      visible: BlocProvider.of<OptionsCubit>(context)
                          .showCorrectAnswers,
                      child: index == correctAnswer
                          ? Icon(
                              Icons.check_circle,
                              color: Colors.green[900],
                              size: 20,
                            )
                          : const SizedBox()),
                  fillColor: WidgetStateProperty.all(Colors.green[900]),
                  title: Text(
                    options[index],
                    style: AppTextStyles.bold16(context: context),
                  ),
                  value: index + 1,
                  groupValue: BlocProvider.of<OptionsCubit>(context)
                      .selectedOptions[pageViewIndex],
                  onChanged: (value) {
                    BlocProvider.of<OptionsCubit>(context).onChangeOption(
                        pageViewIndex: pageViewIndex, value: value!);

                    BlocProvider.of<OptionsCubit>(context).countScore(
                        pageViewIndex: pageViewIndex,
                        coorectAnswer: correctAnswer,
                        answerIndex: index);
                  });
            },
          );
        })
      ]),
    );
  }
}
