import 'package:cart_management/cart.dart';
import 'package:cart_management/cart_provider.dart';
import 'package:cart_management/list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp(
      items: List<ListItem>.generate(
    10, (index) => HeadingItem("Product ${index + 1}", index + 2),
    // MessageItem("Details $index")
  )));
}

class MyApp extends StatelessWidget {
  final List<ListItem> items;

  const MyApp({super.key, required this.items});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const title = 'Cart Demo';
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: title,
          home: Scaffold(
              appBar: AppBar(
                title: const Text(title),
                actions: <Widget>[
                  Builder(
                    builder: (context) {
                      return IconButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder:(context) => const CartPage()));
                          },
                          icon: const Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                          ));
                    }
                  )
                ],
              ),
              body: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return ListTile(
                      title: item.buildTitle(context),
                      // subtitle: item.buildSubtitle(context),
                    );
                  }))),
    );
  }
}
