import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  static SharedPreferences? _preferences;

  static Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static Future<bool> setString(String key, String value) async {
    return await _preferences?.setString(key, value) ?? false;
  }

  static String? getString(String key) {
    return _preferences?.getString(key);
  }

  static Future<bool> setInt(String key, int value) async {
    return await _preferences?.setInt(key, value) ?? false;
  }

  // Get an int value
  static int? getInt(String key) {
    return _preferences?.getInt(key);
  }

  // Save a double value
  static Future<bool> setDouble(String key, double value) async {
    return await _preferences?.setDouble(key, value) ?? false;
  }

  // Get a double value
  static double? getDouble(String key) {
    return _preferences?.getDouble(key);
  }

  // Save a bool value
  static Future<bool> setBool(String key, bool value) async {
    return await _preferences?.setBool(key, value) ?? false;
  }

  // Get a bool value
  static bool? getBool(String key) {
    return _preferences?.getBool(key);
  }

  // Save a List<String>
  static Future<bool> setStringList(String key, List<String> value) async {
    return await _preferences?.setStringList(key, value) ?? false;
  }

  // Get a List<String>
  static List<String>? getStringList(String key) {
    return _preferences?.getStringList(key);
  }

  // Remove a specific key
  static Future<bool> remove(String key) async {
    return await _preferences?.remove(key) ?? false;
  }

  // Clear all saved data
  static Future<bool> clear() async {
    return await _preferences?.clear() ?? false;
  }
}
