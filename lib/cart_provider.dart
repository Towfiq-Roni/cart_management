// import 'package:flutter/material.dart';
//
// class CartModel extends ChangeNotifier {
//   final List<Item> _items = [];
//
// }

import 'package:cart_management/list.dart';
import 'package:cart_management/main.dart';
import 'package:cart_management/static_list_trial.dart';
import 'package:flutter/widgets.dart';

class CartProvider with ChangeNotifier {
  int _total = 0;
  int _totalPrice = 0;
  int _qty = 0;
  

  // int _count = 0;

  // List<HeadingItem> list = <HeadingItem>[];
  List<ProductItem> list = <ProductItem>[];

  List<ProductItem> get getList => list;

  int get getTotal => _total;

  int get getTotalPrice => _totalPrice;

  int get getQty => _qty;

  // int get getCount => _count;

  // int get getQuantity => ;

  bool _doesNotExist(pListIndex) {
    return list.every((element) {
      if (element.id == pListIndex) {
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

  addToList(String product, int price, int pListIndex) {
    // increment().value = total+price;
    _total += price;
    if (_doesNotExist(pListIndex)) {
      list.add(ProductItem(product, price, pListIndex, 1
        // quantity: 1
      ));
    }
    notifyListeners();
    print('Value increased $_total');
  }

  addToListCart(String product, int price, int cListIndex) {
    // increment().value = total+price;
    // cListIndex = getList[cListIndex].id;
    _total += price;
    getList[cListIndex].quantity++;
    // getList[cListIndex].quantity = getQty;
    _qty = getList[cListIndex].quantity;
    notifyListeners();
    print('Value increased $_total');
    print('Quantity increased $getQty');
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

  decreaseSelectedItemCart(int cListIndex) {
    // _total -= headingItem.price;
    // if(list.contains(index)){
    //
    // }
    for (ProductItem item in list) {
      if (item.id == getList[cListIndex].id) {
        _total -= getList[cListIndex].price;
        getList[cListIndex].quantity--;
        _qty = getList[cListIndex].quantity;
        if (item.quantity == 0) {
          list.removeAt(cListIndex);
        }
        if (list.isEmpty) {
          _total = 0;
        }
        // else if(item.quantity == ){
        //
        // }
      }
      notifyListeners();
    }
    print('Value decreased $_total');
    print('Quantity decreased $getQty');
  }

  totalTextValue(String qty, int itemId, int price) {
    // getList[index].quantity++;

    int quant = int.parse(qty);
    for (ProductItem item in list) {
      if (item.id == itemId) {
        _total -= (item.quantity * price);
        item.quantity = quant;
        _totalPrice = quant * price;
        // _total = 0;
        _total += _totalPrice;
        // - item.price;
        // getList[itemId].quantity--;
        // _qty = getList[itemId].quantity;
      }


      // _totalPrice = _qty * price;
      // _qty = getList[index].quantity;
      // _total = _qty*getList[index].price;
      // if(_qty > getList[itemId].quantity){
      //   // _totalPrice = 0;
      //   _totalPrice = _qty * price;
      //   _total += (_totalPrice - getList[itemId].price);
      //   // _total += _totalPrice;
      //   getList[itemId].quantity = _qty;
      // }
      // if(_qty < getList[itemId].quantity){
      //   // _totalPrice = 0;
      //   _totalPrice = _qty*price;
      //   _total -= (_totalPrice - getList[itemId].price);
      //   getList[itemId].quantity = _qty;
      // }
      // getList[cListIndex].quantity = _qty;
      notifyListeners();
      print('Value after input $_total');
      print('Quantity after input $getQty');
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
}
