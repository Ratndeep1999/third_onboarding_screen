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
}
