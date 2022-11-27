import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cart_management/cart_provider.dart';

// class MainPage extends StatefulWidget {
//   const MainPage({Key? key}) : super(key: key);
//
//   @override
//   State<MainPage> createState() => _MainPageState();
// }
//
// class _MainPageState extends State<MainPage> {
//   List<Product> _products = <Product>[];
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//
//     );
//   }
//
//   void _productList (){
//     var list = <Product> [
//       Product(productName: "Product 1", price: 10, id: 0),
//       Product(productName: 'Product 2', price: 20, id: 1),
//       Product(productName: "Product 3", price: 30, id: 2),
//     ];
//     setState(() {
//       _products = list;
//     });
//   }
// }
//
// class Product{
//   final String productName;
//   final int price;
//   final int id;
//   // int quantity;
//
//   Product({required this.productName, required this.price, required this.id,
//     // required this.quantity
//   });
// }



// class MainPage extends StatefulWidget {
//   const MainPage({Key? key}) : super(key: key);
//
//   @override
//   State<MainPage> createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   List<Product> _products = <Product>[];
//   List<Product> _cartList = <Product>[];
//
//   @override
//   void initState() {
//     super.initState();
//     _productList();
//   }
//   @override
//   Widget build(BuildContext context) {
//     final cartProv = context.read<CartProvider>();
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: <Widget>[
//         Column(
//           children: [
//             Text(
//               productName,
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
//                 ElevatedButton(
//                   onPressed: () {
//                     cartProv.addToList(product, price, id);
//                     var snackBar =
//                     SnackBar(content: Text('$product added to cart'));
//                     ScaffoldMessenger.of(context).showSnackBar(snackBar);
//                   },
//                   child: const Text('Add To Cart'),
//                 )
//               ],
//             ),
//           );
//         }),
//       ],
//     );
//   }
//
//   void _productList (){
//     var list = <Product> [
//       Product(productName: "Product 1", price: 10, id: 0,
//         // quantity: 1
//       ),
//       Product(productName: 'Product 2', price: 20, id: 1,
//         // quantity: 1
//       ),
//       Product(productName: "Product 3", price: 30, id: 2,
//         // quantity: 1
//       ),
//     ];
//     setState(() {
//       _products = list;
//     });
//   }
// }

abstract class StaticListItem {
  Widget buildTitle(BuildContext context);
}

class ProductItem{
  final String productName;
  final int price;
  final int id;
  int quantity;

  ProductItem(
      this.productName, this.price, this.id, this.quantity
    // required this.quantity
  );

  // @override
  // Widget buildTitle(BuildContext context) {
  //   // final cart = context.read<CartProvider>();
  //   // var item = _productList();
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //     children: <Widget>[
  //       Column(
  //         children: [
  //           // Text(
  //           //   // item.productName,
  //           //   style: Theme.of(context).textTheme.headline5,
  //           // ),
  //           // Text(
  //           //   'Price: ${item.price}',
  //           // )
  //         ],
  //       ),
  //       // SizedBox(width: 100),
  //       Builder(builder: (context) {
  //         return Align(
  //           alignment: Alignment.centerRight,
  //           child: Row(
  //             // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //             children: [
  //               // Text('${cart.getList[].quantity}'),
  //               // IconButton(
  //               //     onPressed: (){
  //               //       cart.decreaseSelectedItem(id);
  //               //     },
  //               //     icon: const Icon(Icons.remove),
  //               // ),
  //               // // Text('${cart.getList[quantity]}'),
  //               // IconButton(
  //               //   onPressed: (){
  //               //     cart.addToList(product, price, id);
  //               //   },
  //               //   icon: const Icon(Icons.add),
  //               // ),
  //               // ElevatedButton(
  //               //   onPressed: () {
  //               //     // cart.addToList(item.productName, item.price, item.id);
  //               //   //   var snackBar =
  //               //   //   // SnackBar(content: Text('${item.productName} added to cart'));
  //               //   //   // ScaffoldMessenger.of(context).showSnackBar(snackBar);
  //               //   // },
  //               // //   child: const Text('Add To Cart'),
  //               // // )
  //             ],
  //           ),
  //         );
  //       }),
  //     ],
  //   );
  // }
  // // _productList (){
  //   var list = <ProductItem> [
  //     ProductItem('Product 1', 10, 0,
  //         // quantity: 1
  //     ),
  //     ProductItem('Product 2', 20, 1,
  //         // quantity: 1
  //     ),
  //     ProductItem('Product 3', 30, 2,
  //         // quantity: 1
  //     ),
  //   ];
  //   // list = _productList();
  }