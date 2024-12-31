import 'package:flutter/material.dart';
import 'package:islamic_questions/features/questions/presentation/view/widget/levels_view_body.dart';

class LevelsView extends StatelessWidget {
  const LevelsView(
      {super.key, required this.levels, required this.categoryName});

  final List levels;
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
            child: LevelsViewBody(
          categoryName: categoryName,
          levels: levels,
        )),
      ),
    );
  }
}
