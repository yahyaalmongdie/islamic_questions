import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:islamic_questions/features/splash/presentation/view/pages/spalsh_view.dart';

abstract class AppRoutes {
  final GoRouter goRoute = GoRouter(routes: <RouteBase>[
    GoRoute(
      path: "/",
      builder: (BuildContext context, GoRouterState state) {
        return const SplashView();
      },
    )
  ]);
}
