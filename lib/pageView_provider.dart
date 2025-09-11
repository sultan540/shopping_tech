import 'package:flutter/material.dart';

class PageviewProvider extends ChangeNotifier {
  int _current_page = 0;
  int get currentPage => _current_page;
  void setPage(int index) {
    _current_page = index;
    notifyListeners();
  }
}

class Lapimages extends ChangeNotifier {
  int _current_page1 = 0;
  final List<String> images = [
    "assets/images/lap1.png",
    "assets/images/lap2.png",
    "assets/images/lap3.png",
    "assets/images/lap4.png",
    "assets/images/lap5.png",
  ];
  int get currentPage => _current_page1;
  void setPage(int index) {
    _current_page1 = index;
    notifyListeners();
  }
}
