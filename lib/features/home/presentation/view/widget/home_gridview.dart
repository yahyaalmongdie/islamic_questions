import 'package:flutter/material.dart';
import 'package:islamic_questions/features/home/presentation/view/widget/grideview_item.dart';

class HomeGrideView extends StatelessWidget {
  const HomeGrideView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.count(
      crossAxisCount: 2,
      mainAxisSpacing: 24,
      childAspectRatio: 3 / 2,
      crossAxisSpacing: 24,
      children: [
        const GridViewItem(title: "الانبياء"),
        const GridViewItem(title: "القران الكريم "),
        const GridViewItem(title: "الصحابة"),
        const GridViewItem(title: "الفقه"),
        const GridViewItem(title: "الحديث"),
        const GridViewItem(title: "السيرة النبوية"),
      ],
    );
  }
}
