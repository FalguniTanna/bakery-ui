import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'ItemsDetailedPage.dart';

class DetailsScreen extends StatelessWidget {
  final List<String> images;
  final String title;
  final String description;

  DetailsScreen({
    super.key,
    required this.images,
    required this.title,
    required this.description,
  });

  List<Map<String, dynamic>> bakeryProduct = [
    {
      'itemName': ' Chocolate Cake',
      'flavor': 'Chocolate',
      'size': 'Medium',
      'price': '350/-',
      'image': 'assets/img/cake1.jpeg',
      'rating' : '4.5',
    },
    {
      'itemName': ' Strawberry Cake',
      'flavor': 'Strawberry',
      'size': 'Medium',
      'price': '350/-',
      'image': 'assets/img/cake2.jpeg',
      'rating' : '4.5',
    },
    {
      'itemName': ' Vanilla Cake',
      'flavor': 'Vanilla',
      'size': 'Medium',
      'price': '350/-',
      'image': 'assets/img/cake3.jpeg',
      'rating' : '4.5',
    },
    {
      'itemName': 'Chocolate CupCake',
      'flavor': 'Chocolate',
      'size': 'small',
      'price': '50/-',
      'image': 'assets/img/cupcake1.jpeg',
      'rating' : '4.5',
    },

  ];
 int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade200,
        title: Text('${bakeryProduct[_currentIndex]['itemName']} Details'),
      ),
      backgroundColor: Colors.orange.shade50,
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemDetailedPage(bakeryProduct: BakeryProduct(
                itemName: bakeryProduct[_currentIndex]['itemName'],
                flavor: bakeryProduct[_currentIndex]['flavor'],
                size: bakeryProduct[_currentIndex]['size'],
                price: bakeryProduct[_currentIndex]['price'],
                image: bakeryProduct[_currentIndex]['image'],
                ratings: double.parse(bakeryProduct[_currentIndex]['rating']),
              )),
              ),);
            },

            child: CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
                onPageChanged: (index, reason) {
                  _currentIndex = index;
                },
              ),
              items: images.map((String imagePath) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Image.asset(
                          imagePath,
                          fit: BoxFit.cover,
                          height: 300,
                          width: 300,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$title Details',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 16.0),
                Center(
                  child: ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemDetailedPage(bakeryProduct: BakeryProduct(
                      itemName: bakeryProduct[_currentIndex]['itemName'],
                      flavor: bakeryProduct[_currentIndex]['flavor'],
                      size: bakeryProduct[_currentIndex]['size'],
                      price: bakeryProduct[_currentIndex]['price'],
                      image: bakeryProduct[_currentIndex]['image'],
                      ratings: double.parse(bakeryProduct[_currentIndex]['rating']),
                    ))));
                  },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange.shade200, // Set the background color here
                      ),
                      child: Text('Order Now')),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}