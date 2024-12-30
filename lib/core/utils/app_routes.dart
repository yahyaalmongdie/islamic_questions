import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:islamic_questions/features/home/presentation/view/pages/home_view.dart';
import 'package:islamic_questions/features/splash/presentation/view/pages/spalsh_view.dart';

abstract class AppRoutes {
  static const String kHomeView = "/homeView";

  static final GoRouter router = GoRouter(routes: <RouteBase>[
    GoRoute(
      path: "/",
      builder: (BuildContext context, GoRouterState state) {
        return const SplashView();
      },
      routes: <RouteBase>[
        GoRoute(
          path: "homeView",
          builder: (BuildContext context, GoRouterState state) {
            return const HomeView();
          },
        )
      ],
    ),
  ]);
}
