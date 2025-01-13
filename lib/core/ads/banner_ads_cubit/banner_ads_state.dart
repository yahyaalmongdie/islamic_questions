part of 'banner_ads_cubit.dart';

@immutable
sealed class BannerAdsState {}

final class BannerAdsInitial extends BannerAdsState {}
final class ShowBannerAdsSuccess extends BannerAdsState {}
