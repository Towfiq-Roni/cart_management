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
  int _totalPrice = 0;
  int _qty = 1;
  // int _count = 0;

  List<HeadingItem> list = <HeadingItem>[];

  List<HeadingItem> get getList => list;

  int get getTotal => _total;
  int get getTotalPrice => _totalPrice;
  int get getQty => _qty;

  // int get getCount => _count;

  // int get getQuantity => ;

  bool _doesNotExist(productID) {
    return list.every((element) {
      if (element.id == productID) {
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

  addToList(String product, int price, int productID) {
    // increment().value = total+price;
    _total += price;
    if (_doesNotExist(productID)) {
      list.add(HeadingItem(product, price, productID, 1));
    }
    notifyListeners();
    print('Value increased $_total');
  }

  // setQuantity(String qty, int price){
  //   _qty = int.parse(qty);
  //   _totalPrice = _qty*price;
  //
  //   notifyListeners();
  // }

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

  decreaseSelectedItem(int productID) {
    // _total -= headingItem.price;
    // if(list.contains(index)){
    //
    // }
    for (HeadingItem item in list) {
      if (item.id == getList[productID].id) {
        _total -= getList[productID].price;
        item.quantity--;
        if (item.quantity == 0) {
          list.removeAt(productID);
        }
        // else if(item.quantity == ){
        //
        // }
      }
      notifyListeners();
    }
    print('Value decreased $_total');
  }

  totalTextValue(String qty, int productID, int price){
    // getList[index].quantity++;
    _qty = int.parse(qty);
    // _qty = getList[index].quantity;
    // _total = _qty*getList[index].price;
    _totalPrice = _qty*price;
    _total += getTotalPrice - getList[productID].price;
    // _total += _totalPrice;
    getList[productID].quantity = getQty;
    notifyListeners();
  }

  // totalPrice(int productID){
  //   _total += getTotalPrice - getList[productID].price;
  //   notifyListeners();
  // }

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
