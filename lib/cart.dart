import 'package:cart_management/cart_provider.dart';
import 'package:cart_management/list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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

class CartPage extends StatelessWidget {
  // final List<ListItem> items;

  const CartPage({Key? key,
    // required this.items
  }) : super(key: key);

  // final List<HeadingItem> newList = makanan
  //     .where((item) => item.qty > 0)
  //     .map((item) => HeadingItem(namaMakanan: item.namaMenu, ...))
  //     .toList();

  @override
  Widget build(BuildContext context) {
    final getList = context.watch<CartProvider>();
    print(getList.list);
    // final headingItem =
    // ModalRoute.of(context)!.settings.arguments as HeadingItem;
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Page Demo'),
      ),
        body: Column(
      children: [
        // Text('Product List'),
        Expanded(
          child: Container(
              height: 1000,
              width: 500,
              child: ListView.builder(
                  itemCount: <HeadingItem>[].length,
                  itemBuilder: (context, index) {
                    // final item = items[index];
                    // return ListTile(
                    //     // Text('$HeadingItem'),
                    //   title: Text(<HeadingItem>[]),
                    // ) ;
                    return Container(
                      child: Column(
                        children: [
                          Provider.value(
                            value: getList,
                              child: Text('${getList.list}')),
                      ]),
                    );
                    //   ListTile(
                    //
                    //   // title: item.buildTitle(context),
                    //   // subtitle: item.buildSubtitle(context),
                    // );
                  })),
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
