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
  final int id;
  int quantity;

  HeadingItem(this.product, this.price, this.id, this.quantity);

  @override
  Widget buildTitle(BuildContext context) {
    final cart = context.watch<CartProvider>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          children: [
            Text(
              product,
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'Price: $price',
            )
          ],
        ),
        // SizedBox(width: 100),
        Builder(builder: (context) {
          return Align(
            alignment: Alignment.centerRight,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.read<CartProvider>().addToList(product, price, id);
                    print('$CartProvider initialized');
                    // if(cart.getList==cart.getList){
                    //   Text('Quantity: ${cart.getQuantity}');
                    // }
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => const CartPage(),
                    // settings: RouteSettings(
                    //   arguments: HeadingItem(product, price),
                    // )
                    // ))
                  },
                  child: const Text('Add to Cart'),
                ),
              ],
            ),
          );
        }),
      ],
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
