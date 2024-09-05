import 'package:flutter/material.dart';

class MakerModel extends ChangeNotifier {
  String maker = "";

  void setMaker(String maker) {
    this.maker = maker;
    notifyListeners();
  }
}