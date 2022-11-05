import 'package:cart_management/list.dart';
import 'package:flutter/material.dart';

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
    return MaterialApp(
        debugShowCheckedModeBanner:false,
        title: title,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(title),
            ),
            body: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return ListTile(
                    title: item.buildTitle(context),
                    // subtitle: item.buildSubtitle(context),
                  );
                })));
  }
}
