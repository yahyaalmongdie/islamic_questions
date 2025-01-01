import 'package:flutter/material.dart';
import 'package:islamic_questions/core/utils/app_text_styles.dart';

class OptionsListItem extends StatelessWidget {
  const OptionsListItem({
    super.key,
    required this.options,
  });

  final List options;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
        ...List.generate(options.length, (index) {
          return RadioListTile(
              title: Text(
                options[index],
                style: AppTextStyles.bold16(context: context),
              ),
              value: index + 1,
              groupValue: 1,
              onChanged: (value) {});
        })
      ]),
    );
  }
}
