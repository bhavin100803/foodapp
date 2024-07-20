import 'package:flutter/cupertino.dart';

class increment_decrement extends ChangeNotifier {
  int item = 1;
  int item_2 = 2;

  void incre() {
    item++;
    notifyListeners();
  }

  void decre() {
    if (item > 1) {
      item--;
      notifyListeners();
    }
  }

  bool canDecrement() => item > 1;

  void incre_2() {
    item_2++;
    notifyListeners();
  }

  void decre_2() {
    if (item_2 > 1) {
      item_2--;
      notifyListeners();
    }
  }

  bool canDecrement_2() => item_2 > 1;
}

