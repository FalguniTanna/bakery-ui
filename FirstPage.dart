import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/utils.dart';

import 'package:flutter/material.dart';
import 'package:newproject/DetailScreen.dart';
import 'package:newproject/ProfileScreen.dart';
import 'package:newproject/SearchScreen.dart';

import 'CartScreen.dart';

class BakeryFirstPage extends StatefulWidget {
  @override
  State<BakeryFirstPage> createState() => _BakeryFirstPageState();
}

class _BakeryFirstPageState extends State<BakeryFirstPage> {
  List<String> FirstPageImages = [
    'assets/img/cake.jpeg',
    'assets/img/cupcake.jpeg',
    'assets/img/cookies.jpeg',
    'assets/img/donut.jpeg',
    'assets/img/puff.jpeg',
    'assets/img/bread.jpeg',
    'assets/img/buns.jpeg'
  ];

  List<Map<String, dynamic>> bakeryProducts = [
    {
      'itemName': 'Cake',
      'price': '350/-',
      'images': [
        'assets/img/cake1.jpeg',
        'assets/img/cake2.jpeg',
        'assets/img/cake3.jpeg',
      ],
      'description':
          'The word itself is of Viking origin, from the Old Norse word "kaka". The ancient Greeks called cake πλακοῦς (plakous), which was derived from the word for "flat", πλακόεις (plakoeis). It was baked using flour mixed with eggs, milk, nuts, and honey. They also had a cake called "satura", which was a flat, heavy cake.',
    },
    {
      'itemName': 'CupCake',
      'price': '50/-',
      'images': [
        'assets/img/cupcake1.jpeg',
        'assets/img/cupcake2.jpeg',
        'assets/img/cupcake3.jpeg',
      ],
      'description':
          'A cupcake is a small, sweet baked good topped with frosting. You might bake cupcakes for your best friend\'s birthday. When you make cupcakes, you mix up cake batter and instead of baking it in large pans, pour it into the small, paper-lined indentations in a cupcake or muffin pan.',
    },
    {
      'itemName': 'Cookies',
      'price': '100/-',
      'images': [
        'assets/img/cookies1.jpeg',
        'assets/img/cookies2.jpeg',
        'assets/img/cookies3.jpeg',
      ],
      'description':
          'Cookies appear to have their origins in 7th century AD Persia, shortly after the use of sugar became relatively common in the region. They spread to Europe through the Muslim conquest of Spain. By the 14th century, they were common in all levels of society throughout Europe, from royal cuisine to street vendors.',
    },
    {
      'itemName': 'Donut',
      'price': '70/-',
      'images': [
        'assets/img/donut1.jpeg',
        'assets/img/donut2.jpeg',
        'assets/img/donut3.jpeg',
      ],
      'description':
          'Hanson Gregory, an American, claimed to have invented the ring-shaped doughnut in 1847 aboard a lime-trading ship when he was 16 years old. Gregory was dissatisfied with the greasiness of doughnuts twisted into various shapes and with the raw center of regular doughnuts.',
    },
    {
      'itemName': 'Puff',
      'price': '25/-',
      'images': [
        'assets/img/puff1.jpeg',
        'assets/img/puff2.jpeg',
        'assets/img/puff3.jpeg',
      ],
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas rutrum tempor urna ac tempor. In porta et nunc nec mattis. Nunc placerat, lectus non pretium consectetur, orci quam imperdiet felis, maximus hendrerit erat metus at purus. Nam vel felis lobortis, aliquet lacus non, placerat velit. Morbi porta mi non dui iaculis maximus.',
    },
    {
      'itemName': 'Bread',
      'price': '30/-',
      'images': [
        'assets/img/bread1.jpeg',
        'assets/img/bread2.jpeg',
        'assets/img/bread3.jpeg',
      ],
      'description':
          'Wheat was domesticated in the Fertile Crescent. Bread is found in Neolithic sites in Turkey and Europe from around 9,100 years ago. Conical loaves of bread as grave goods exactly as laid out in the Great Tomb, North Necropolis, Gebelein, 5th Dynasty (Old Kingdom), 2435–2305 BC.',
    },
    {
      'itemName': 'Buns',
      'price': '35/-',
      'images': [
        'assets/img/buns1.jpeg',
        'assets/img/buns2.jpeg',
      ],
      'description':
          'A bun is a type of bread roll, typically filled with savory fillings (for example hamburger). A bun may also refer to a sweet cake in certain parts of the world. Though they come in many shapes and sizes, buns are most commonly round, and are generally hand-sized or smaller.',
    },
  ];
  int _currentIndex = 0;
  int _currentBottomIndex = 0;

