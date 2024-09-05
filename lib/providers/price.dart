import 'package:flutter/material.dart';

class PriceModel extends ChangeNotifier {
  int minPrice = 0;
  int maxPrice = double.infinity as int;

  void setMinPrice(int minPrice) {
    this.minPrice = minPrice;
    notifyListeners();
  }
  void setMaxPrice(int maxPrice) {
    this.maxPrice = maxPrice;
    notifyListeners();
  }
}