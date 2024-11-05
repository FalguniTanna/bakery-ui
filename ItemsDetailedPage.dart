import 'package:flutter/material.dart';

class BakeryProduct {
  final String itemName;
  final String flavor;
  final String size;
  final String price;
  final String image;
  final double ratings;

  BakeryProduct({
    required this.itemName,
    required this.flavor,
    required this.size,
    required this.price,
    required this.image,
    required this.ratings,
  });
}

class Cart {
  List<BakeryProduct> items = [];

  void addToCart(BakeryProduct product) {
    items.add(product);
  }
}

Cart myCart = Cart();
class ItemDetailedPage extends StatelessWidget {
  final BakeryProduct bakeryProduct;
  ItemDetailedPage({required this.bakeryProduct});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade200,
        title: Text(bakeryProduct.itemName),
      ),
      backgroundColor: Colors.orange.shade50,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              bakeryProduct.image,
              width: double.infinity,
              height: 200.0,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 16.0),
            Text(
              'Flavor: ${bakeryProduct.flavor}',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Size: ${bakeryProduct.size}',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Price: ${bakeryProduct.price}',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Ratings: ${bakeryProduct.ratings}',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 16.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  myCart.addToCart(bakeryProduct);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('${bakeryProduct.itemName} added to cart'),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange.shade200, // Set the background color here
                ),
                child: Text('Add to Cart'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
