import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/user_provider.dart';

class ReferEarnScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    final user = userProvider.user;

    return Scaffold(
      appBar: AppBar(title: Text('Refer & Earn')),
      body: Column(
        children: [
          Text('Your Referral Code: ${user?.uid}'),
          Text('Referrals: ${user?.referrals.length ?? 0}'),
          // Logic to share code and add referrals
        ],
      ),
    );
  }
}
