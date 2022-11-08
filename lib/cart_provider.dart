// import 'package:flutter/material.dart';
//
// class CartModel extends ChangeNotifier {
//   final List<Item> _items = [];
//
// }

import 'package:cart_management/list.dart';
import 'package:flutter/widgets.dart';

class CartProvider with ChangeNotifier {
  int _total = 0;

  List<HeadingItem> list = <HeadingItem>[];

  List<HeadingItem> get getList => list;

  int get getTotal => _total;

  bool _doesNotExist(id) {
    return list.every((element) {
      if (element.id == id) {
        element.quantity++;
        return false;
      }
      return true;
    });
  }

  addToList(String product, int price, int id) {
    // increment().value = total+price;
    _total += price;
    if (_doesNotExist(id)) {
      list.add(HeadingItem(product, price, id, 1));
    }
    notifyListeners();
    // print('Value increased $_total');
  }

  deleteFromList(int index) {
    _total -= getList[index].price*getList[index].quantity;
    list.removeAt(index);
    notifyListeners();
    print('value decreased $_total');
  }

// increaseQuantity() {
//   _quantity++;
//   // int qnt = _quantity;
//   notifyListeners();
//   print('Value increment $_quantity');
// }
}
