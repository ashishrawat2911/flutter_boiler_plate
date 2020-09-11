import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static const String login = "login";
  static const String userData = "userData";
  static const String sessionID = "sessionID";
  static const String userID = "userID";
  static const String consent = "consent";
  static const String onBoarding = "onBoarding";
  static const String phoneNumber = "phoneNumber";
  static const String userDetailPreference = "userDetailPreference";
  static const String languageCode = "language_code";
  static const String deviceToken = "deviceToken";
  static const String profileDetails = "profileDetails";
  static const String showPhoneLogin = "showPhoneLogin";

  Future<SharedPreferences> _getSharedPreference() async {
    return await SharedPreferences.getInstance();
  }

  Future<String> getString(String key) async {
    var prefs = await _getSharedPreference();
    return prefs.getString(key) ?? '';
  }

  Future<int> getInt(String key) async {
    var prefs = await _getSharedPreference();
    return prefs.getInt(key) ?? 0;
  }

  Future<double> getDouble(String key) async {
    var prefs = await _getSharedPreference();
    return prefs.getDouble(key) ?? 0;
  }

  Future<bool> getBool(String key) async {
    var prefs = await _getSharedPreference();
    return prefs.getBool(key) ?? false;
  }

  Future<void> setString(String key, String value) async {
    var prefs = await _getSharedPreference();
    await prefs.setString(key, value);
  }

  Future<void> setInt(String key, int value) async {
    var prefs = await _getSharedPreference();
    await prefs.setInt(key, value);
  }

  Future<void> setDouble(String key, double value) async {
    var prefs = await _getSharedPreference();
    await prefs.setDouble(key, value);
  }

  Future<void> setBool(String key, bool value) async {
    var prefs = await _getSharedPreference();
    await prefs.setBool(key, value);
  }

  Future<void> removePreference(String key) async {
    var prefs = await _getSharedPreference();
    await prefs.remove(key);
  }

  Future<void> clear() async {
    var prefs = await _getSharedPreference();
    await prefs.clear();
  }
}
