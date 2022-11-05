import 'package:cart_management/list.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final headingItem =
    ModalRoute.of(context)!.settings.arguments as HeadingItem;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart Demo Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(headingItem.product),
      ),
    );
  }
}
