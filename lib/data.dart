import 'package:flutter/material.dart';

class GlobalState with ChangeNotifier {
  Map<String, Map<String, String>> _globalUsers = {
    '123220042': {
      'nama': 'Azhar Fikri H.',
      'username': 'dad',
      'password': '123'
    }
  };

  Map<String, Map<String, String>> get globalUsers => _globalUsers;

  void updateString(Map<String, Map<String, String>> newValue) {
    _globalUsers = newValue;
    notifyListeners();
  }
}
