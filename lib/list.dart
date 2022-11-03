import 'package:flutter/material.dart';

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
    return Row(
      children: [
        Container(
          child:
          Text(
            '{$product.$price}',
            style: Theme.of(context).textTheme.headline5,
          ),

        ),
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


