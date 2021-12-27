import 'package:flutter/material.dart';

class ProviderTheme with ChangeNotifier {
  bool value = true;
  String? image;
  var backgraond = Colors.green[100];
  String? text;
  ThemeData themeData = ThemeData(
    primarySwatch: Colors.green,
    primaryColor: Colors.green,
  );
  void changeTheme() {
    value = !value;
    value ? backgraond = Colors.green[100] : backgraond = null;
    value
        ? themeData = ThemeData(
            primarySwatch: Colors.green,
            primaryColor: Colors.green,
          )
        : themeData = ThemeData.dark();
    notifyListeners();
  }
}
