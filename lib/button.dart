// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import 'cart_provider.dart';
// import 'list.dart';
//
// class AllButtons extends StatefulWidget {
//   const AllButtons({Key? key}) : super(key: key);
//
//   @override
//   State<AllButtons> createState() => _AllButtonsState();
// }
//
// class _AllButtonsState extends State<AllButtons> {
//   @override
//   Widget build(BuildContext context) {
//     int index = 0;
//     final cart = context.watch<CartProvider>();
//     return Container(
//       child: ElevatedButton(
//       onPressed: () {
//         Row(
//           children: [
//             IconButton(
//               onPressed: () {
//                 setState(() {
//                   context.read<CartProvider>().decreaseSelectedItem(index);
//                 });
//               },
//               icon: Icon(Icons.minimize),
//             ),
//             Text('${context.read<CartProvider>().getList[index].quantity}'),
//             IconButton(
//               onPressed: () {
//                 setState(() {
//                   context.read<CartProvider>().increaseSelectedItem(index);
//                 });
//               },
//               icon: Icon(Icons.add),
//             ),
//           ],
//         );
//       }, child: null,
//       // child: const SnackBar(
//       //   content: Text('Added to Cart'),
//       //     // ScaffoldMessenger.of(context).showSnackBar(snackBar);
//       // ),
//     ));
//   }
// }
