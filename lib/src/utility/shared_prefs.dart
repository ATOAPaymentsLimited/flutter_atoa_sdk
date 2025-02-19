import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class SharedPrefs {
  factory SharedPrefs() => _instance;
  SharedPrefs._internal();
  static final SharedPrefs _instance = SharedPrefs._internal();

  late SharedPreferences _prefs;

  Future<void> initialize() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // Example methods
  Future<void> setString(String key, String value) async {
    await _prefs.setString(key, value);
  }

  String? getString(String key) => _prefs.getString(key);

  Future<void> setBool(String key, {required bool value}) async {
    await _prefs.setBool(key, value);
  }

  bool? getBool(String key) => _prefs.getBool(key);

  Future<void> clear() async {
    await _prefs.clear();
  }
}
