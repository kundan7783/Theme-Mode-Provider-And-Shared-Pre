import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {

  String themeKey = 'themeMode';

  bool _isDark = false;

  bool get isDark => _isDark;

  ThemeProvider(){
    loadData();
  }

  Future<void> toggleTheme() async {
    _isDark = !_isDark;
    notifyListeners();
    
    SharedPreferences sharedPreferences= await SharedPreferences.getInstance();
    sharedPreferences.setBool(themeKey, _isDark);
  }

  loadData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    _isDark = sharedPreferences.getBool(themeKey) ?? false;
    notifyListeners();
  }

}