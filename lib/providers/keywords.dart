
import 'package:flutter/material.dart';

class KeyWordsModel extends ChangeNotifier {
  String keyword = "";

  void SetKeyword(String keyword) {
    this.keyword = keyword;
  }
}