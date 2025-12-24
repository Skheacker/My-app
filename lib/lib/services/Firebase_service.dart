import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/user_model.dart';
import '../models/withdrawal_model.dart';
import '../models/admin_settings_model.dart';

class FirebaseService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<UserModel?> getUser(String uid) async {
    DocumentSnapshot doc = await _firestore.collection('users').doc(uid).get();
    if (doc.exists) {
      return UserModel.fromMap(doc.data() as Map<String, dynamic>);
    }
    return null;
  }

  Future<void> updateUser(UserModel user) async {
    await _firestore.collection('users').doc(user.uid).set(user.toMap());
  }

  Future<void> createUser(UserModel user) async {
    await _firestore.collection('users').doc(user.uid).set(user.toMap());
  }

  Future<List<WithdrawalModel>> getWithdrawals() async {
    QuerySnapshot snapshot = await _firestore.collection('withdrawals').get();
    return snapshot.docs.map((doc) => WithdrawalModel.fromMap(doc.data() as Map<String, dynamic>, doc.id)).toList();
  }

  Future<void> updateWithdrawalStatus(String id, String status) async {
    await _firestore.collection('withdrawals').doc(id).update({'status': status});
  }

  Future<void> createWithdrawal(WithdrawalModel withdrawal) async {
    await _firestore.collection('withdrawals').add(withdrawal.toMap());
  }

  Future<AdminSettingsModel> getAdminSettings() async {
    DocumentSnapshot doc = await _firestore.collection('admin').doc('settings').get();
    if (doc.exists) {
      return AdminSettingsModel.fromMap(doc.data() as Map<String, dynamic>);
    }
    return AdminSettingsModel();
  }

  Future<void> updateAdminSettings(AdminSettingsModel settings) async {
    await _firestore.collection('admin').doc('settings').set(settings.toMap());
  }
}
