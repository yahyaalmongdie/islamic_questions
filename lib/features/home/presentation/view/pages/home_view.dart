import 'package:flutter/material.dart';
import 'package:islamic_questions/features/home/presentation/view/widget/custom_drawer.dart';
import 'package:islamic_questions/features/home/presentation/view/widget/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: const Scaffold(
          drawer: CustomDrawer(),
          body: SafeArea(child: HomeViewBody()),
        ),
      ),
    );
  }
}
