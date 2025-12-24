class UserModel {
  String uid;
  int coins;
  double balance;
  List<String> referrals;
  int tasksCompleted;

  UserModel({
    required this.uid,
    this.coins = 0,
    this.balance = 0.0,
    this.referrals = const [],
    this.tasksCompleted = 0,
  });

  factory UserModel.fromMap(Map<String, dynamic> data) {
    return UserModel(
      uid: data['uid'],
      coins: data['coins'] ?? 0,
      balance: data['balance'] ?? 0.0,
      referrals: List<String>.from(data['referrals'] ?? []),
      tasksCompleted: data['tasksCompleted'] ?? 0,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'coins': coins,
      'balance': balance,
      'referrals': referrals,
      'tasksCompleted': tasksCompleted,
    };
  }
}
