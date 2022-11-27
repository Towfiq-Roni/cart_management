import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main.dart';
import 'package:cart_management/cart_provider.dart';
import 'package:cart_management/main.dart';

// class CartTrialPage extends StatefulWidget {
//   final List<Product> _cart;
//
//   CartTrialPage(this._cart);
//
//   @override
//   _CartTrialPageState createState() => _CartTrialPageState(this._cart);
// }
//
// class _CartTrialPageState extends State<CartTrialPage> {
//   _CartTrialPageState(this._cart);
//   List<Product> _cart;
//
//   @override
//   Widget build(BuildContext context) {
//     final cartProv = context.read<CartProvider>();
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Cart Page Demo'),
//         ),
//         body: Column(
//           children: <Widget>[
//             // Text('Product List'),
//             Expanded(
//               flex: 1,
//               child: ListenableProvider.value(
//                 value: cartProv,
//                 child: ListView.builder(
//                     itemCount: Provider.of<CartProvider>(context).list.length,
//                     itemBuilder: (context, index) {
//
//                       return Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             ListenableProvider.value(
//                                 value: cartProv,
//                                 child: Text(
//                                     cartProv.getList[index].product.toString())),
//                             Text('Price: ${cartProv.getList[index].price}'),
//                             // Text('Quantity: ${cart.getList[index].quantity}'),
//                             Builder(builder: (context) {
//                               return Row(
//                                 mainAxisAlignment:
//                                 MainAxisAlignment.spaceBetween,
//                                 children: <Widget>[
//                                   // Text('${cart.getList[].quantity}'),
//                                   IconButton(
//                                     onPressed: () {
//                                       cartProv.decreaseSelectedItemCart(index);
//                                     },
//                                     icon: const Icon(Icons.remove),
//                                   ),
//                                   SizedBox(
//                                     height: 20,
//                                     width: 40,
//                                     child: TextFormField(
//                                       decoration: InputDecoration(
//                                         border: const UnderlineInputBorder(),
//                                         hintText:
//                                         // '${cart.getQty}',
//                                         '${cartProv.getList[index].quantity}',
//                                       ),
//                                       onChanged: (value) {
//                                         cartProv.totalTextValue(
//                                             value,
//                                             cartProv.getList[index].id,
//                                             cartProv.getList[index].price);
//
//                                         print('Text Value Entered $value');
//                                       },
//                                       keyboardType: TextInputType.number,
//                                       textAlign: TextAlign.center,
//                                       textInputAction: TextInputAction.done,
//                                     ),
//                                   ),
//                                   IconButton(
//                                     onPressed: () {
//                                       cartProv.addToListCart(
//                                           cartProv.getList[index].product,
//                                           cartProv.getList[index].price,
//                                           index);
//                                     },
//                                     icon: const Icon(Icons.add),
//                                   ),
//                                 ],
//                               );
//                             }),
//                           ]);
//
//                     }),
//               ),
//             ),
//             Container(
//               padding: const EdgeInsets.all(20),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text('For Test = ${cartProv.getQty}'),
//                   const Text('Total '),
//                   Text('${cartProv.getTotal
//                   // +inputTotal
//                   }'),
//                 ],
//               ),
//             ),
//           ],
//         )
//     );
//   }
// }


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

class StaticCartTrialPage extends StatefulWidget {
  const StaticCartTrialPage({Key? key}) : super(key: key);

  @override
  State<StaticCartTrialPage> createState() => _StaticCartTrialPageState();
}

class _StaticCartTrialPageState extends State<StaticCartTrialPage> {

