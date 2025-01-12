import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:islamic_questions/core/ads/banner_ads_cubit/banner_ads_cubit.dart';
import 'package:islamic_questions/features/home/presentation/view/pages/home_view.dart';
import 'package:islamic_questions/features/questions/presentation/manager/options_cubit/options_cubit.dart';
import 'package:islamic_questions/features/questions/presentation/manager/questions_cubit/questions_cubit.dart';
import 'package:islamic_questions/features/questions/presentation/view/pages/levels_view.dart';
import 'package:islamic_questions/features/questions/presentation/view/pages/questions_view.dart';
import 'package:islamic_questions/features/splash/presentation/view/pages/spalsh_view.dart';

abstract class AppRoutes {
  static const String kHomeView = "/homeView";
  static const String kLevelsiew = "/levelsView";
  static const String kQuestionsView = "/questionsView";

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
            return BlocProvider(
              create: (context) => BannerAdsCubit()..showBannerAds(),
              child: const HomeView(),
            );
          },
        ),
        GoRoute(
          path: "levelsView",
          builder: (BuildContext context, GoRouterState state) {
            Map data = state.extra as Map;
            return BlocProvider(
              create: (context) => BannerAdsCubit()..showBannerAds(),
              child: LevelsView(
                levels: data["levels"],
                categoryName: data["categoryName"],
              ),
            );
          },
        ),
        GoRoute(
          path: "questionsView",
          builder: (BuildContext context, GoRouterState state) {
            return MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => QuestionsCubit(),
                ),
                BlocProvider(
                  create: (context) => OptionsCubit(),
                ),
                BlocProvider(
                  create: (context) => BannerAdsCubit()..showBannerAds(),
                ),
              ],
              child: QuestionsView(
                questions: state.extra as List,
              ),
            );
          },
        ),
      ],
    ),
  ]);
}
