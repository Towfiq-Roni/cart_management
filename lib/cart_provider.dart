// import 'package:flutter/material.dart';
//
// class CartModel extends ChangeNotifier {
//   final List<Item> _items = [];
//
// }

import 'package:cart_management/list.dart';
import 'package:flutter/widgets.dart';

class CartProvider with ChangeNotifier{
  int _total = 0;
  // int price = 0;

  List<HeadingItem> list = <HeadingItem>[];

  List<HeadingItem> get getList => list;

  int get getTotal => _total;

  addToList(String product, int price){
    list.add(HeadingItem(product, price));
    // increment().value = total+price;
    _total += price;
    notifyListeners();
    print('Value increased $_total');
  }

  deleteFromList(int index){
    list.removeAt(index);
    notifyListeners();
  }

  // increment(){
  //   int value = total;
  //   notifyListeners();
  //   print('Value incrememnt $value');
  // }
}