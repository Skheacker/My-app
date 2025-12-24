import 'package:flutter/material.dart';

class AdminPanelScreen extends StatelessWidget {
  const AdminPanelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Panel'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text('Total Users'),
              trailing: const Text('0'),
            ),
            ListTile(
              leading: const Icon(Icons.money),
              title: const Text('Pending Withdraw Requests'),
              trailing: const Text('0'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Approve logic later')),
                );
              },
              child: const Text('Approve Withdraw (Demo)'),
            ),
          ],
        ),
      ),
    );
  }
}
