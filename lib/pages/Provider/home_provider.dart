import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  int currentSliderIndex = 0;

  fnOnPageChange(int currentIndex) {
    currentSliderIndex = currentIndex;
    notifyListeners();
  }
}