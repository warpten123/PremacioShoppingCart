import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<String> shoppingList = ['Banana', 'Apple', 'Tomato'];
  int get count => shoppingList.length;
  List<String> get cart => shoppingList;

  void addtoCart(String item) {
    print("add");
    shoppingList.add(item);
    notifyListeners();
  }
}
