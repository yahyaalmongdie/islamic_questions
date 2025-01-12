import 'package:flutter/material.dart';
import 'package:islamic_questions/core/utils/app_assets.dart';
import 'package:islamic_questions/features/home/presentation/view/widget/drawer_button.dart';
import 'package:islamic_questions/features/home/presentation/view/widget/home_gridview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const DrawrButton(),
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            Assets.imagesMosque,
            fit: BoxFit.scaleDown,
          ),
          const Expanded(
              child: const Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomScrollView(
              slivers: [HomeGrideView()],
            ),
          )),
        ],
      ),
    );
  }
}
