import 'package:cart_management/cart_provider.dart';
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
    final cart = context.watch<CartProvider>();
    print(cart.getList);
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
                                    cart.getList[index].product.toString())),
                            Text('Price: ${cart.getList[index].price}'),
                            Text('Quantity: ${cart.getList[index].quantity}'),
                            ElevatedButton(
                                onPressed: () {
                                  context.read<CartProvider>()
                                      .deleteFromList(index);
                                },
                                child: const Text('Remove from Cart'))
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
              child: Text('Total ${cart.getTotal}'),
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
