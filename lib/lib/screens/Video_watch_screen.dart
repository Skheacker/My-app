import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/user_provider.dart';
import '../services/admob_service.dart';
import '../services/firebase_service.dart';

class VideoWatchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Watch Ad')),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            AdMobService.loadRewardedAd();
            if (AdMobService.rewardedAd != null) {
              AdMobService.rewardedAd!.show(onUserEarnedReward: (_, reward) {
                userProvider.updateCoins(10); // Coin per ad from settings
              });
            }
          },
          child: Text('Watch Rewarded Ad'),
        ),
      ),
    );
  }
}
