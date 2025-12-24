import 'package:flutter/material.dart';

class BannerAdWidget extends StatelessWidget {
  const BannerAdWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      color: Colors.grey.shade300,
      alignment: Alignment.center,
      child: const Text(
        'Banner Ad',
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
