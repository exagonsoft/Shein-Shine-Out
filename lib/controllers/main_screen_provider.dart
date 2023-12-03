import 'package:flutter/material.dart';

class MainScreenNotifier extends ChangeNotifier {
  String _pageIndex = "home";

  String get pageIndex => _pageIndex;

  set pageIndex(String itemName) {
    _pageIndex = itemName;
    notifyListeners();
  }
}
