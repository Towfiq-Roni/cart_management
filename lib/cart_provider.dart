// import 'package:flutter/material.dart';
//
// class CartModel extends ChangeNotifier {
//   final List<Item> _items = [];
//
// }

import 'package:cart_management/list.dart';
import 'package:flutter/widgets.dart';

class CartProvider with ChangeNotifier{
  List<HeadingItem> list = <HeadingItem>[];

  List<HeadingItem> get getList => list;

  addToList(String product, int price){
    list.add(HeadingItem(product, price));
    notifyListeners();
  }

  deleteFromList(int index){
    list.removeAt(index);
    notifyListeners();
  }
}