import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../utils/constants.dart';

class AdMobService {
  static BannerAd? bannerAd;
  static InterstitialAd? interstitialAd;
  static RewardedAd? rewardedAd;

  static void initialize() {
    MobileAds.instance.initialize();
  }

  static BannerAd createBannerAd() {
    return BannerAd(
      adUnitId: Constants.bannerAdUnitId,
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(),
    );
  }

  static void loadInterstitialAd() {
    InterstitialAd.load(
      adUnitId: Constants.interstitialAdUnitId,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) => interstitialAd = ad,
        onAdFailedToLoad: (error) => print('Interstitial ad failed: $error'),
      ),
    );
  }

  static void loadRewardedAd() {
    RewardedAd.load(
      adUnitId: Constants.rewardedAdUnitId,
      request: const AdRequest(),
      rewardedAdLoadCallback: RewardedAdLoadCallback(
        onAdLoaded: (ad) => rewardedAd = ad,
        onAdFailedToLoad: (error) => print('Rewarded ad failed: $error'),
      ),
    );
  }
}
