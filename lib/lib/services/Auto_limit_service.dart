class AdminSettingsModel {
  int autoLimit;
  int coinPerAd;
  String upiInfo;
  String bankInfo;

  AdminSettingsModel({
    this.autoLimit = 100,
    this.coinPerAd = 10,
    this.upiInfo = '',
    this.bankInfo = '',
  });

  factory AdminSettingsModel.fromMap(Map<String, dynamic> data) {
    return AdminSettingsModel(
      autoLimit: data['autoLimit'] ?? 100,
      coinPerAd: data['coinPerAd'] ?? 10,
      upiInfo: data['upiInfo'] ?? '',
      bankInfo: data['bankInfo'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'autoLimit': autoLimit,
      'coinPerAd': coinPerAd,
      'upiInfo': upiInfo,
      'bankInfo': bankInfo,
    };
  }
}
