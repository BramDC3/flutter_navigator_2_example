abstract class SharedPreferencesWrapper {
  bool containsKey(String key);

  bool getBool(String key, {bool defaultValue = false});

  int? getInt(String key);

  double? getDouble(String key);

  String? getString(String key);

  List<String>? getStringList(String key);

  Future<bool> setBool(String key, {required bool value});

  Future<bool> setInt(String key, int value);

  Future<bool> setDouble(String key, double value);

  Future<bool> setString(String key, String value);

  Future<bool> setStringList(String key, List<String> value);

  Future<bool> remove(String key);

  Future<bool> clear();
}