  Widget item(index) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailsScreen(
                      images: bakeryProducts[index]['images'],
                      title: bakeryProducts[index]['itemName'],
                      description: bakeryProducts[index]['description'],
                    )));
      },
      child: Card(
        margin: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 20,
          bottom: context == bakeryProducts.length ? 20 : 0,
        ),
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Row(
            children: [
              CircleAvatar(
                radius: 40, // Image radius
                backgroundImage: AssetImage(
                  bakeryProducts[index]['images'][0],
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // direction: isGridView ? Axis.vertical : Axis.horizontal,
                  children: [
                    Text(
                      bakeryProducts[index]['itemName'],
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      bakeryProducts[index]['price'],
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget itemh(index)
  {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailsScreen(
                  images: bakeryProducts[index]['images'],
                  title: bakeryProducts[index]['itemName'],
                  description: bakeryProducts[index]['description'],
                )));
      },
      child: Container(
        // color: Colors.orange.shade200,
        decoration: BoxDecoration( borderRadius: BorderRadius.circular(20),color: Colors.orange),
        // height: 2,
        width: 150,
       margin: EdgeInsets.symmetric(vertical : 50,horizontal:  50),

       child: Row(
         children: [
           SizedBox(width: 10),
           Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Text(
                 bakeryProducts[index]['itemName'],
                 style: const TextStyle(
                   color: Colors.black,
                   fontSize: 25,
                   fontWeight: FontWeight.bold,
                 ),
               ),

             ],
           ),
         ],
       ),
      ),
    );
  }
  List<Map<String, dynamic>> cartItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade200,
        title: Text(
          "Bakery App",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.orange.shade50,
        child: ListView(children: [
          Container(
            height: 100,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orange.shade200,
              ),
              child: Text(
                'Explore',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BakeryFirstPage()));
            },
          ),
          ListTile(
            title: Text('Search'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchPage()));
            },
          ),
          ListTile(
            title: Text('Profile'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },
          ),
        ]),
      ),
      backgroundColor: Colors.orange.shade50,
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          TextField(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchPage()),
              );
            },
            decoration: const InputDecoration(
              // labelText: "Search",
              hintText: 'Search Something',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueGrey),
                borderRadius: BorderRadius.all(Radius.circular(99)),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Builder(builder: (context) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                              images: bakeryProducts[_currentIndex]['images'],
                              title: bakeryProducts[_currentIndex]['itemName'],
                              description: bakeryProducts[_currentIndex]
                                  ['description'])));
                },
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 400.0,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                  items: FirstPageImages.map((String imagePath) {
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
              );
            }),
          ),
          Expanded(child: ListView.builder(
              itemCount: bakeryProducts.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return itemh(index);
          })),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: bakeryProducts.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return item(index);
                }),
          ),
        ],
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: [
          Icons.home,
          Icons.add_shopping_cart,
          Icons.favorite,
        ],
        activeIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentBottomIndex = index;
          });
          if (_currentBottomIndex == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BakeryFirstPage()),
            );
          } else if (_currentBottomIndex == 1) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => (CartPage(cartItems: cartItems))));
          } else if (_currentBottomIndex == 2) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProfilePage()));
          }
        },
      ),
    );
  }

  void addToCart(Map<String, dynamic> product) {
    setState(() {
      cartItems.add(product);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Item added to cart'),
      ),
    );
  }
}
