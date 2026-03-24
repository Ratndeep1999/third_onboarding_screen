import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {
  /// Singleton
  SharedPrefService._internal();

  static final SharedPrefService _instance = SharedPrefService._internal();

  static SharedPrefService get instance => _instance;

  /// Shared Preference Object
  static SharedPreferences? _prefs;

  /// Initialize Object
  Future<SharedPreferences> get _instancePref async {
    return _prefs ??= await SharedPreferences.getInstance();
  }

  /// Onboarding Status Key
  static const String _kOnboardingStatus = "on_boarding_status";

  /// Set Onboarding Status
  Future<void> setOnboardingStatus() async {
    final prefs = await _instancePref;
    prefs.setBool(_kOnboardingStatus, true);
  }

  /// Get Onboarding Status
  Future<bool> getOnboardingStatus() async {
    final prefs = await _instancePref;
    return prefs.getBool(_kOnboardingStatus) ?? false;
  }

  /// Clear Onboarding State
  Future<void> clearOnboardingState() async {
    final prefs = await _instancePref;
    prefs.clear();
  }
}
