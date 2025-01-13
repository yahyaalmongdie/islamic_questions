import 'package:flutter/material.dart';
import 'package:islamic_questions/features/home/presentation/view/widget/custom_drawer.dart';
import 'package:islamic_questions/features/home/presentation/view/widget/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.rtl,
      child: const SafeArea(
        child: const Scaffold(
          drawer: const CustomDrawer(),
          body: const SafeArea(child: const HomeViewBody()),
          // bottomNavigationBar: _bannerAd == null
          //     // Nothing to render yet.
          //     ? const SizedBox()
          //     // The actual ad.
          //     : Container(
          //         height: _bannerAd!.size.height.toDouble(),
          //         width: _bannerAd!.size.width.toDouble(),
          //         child: AdWidget(ad: _bannerAd!),
          //       ),
        ),
      ),
    );
  }
}
