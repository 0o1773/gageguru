
import 'package:flutter/material.dart';

class KeyWordsModel extends ChangeNotifier {
  String keyword = "";

  void setKeyword(String keyword) {
    this.keyword = keyword;
  }
}