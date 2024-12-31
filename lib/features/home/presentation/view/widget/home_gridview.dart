import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:islamic_questions/core/utils/app_routes.dart';
import 'package:islamic_questions/features/home/presentation/view/widget/grideview_item.dart';
import 'package:islamic_questions/features/questions/data/questions_list_data.dart';

class HomeGrideView extends StatelessWidget {
  const HomeGrideView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: questions.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 24,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 24,
      ),
      itemBuilder: (context, index) {
        return GridViewItem(
            onTap: () {
              context.push(AppRoutes.kLevelsiew, extra: {
                "levels": questions[index]["levels"],
                "categoryName": questions[index]["category"]
              });
            },
            title: questions[index]["category"]);
      },
      // children: [
      //   const GridViewItem(title: "الانبياء"),
      //   const GridViewItem(title: "القران الكريم "),
      //   const GridViewItem(title: "الصحابة"),
      //   const GridViewItem(title: "الفقه"),
      //   const GridViewItem(title: "الحديث"),
      //   const GridViewItem(title: "السيرة النبوية"),
      // ],
    );
  }
}
