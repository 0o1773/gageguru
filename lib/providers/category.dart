import 'dart:collection';

import 'package:flutter/material.dart';

import '../main.dart';

class CategoryModel extends ChangeNotifier {
  ItemCategory category = ItemCategory.mouse;

  void set (ItemCategory c) {
    category = c;
    notifyListeners();
  }
}