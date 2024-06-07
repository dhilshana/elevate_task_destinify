import 'package:flutter/material.dart';

class searchProvider extends ChangeNotifier {
  int _selectedIndex = 0;
  bool _isSearching = false;

  int get selectedIndex => _selectedIndex;
  bool get isSearching => _isSearching;

  void updateSelectedIndex(int index) {
    _selectedIndex = index;
    if (_selectedIndex == 1) {
      _isSearching = true;
    } else {
      _isSearching = false;
    }
    notifyListeners();
  }

  void toggleSearch() {
    _isSearching = !_isSearching;
    notifyListeners();
  }
}
