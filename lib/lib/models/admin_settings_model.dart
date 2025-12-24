 /models/admin_modal_settings.dart

class AdminSettings {
  // Admin identification
  String adminName;
  String adminEmail;

  // App settings
  bool isAppActive;        // App on/off
  int maxCoinsPerDay;      // Daily max coins a user can earn
  int withdrawalLimit;     // Minimum coins required for withdrawal

  // Features control
  bool isReferEnabled;     // Refer & earn feature on/off
  bool isAdWatchEnabled;   // Ad watch feature on/off
  bool isAutoCoinIncrement; // Auto coin increment on ad watch

  AdminSettings({
    required this.adminName,
    required this.adminEmail,
    this.isAppActive = true,
    this.maxCoinsPerDay = 1000,
    this.withdrawalLimit = 500,
    this.isReferEnabled = true,
    this.isAdWatchEnabled = true,
    this.isAutoCoinIncrement = true,
  });
 }
