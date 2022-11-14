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
  // int _count = 0;

  List<HeadingItem> list = <HeadingItem>[];

  List<HeadingItem> get getList => list;

  int get getTotal => _total;

  // int get getCount => _count;

  // int get getQuantity => ;

  bool _doesNotExist(id) {
    return list.every((element) {
      if (element.id == id) {
        element.quantity++;
        return false;
      }
      return true;
    });
  }

  // bool _doesExist(id) {
  //   return list.forEach((element) {
  //     if (element.id == id) {
  //       element.quantity--;
  //       // element.quantity--;
  //       // notifyListeners();
  //       return true;
  //     }
  //     // else{
  //     //   return false;
  //     // }
  //     // notifyListeners();
  //     return false;
  //   });
  //
  //   // return list[id]
  // }

  addToList(String product, int price, int id) {
    // increment().value = total+price;
    _total += price;
    if (_doesNotExist(id)) {
      list.add(HeadingItem(product, price, id, 1));
    }
    notifyListeners();
    print('Value increased $_total');
  }

  // deleteFromList(int index) {
  //   if (_doesExist(index)) {
  //     _total -= (getList[index].price * getList[index].quantity);
  //     list.removeAt(index);
  //     notifyListeners();
  //     print('value decreased $_total');
  //   }
  // }

  // increaseSelectedItem(int index){
  //   _count += getList[index].quantity;
  //   notifyListeners();
  // }
  //
  decreaseSelectedItem(int index) {
    // _total -= headingItem.price;
    // if(list.contains(index)){
    //
    // }
    for(HeadingItem item in list){
      if(item.id == getList[index].id) {
        _total -= getList[index].price;
        item.quantity--;
        if (item.quantity == 0) {
          list.removeAt(index);
        }
      }
      notifyListeners();
      }
      // notifyListeners();
    print('Value decreased $_total');
    }
    // list.forEach((HeadingItem){
    //   _total -= getList[index].price*getList[index].quantity;
      // list.removeAt;
      // {getList[index];}
      // list.forEach((element) {getList[index].quantity--;});
      // list.remove(HeadingItem(
      //     headingItem.product, headingItem.price, headingItem.id, 1));
      // notifyListeners();
      // print('Value decreased $_total');
    }
    // notifyListeners();
    //   print('Value decreased $_total');

// increaseQuantity() {
//   _quantity++;
//   // int qnt = _quantity;
//   notifyListeners();
//   print('Value increment $_quantity');
// }
// }
