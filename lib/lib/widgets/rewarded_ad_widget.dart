import 'package:flutter/material.dart';

class RewardedAdWidget extends StatelessWidget {
  const RewardedAdWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      color: Colors.blueGrey.shade100,
      alignment: Alignment.center,
      child: const Text(
        'Rewarded Ad',
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
