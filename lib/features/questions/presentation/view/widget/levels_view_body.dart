import 'package:flutter/material.dart';
import 'package:islamic_questions/features/questions/presentation/view/widget/custom_appbar.dart';
import 'package:islamic_questions/features/questions/presentation/view/widget/levels_gridview.dart';

class LevelsViewBody extends StatelessWidget {
  const LevelsViewBody(
      {super.key, required this.levels, required this.categoryName});

  final List levels;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(
          categoryName: categoryName,
          typeTitle: "المســتويـات",
        ),
        Expanded(child: LevelsGridView(levels: levels))
      ],
    );
  }
}
