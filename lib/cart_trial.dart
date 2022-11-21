import 'dart:io';

import 'package:cart_management/button.dart';
import 'package:cart_management/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'list.dart';

//
// // class Cart extends StatefulWidget {
// //   const Cart({Key? key}) : super(key: key);
// //
// //   @override
// //   State<Cart> createState() => _CartState();
// // }
// //
// // class _CartState extends State<Cart> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //
// //     );
// //   }
// // }
//
// abstract class ListItem {
//   Widget buildTitle(BuildContext context);
// // Widget buildSubtitle(BuildContext context);
// }
//
// // void AddToCart() {
// //   setState((){
// //     if (){
// //
// //     }
// //   }
// //   )
// // }
//
// class CartItem implements ListItem {
//   final String product;
//   final int price;
//   final int id;
//   int quantity;
//
//   CartItem(this.product, this.price, this.id, this.quantity);
//
//   @override
//   Widget buildTitle(BuildContext context) {
//     final cart = context.read<CartProvider>();
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: <Widget>[
//         Column(
//           children: [
//             Text(
//               product,
//               style: Theme.of(context).textTheme.headline5,
//             ),
//             Text(
//               'Price: $price',
//             )
//           ],
//         ),
//         // SizedBox(width: 100),
//         Builder(builder: (context) {
//           return Align(
//             alignment: Alignment.centerRight,
//             child: Row(
//               // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 // Text('${cart.getList[].quantity}'),
//                 IconButton(
//                   onPressed: (){
//                     cart.decreaseSelectedItem(product, price, id);
//                   },
//                   icon: const Icon(Icons.remove),
//                 ),
//                 // Text('${cart.getList[quantity]}'),
//                 IconButton(
//                   onPressed: (){
//                     cart.addToList(product, price, id);
//                   },
//                   icon: const Icon(Icons.add),
//                 ),
//                 // ElevatedButton(
//                 //   onPressed: () {
//                 //     cart.addToList(product, price, id);
//                 //     // const AllButtons();
//                 //     // setState(() {
//                 //     //   IconButton( icon: Icon(Icons.minimize),
//                 //     //   onPressed: (){
//                 //     //     cart.addToList(product, price, id);
//                 //     //   },);
//                 //     //   TextEditingController qnt = TextEditingController();
//                 //     // });
//                 //     // cart.addToList(product, price, id);
//                 //     print('$CartProvider initialized');
//                 //     // if(cart.getList==cart.getList){
//                 //     //   Text('Quantity: ${cart.getQuantity}');
//                 //     // }
//                 //     // Navigator.push(context,
//                 //     //     MaterialPageRoute(builder: (context) => const CartPage(),
//                 //     // settings: RouteSettings(
//                 //     //   arguments: HeadingItem(product, price),
//                 //     // )
//                 //     // ))
//                 //   },
//                 //   child: const Text('Add to Cart'),
//                 // ),
//               ],
//             ),
//           );
//         }),
//       ],
//     );
//   }
// // @override
// // Widget buildSubtitle(BuildContext context) => const SizedBox.shrink();
// }
// // class MessageItem implements ListItem {
// //   final String sender;
// //   final String body;
// //
// //   MessageItem(this.sender, this.body);
// //
// //   @override
// //   Widget buildTitle(BuildContext context) => Text(sender);
// //
// //   @override
// //   Widget buildSubtitle(BuildContext context) => Text(body);
// // }

// class CartPage extends StatelessWidget {
//   const CartPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final headingItem =
//     ModalRoute.of(context)!.settings.arguments as HeadingItem;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Cart Demo Page'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(15.0),
//         child: Text(headingItem.product),
//       ),
//     );
//   }
// }

class CartTrialPage extends StatelessWidget {
  // final List<ListItem> items;
  // final String product;
  // final int price;
  // final int id;
  // int quantity;

  const CartTrialPage({
    Key? key,
    // required this.product, required this.price, required this.id,
    // required this.quantity,
    // required this.items
  }) : super(key: key);

  // final TextEditingController _quantityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final cart = context.read<CartProvider>();
    // String textInput = '${cart.getQty}';

    // int inputTotal;
    // int inputTotal = 0;
    // final hItem = HeadingItem(product, price, id, quantity);
    // final String product = context.read<CartProvider>();
    // final int price = context.read<HeadingItem>().price;
    // final int id = context.read<HeadingItem>().id;
    // int quantity = context.read<HeadingItem>().quantity;
    // print(cart.getList);
    // final headingItem =
    // ModalRoute.of(context)!.settings.arguments as HeadingItem;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cart Page Demo'),
        ),
        body: Column(
          children: <Widget>[
            // Text('Product List'),
            Expanded(
              flex: 1,
              child: ListenableProvider.value(
                value: cart,
                child: ListView.builder(
                    itemCount: Provider.of<CartProvider>(context).list.length,
                    itemBuilder: (context, index) {
                      // final item = items[index];
                      // return ListTile(
                      //     // Text('$HeadingItem'),
                      //   title: Text(<HeadingItem>[]),
                      // ) ;
                      return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ListenableProvider.value(
                                value: cart,
                                child: Text(
                                    cart.getList[index].product.toString())),
                            Text('Price: ${cart.getList[index].price}'),
                            // Text('Quantity: ${cart.getList[index].quantity}'),
                            Builder(builder: (context) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  // Text('${cart.getList[].quantity}'),
                                  IconButton(
                                    onPressed: () {
                                      cart.decreaseSelectedItemCart(index);
                                    },
                                    icon: const Icon(Icons.remove),
                                  ),
                                  SizedBox(
                                    height: 20,
                                    width: 40,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: const UnderlineInputBorder(),
                                        hintText:
                                            // '${cart.getQty}',
                                        '${cart.getList[index].quantity}',
                                      ),
                                      onChanged: (value) {
                                        // cart.setQuantity(value, cart.getList[index].price);
                                        cart.totalTextValue(
                                            value,
                                            cart.getList[index].id,
                                            cart.getList[index].price);

                                        // cart.totalPrice(productID);
                                        // cart.getList[index].quantity = cart.getQty;

                                        // textInput = value;
                                        // value = "${cart.getQty}";
                                        // Text ('${cart.getQty}');

                                        // Text('${cart.getQty}');

                                        // cart.getList[index].price;
                                        // inputTotal = cart.addToList(
                                        //     cart.getList[index].product,
                                        //     cart.getList[index].price,
                                        //     index);
                                        // cart.getTotal;
                                        // inputTotal = int.parse(stdin.{hintText*cart.getList[index].price});

                                        print('Text Value Entered $value');
                                      },
                                      keyboardType: TextInputType.number,
                                      textAlign: TextAlign.center,
                                      textInputAction: TextInputAction.done,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      cart.addToListCart(
                                          cart.getList[index].product,
                                          cart.getList[index].price,
                                          index);
                                    },
                                    icon: const Icon(Icons.add),
                                  ),
                                  // ElevatedButton(
                                  //   onPressed: () {
                                  //     cart.addToList(product, price, id);
                                  //     // const AllButtons();
                                  //     // setState(() {
                                  //     //   IconButton( icon: Icon(Icons.minimize),
                                  //     //   onPressed: (){
                                  //     //     cart.addToList(product, price, id);
                                  //     //   },);
                                  //     //   TextEditingController qnt = TextEditingController();
                                  //     // });
                                  //     // cart.addToList(product, price, id);
                                  //     print('$CartProvider initialized');
                                  //     // if(cart.getList==cart.getList){
                                  //     //   Text('Quantity: ${cart.getQuantity}');
                                  //     // }
                                  //     // Navigator.push(context,
                                  //     //     MaterialPageRoute(builder: (context) => const CartPage(),
                                  //     // settings: RouteSettings(
                                  //     //   arguments: HeadingItem(product, price),
                                  //     // )
                                  //     // ))
                                  //   },
                                  //   child: const Text('Add to Cart'),
                                  // ),
                                ],
                              );
                            }),
                          ]);
                      //   ListTile(
                      //
                      //   // title: item.buildTitle(context),
                      //   // subtitle: item.buildSubtitle(context),
                      // );
                    }),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('For Test = ${cart.getQty}'),
                  const Text('Total '),
                  Text('${cart.getTotal
                      // +inputTotal
                      }'),
                ],
              ),
            ),
          ],
        )
        //     body: ListView(
        //       children: [
        //
        //         // Text(headingItem.product),
        //       ],
        // //     final List<HeadingItem> newList = headingItem
        // //         .where((item) => item.qty > 0)
        // //     .toList();
        // // List.add(HeadingItem(product, price)),
        // )
        );
  }
//
// @override
// void dispose() {
//   _quantityController.dispose();
//   super.dispose();
// }

// Widget CartList() {
//   if (HeadingItem != 0) {
//     return ListView.builder(
//       itemCount: HeadingItem.length,
//       itemBuilder: (context, index) {
//         return Text(HeadingItem);
//       },
//     );
//   }
//   return Text('Nothing in Cart');
// }
}
