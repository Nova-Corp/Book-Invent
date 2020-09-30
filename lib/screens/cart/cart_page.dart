import 'package:book_invent/screens/widgets/cart_item_list.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cart Page',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cart'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [getCartItemList()],
            ),
          ),
        ),
      ),
    );
  }
}
