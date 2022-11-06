// import 'dart:js_util';

import 'package:cart_management/cart.dart';
import 'package:cart_management/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// class Cart extends StatefulWidget {
//   const Cart({Key? key}) : super(key: key);
//
//   @override
//   State<Cart> createState() => _CartState();
// }
//
// class _CartState extends State<Cart> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//     );
//   }
// }

abstract class ListItem {
  Widget buildTitle(BuildContext context);
// Widget buildSubtitle(BuildContext context);
}

class HeadingItem implements ListItem {
  final String product;
  final int price;

  HeadingItem(this.product, this.price);

  @override
  Widget buildTitle(BuildContext context) {
    return Container(
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: [
              Text(
                '$product.$price',
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
          // SizedBox(width: 100),
          Builder(
            builder: (context) {
              return Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {
                            context.read<CartProvider>()
                                .addToList(product, price);
                            print('$CartProvider');
                            // Navigator.push(context,
                            //     MaterialPageRoute(builder: (context) => const CartPage(),
                                    // settings: RouteSettings(
                                    //   arguments: HeadingItem(product, price),
                                    // )
                                // ))
                          },
                          icon: const Icon(Icons.add),
                        ),
                      ],
                    ),
                  );
            }
          ),
        ],
      ),
    );
  }
// @override
// Widget buildSubtitle(BuildContext context) => const SizedBox.shrink();
}

// class MessageItem implements ListItem {
//   final String sender;
//   final String body;
//
//   MessageItem(this.sender, this.body);
//
//   @override
//   Widget buildTitle(BuildContext context) => Text(sender);
//
//   @override
//   Widget buildSubtitle(BuildContext context) => Text(body);
// }