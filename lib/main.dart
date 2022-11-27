import 'package:cart_management/cart.dart';
import 'package:cart_management/cart_provider.dart';
import 'package:cart_management/list.dart';
import 'package:cart_management/static_cart_trial.dart';
import 'package:cart_management/static_list_trial.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cart_management/cart_trial.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // final List<StaticListItem> items;

  // const MyApp({super.key,
  //   // required List<ListItem> items,
  //   // required this.items,
  // });

  @override
  Widget build(BuildContext context) {
    const title = 'Cart Demo';

    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => CartProvider()),
    ], child: MaterialApp(home: ListViewBuilder()));
  }
}

// This widget is the root of your application.

class ListViewBuilder extends StatelessWidget {
  var list = <ProductItem>[
    ProductItem(
      'Product 1',
      10,
      0,
      0,
    ),
    ProductItem(
      'Product 2',
      20,
      1,
      0,
    ),
    ProductItem(
      'Product 3',
      30,
      2,
      0,
    ),
  ];

  ListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Cart Demo';


    return Scaffold(
        appBar: AppBar(
          title: const Text(title),
          actions: <Widget>[
            Builder(builder: (context) {
              // final cart = context.read<CartProvider>();
              return IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StaticCartTrialPage()
                        ));
                  },
                  icon: const Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ));
            })
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  // final product = context.read<ProductItem>();
                  final cart = context.read<CartProvider>();
                  // List<ProductItem> item = ProductItem(
                  // 'productName', price, id) as List<ProductItem>;
                  // final item
                  return getListItem(
                    cart,
                    list[index],
                  );
                },
              ),
            ),
          ],
        ));
  }

  Widget getListItem(cart, ProductItem item) {
    // final cart = context.read<CartProvider>();
    String? name;
    return ListTile(
      title: Text(name ??"hjkl"),
      subtitle: Text('Price ${item.price.toString()}'),
      trailing: ElevatedButton(
          onPressed: () {
            cart.addToList(item.productName, item.price, item.id);
          },
          child: Text('Add')),
    );
  }
}
// var list = <ProductItem> [
//   ProductItem('Product 1', 10, 0,
//     // quantity: 1
//   ),
//   ProductItem('Product 2', 20, 1,
//     // quantity: 1
//   ),
//   ProductItem('Product 3', 30, 2,
//     // quantity: 1
//   ),
// ];

// class MainPage extends StatefulWidget {
//   const MainPage({Key? key}) : super(key: key);
//
//   @override
//   State<MainPage> createState() => _MainPageState();
// }
//
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
//           // quantity: 1
//       ),
//       Product(productName: 'Product 2', price: 20, id: 1,
//           // quantity: 1
//       ),
//       Product(productName: "Product 3", price: 30, id: 2,
//           // quantity: 1
//       ),
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
