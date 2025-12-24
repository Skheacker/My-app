class TransactionModel {
  final String id;
  final String userId;
  final double amount;
  final String type; // e.g., 'credit' or 'debit'
  final DateTime timestamp;
  final String status; // e.g., 'pending', 'approved', 'rejected'

  TransactionModel({
    required this.id,
    required this.userId,
    required this.amount,
    required this.type,
    required this.timestamp,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'amount': amount,
      'type': type,
      'timestamp': timestamp.toIso8601String(),
      'status': status,
    };
  }

  factory TransactionModel.fromMap(Map<String, dynamic> map) {
    return TransactionModel(
      id: map['id'],
      userId: map['userId'],
      amount: map['amount'],
      type: map['type'],
      timestamp: DateTime.parse(map['timestamp']),
      status: map['status'],
    );
  }
}
