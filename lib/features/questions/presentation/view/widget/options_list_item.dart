import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic_questions/core/utils/app_text_styles.dart';
import 'package:islamic_questions/features/questions/presentation/manager/options_cubit/options_cubit.dart';

class OptionsListItem extends StatelessWidget {
  const OptionsListItem({
    super.key,
    required this.options,
    required this.correctAnswer,
  });

  final List options;
  final int correctAnswer;

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
                  title: Text(
                    options[index],
                    style: AppTextStyles.bold16(context: context),
                  ),
                  value: index + 1,
                  groupValue:
                      BlocProvider.of<OptionsCubit>(context).chooseOption,
                  onChanged: (value) {
                    BlocProvider.of<OptionsCubit>(context)
                        .onChangeOption(index: value!);
                    print(value);
                  });
            },
          );
        })
      ]),
    );
  }
}
