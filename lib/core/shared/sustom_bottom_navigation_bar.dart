import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:islamic_questions/core/ads/banner_ads_cubit/banner_ads_cubit.dart';
import 'package:islamic_questions/core/utils/app_colors.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BannerAdsCubit, BannerAdsState>(
        builder: (context, state) {
      var cubit = BlocProvider.of<BannerAdsCubit>(context);
      if (state is ShowBannerAdsSuccess && cubit.bannerAd != null) {
        return Container(
          height: cubit.bannerAd!.size.height.toDouble(),
          width: cubit.bannerAd!.size.width.toDouble(),
          child: AdWidget(ad: cubit.bannerAd!),
        );
      } else {
        return Container(
          color: AppColors.goldColor,
          child: const Text("data"),
        );
      }
    });
  }
}
