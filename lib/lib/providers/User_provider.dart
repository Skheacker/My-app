import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../services/firebase_service.dart';

class UserProvider with ChangeNotifier {
  UserModel? _user;
  UserModel? get user => _user;

  Future<void> loadUser(String uid) async {
    _user = await FirebaseService().getUser(uid);
    notifyListeners();
  }

  void updateCoins(int coins) {
    if (_user != null) {
      _user!.coins += coins;
      FirebaseService().updateUser(_user!);
      notifyListeners();
    }
  }

  void addReferral(String referralId) {
    if (_user != null) {
      _user!.referrals.add(referralId);
      FirebaseService().updateUser(_user!);
      notifyListeners();
    }
  }
}
