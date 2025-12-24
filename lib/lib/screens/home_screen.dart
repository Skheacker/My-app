import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/user_provider.dart';
import '../widgets/banner_ad_widget.dart';
import 'video_watch_screen.dart';
import 'refer_earn_screen.dart';
import 'wallet_screen.dart';
import 'profile_screen.dart';
import 'admin_panel_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    final user = userProvider.user;

    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Column(
        children: [
          BannerAdWidget(),
          Text('Coins: ${user?.coins ?? 0}'),
          ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => VideoWatchScreen())), child: Text('Watch Ad')),
          ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ReferEarnScreen())), child: Text('Refer & Earn')),
          ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => WalletScreen())), child: Text('Wallet')),
          ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ProfileScreen())), child: Text('Profile')),
          if (user?.uid == 'admin@example.com') ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => AdminPanelScreen())), child: Text('Admin Panel')),
        ],
      ),
    );
  }
}
