import 'package:flutter/material.dart';
import 'package:islamic_questions/core/utils/app_assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          image: const DecorationImage(
              fit: BoxFit.fill,
              image: const AssetImage(
                Assets.imagesSplashBackground,
              ))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            Assets.imagesSplashLogo,
            fit: BoxFit.scaleDown,
          ),
        ],
      ),
    );
  }
}
