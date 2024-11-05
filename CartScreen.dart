
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  // Pass the list of items from the cart to this widget
  final List<Map<String, dynamic>> cartItems;

  CartPage({required this.cartItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: cartItems.isEmpty
          ? Center(
        child: Text('Your cart is empty.'),
      )
          : ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(cartItems[index]['itemName']),
              subtitle: Text(cartItems[index]['price']),
              // You can add more details or actions as needed
            ),
          );
        },
      ),
    );
  }
}
