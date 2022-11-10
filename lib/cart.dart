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

  const CartPage({
    Key? key,
    // required this.items
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cart = context.read<CartProvider>();
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
                                    cart.getList[index].product.toString()
                                )
                            ),
                            Text('Price: ${cart.getList[index].price}'),
                            Text('Quantity: ${cart.getList[index].quantity}'),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // Text('${cart.getList[].quantity}'),
                                IconButton(
                                  onPressed: (){
                                    cart.decreaseSelectedItem(product, price, id);
                                  },
                                  icon: const Icon(Icons.remove),
                                ),
                                // Text('${cart.getList[quantity]}'),
                                IconButton(
                                  onPressed: (){
                                    cart.addToList(product, price, id);
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
                            ),
                          ]);
                      //   ListTile(
                      //
                      //   // title: item.buildTitle(context),
                      //   // subtitle: item.buildSubtitle(context),
                      // );
                    }),
              ),
            ),
            ListenableProvider.value(
              value: cart,
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      Text('Total ',),
                      Text('${cart.getTotal}'),
                  ],
                ),
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
