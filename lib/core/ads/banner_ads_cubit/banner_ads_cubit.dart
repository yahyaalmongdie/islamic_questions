import 'package:bloc/bloc.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:islamic_questions/core/functions/check_intrent.dart';
import 'package:meta/meta.dart';

part 'banner_ads_state.dart';

class BannerAdsCubit extends Cubit<BannerAdsState> {
  BannerAdsCubit() : super(BannerAdsInitial());
  BannerAd? bannerAd;

  void showBannerAds() async {
    emit(BannerAdsInitial());

    bool isOnline = await isUserOnline();
    if (isOnline) {
      bannerAd = BannerAd(
        adUnitId: 'ca-app-pub-3940256099942544/6300978111',
        size: AdSize.banner,
        request: const AdRequest(),
        listener: BannerAdListener(
          // onAdLoaded: (_) => setState(() => isAdLoaded = true),
          onAdFailedToLoad: (ad, error) {
            print('Banner Ad failed to load: $error');
            ad.dispose();
          },
        ),
      )..load();
      emit(ShowBannerAdsSuccess());
    }
  }
}
