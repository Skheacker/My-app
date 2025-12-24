import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/user_provider.dart';
import '../models/withdrawal_model.dart';
import '../services/firebase_service.dart';

class WalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    final user = userProvider.user;

    return Scaffold(
      appBar: AppBar(title: Text('Wallet')),
      body: Column(
        children: [
          Text('Balance: ${user?.balance ?? 0}'),
          ElevatedButton(
            onPressed: () async {
              // Request withdrawal
              WithdrawalModel withdrawal = WithdrawalModel(userId: user!.uid, amount: user.balance);
              await FirebaseService().createWithdrawal(withdrawal);
            },
            child: Text('Withdraw'),
          ),
        ],
      ),
    );
  }
}
