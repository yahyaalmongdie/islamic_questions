import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:islamic_questions/core/utils/app_routes.dart';
import 'package:islamic_questions/features/questions/presentation/view/widget/levels_gridview_item.dart';

class LevelsGridView extends StatelessWidget {
  const LevelsGridView({super.key, required this.levels});
  final List levels;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 24,
            childAspectRatio: 3.5 / 3,
            crossAxisSpacing: 24,
          ),
          itemCount: levels.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  context.push(AppRoutes.kQuestionsView, extra: levels[index]);
                },
                child: LevelsGridViewItem(
                  index: index + 1,
                ));
          }),
    );
  }
}
