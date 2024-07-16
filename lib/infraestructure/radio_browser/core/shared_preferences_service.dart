import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  final SharedPreferences sharedPreferences;

  SharedPreferencesService(this.sharedPreferences);

  Future<void> saveList(String key, List<String> value) async {
    await sharedPreferences.setStringList(key, value);
  }

  Future<List<String>?> getList(String key) async {
    return sharedPreferences.getStringList(key);
  }
}
