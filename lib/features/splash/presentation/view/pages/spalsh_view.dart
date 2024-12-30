import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:islamic_questions/core/utils/app_routes.dart';
import 'package:islamic_questions/features/splash/presentation/view/widget/spalsh_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(
        const Duration(
          seconds: 4,
        ), () {
      context.pushReplacement(AppRoutes.kHomeView);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: const SplashViewBody(),
    );
  }
}
