class WithdrawalModel {
  String id;
  String userId;
  double amount;
  String status; // 'pending', 'approved', 'rejected'

  WithdrawalModel({
    required this.id,
    required this.userId,
    required this.amount,
    this.status = 'pending',
  });

  factory WithdrawalModel.fromMap(Map<String, dynamic> data, String id) {
    return WithdrawalModel(
      id: id,
      userId: data['userId'],
      amount: data['amount'],
      status: data['status'] ?? 'pending',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'amount': amount,
      'status': status,
    };
  }
}