  final TextEditingController editCountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final cart = context.read<CartProvider>();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cart Page Demo'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: ListenableProvider.value(
                value: cart,
                child: ListView.builder(
                    itemCount: Provider.of<CartProvider>(context).list.length,
                    itemBuilder: (context, index) {
                      return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ListenableProvider.value(
                                value: cart,
                                child: Text(
                                    cart.getList[index].productName.toString()
                                )
                            ),
                            Text('Price: ${cart.getList[index].price}'),
                            Builder(builder: (context) {
                              return Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  IconButton(
                                    onPressed: () {
                                      cart.decreaseSelectedItemCart(index);
                                    },
                                    icon: const Icon(Icons.remove),
                                  ),
                                  SizedBox(
                                    height: 20,
                                    width: 40,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: const UnderlineInputBorder(),
                                        hintText:
                                        // '${cart.getQty}',
                                        '${cart.getList[index].quantity}',

                                        //Not to be used (Just reducing Error)
                                        // '${cart.getList[index].id}',

                                      ),

                                      controller: editCountController,
                                      onSubmitted: (value){
                                        cart.totalTextValue(
                                            value, cart.getList[index].id,
                                            cart.getList[index].price);
                                        editCountController.text = value;
                                        editCountController.clear();
                                        // setState(() {});
                                      },
                                      // onChanged: (value) {
                                      //   cart.totalTextValue(
                                      //       value,
                                      //       cart.getList[index].id,
                                      //       cart.getList[index].price);
                                      //   // Text('${cart.getQty}');
                                      //
                                      //   print('Text Value Entered $value');
                                      // },
                                      keyboardType: TextInputType.number,
                                      textAlign: TextAlign.center,
                                      textInputAction: TextInputAction.done,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      cart.addToListCart(
                                          cart.getList[index].productName,
                                          cart.getList[index].price,
                                          index);
                                    },
                                    icon: const Icon(Icons.add),
                                  ),
                                ],
                              );
                            }),
                          ]);
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
    );
  }
}


// class StaticCartTrialPage extends StatelessWidget {
//
//   const StaticCartTrialPage({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final cart = context.read<CartProvider>();
//
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Cart Page Demo'),
//         ),
//         body: Column(
//           children: <Widget>[
//             Expanded(
//               flex: 1,
//               child: ListenableProvider.value(
//                 value: cart,
//                 child: ListView.builder(
//                     itemCount: Provider.of<CartProvider>(context).list.length,
//                     itemBuilder: (context, index) {
//                       return Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             ListenableProvider.value(
//                                 value: cart,
//                                 child: Text(
//                                     cart.getList[index].productName.toString()
//                                 )
//                             ),
//                             Text('Price: ${cart.getList[index].price}'),
//                             Builder(builder: (context) {
//                               return Row(
//                                 mainAxisAlignment:
//                                 MainAxisAlignment.spaceBetween,
//                                 children: <Widget>[
//                                   IconButton(
//                                     onPressed: () {
//                                       cart.decreaseSelectedItemCart(index);
//                                     },
//                                     icon: const Icon(Icons.remove),
//                                   ),
//                                   SizedBox(
//                                     height: 20,
//                                     width: 40,
//                                     child: TextFormField(
//                                       decoration: InputDecoration(
//                                         border: const UnderlineInputBorder(),
//                                         hintText:
//                                         // '${cart.getQty}',
//                                         '${cart.getList[index].quantity}',
//
//                                         //Not to be used (Just reducing Error)
//                                         // '${cart.getList[index].id}',
//
//                                       ),
//                                       onChanged: (value) {
//                                         cart.totalTextValue(
//                                             value,
//                                             cart.getList[index].id,
//                                             cart.getList[index].price);
//                                         // Text('${cart.getQty}');
//
//                                         print('Text Value Entered $value');
//                                       },
//                                       keyboardType: TextInputType.number,
//                                       textAlign: TextAlign.center,
//                                       textInputAction: TextInputAction.done,
//                                     ),
//                                   ),
//                                   IconButton(
//                                     onPressed: () {
//                                       cart.addToListCart(
//                                           cart.getList[index].productName,
//                                           cart.getList[index].price,
//                                           index);
//                                     },
//                                     icon: const Icon(Icons.add),
//                                   ),
//                                 ],
//                               );
//                             }),
//                           ]);
//                     }),
//               ),
//             ),
//             Container(
//               padding: const EdgeInsets.all(20),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text('For Test = ${cart.getQty}'),
//                   const Text('Total '),
//                   Text('${cart.getTotal
//                   // +inputTotal
//                   }'),
//                 ],
//               ),
//             ),
//           ],
//         )
//     );
//   }
// }

// class StaticCartTrialSTF extends StatefulWidget{
//   const StaticCartTrialSTF({super.key});
//
//   @override
//   State<StaticCartTrialSTF> createState() => _StaticCartTrialSTF();
//
// }
//
// class _StaticCartTrialSTF extends State<StaticCartTrialSTF>{
//
//   @override
//   void initState(){
//     _getOnEdit().
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return ;
//   }
//
//   Future _getOnEdit() async{
//     await Future.delayed(Duration(seconds: 10));
//   }
// }
