import 'package:flutter/material.dart';
import 'package:islamic_questions/features/splash/presentation/view/pages/spalsh_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: SplashView(),
    );
  }
}
