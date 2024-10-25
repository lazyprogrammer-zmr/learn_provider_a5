import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  int count = 0;

  void inncrement() {
    count++;
    notifyListeners();
  }

  void decrement() {
    if (count > 0) {
      count--;
    }
    notifyListeners();
  }
}
