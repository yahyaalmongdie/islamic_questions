import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:islamic_questions/core/utils/app_colors.dart';
import 'package:islamic_questions/core/utils/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MobileAds.instance.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: const Locale("ar"),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoutes.router,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.blackColor,
      ),
    );
  }
}
