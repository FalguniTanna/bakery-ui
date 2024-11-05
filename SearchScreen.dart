import 'package:flutter/material.dart';

import 'DetailScreen.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();
  List<Map<String, dynamic>> bakeryProducts = [
    {
      'itemName': 'Cake',
      'price': '350/-',
      'images': [
        'assets/img/cake1.jpeg',
        'assets/img/cake2.jpeg',
        'assets/img/cake3.jpeg',
      ],
      'description': 'The word itself is of Viking origin, from the Old Norse word "kaka". The ancient Greeks called cake πλακοῦς (plakous), which was derived from the word for "flat", πλακόεις (plakoeis). It was baked using flour mixed with eggs, milk, nuts, and honey. They also had a cake called "satura", which was a flat, heavy cake.',
    },
    {
      'itemName': 'CupCake',
      'price': '50/-',
      'images': [
        'assets/img/cupcake1.jpeg',
        'assets/img/cupcake2.jpeg',
        'assets/img/cupcake3.jpeg',
      ],
      'description': 'A cupcake is a small, sweet baked good topped with frosting. You might bake cupcakes for your best friend\'s birthday. When you make cupcakes, you mix up cake batter and instead of baking it in large pans, pour it into the small, paper-lined indentations in a cupcake or muffin pan.',
    },
    {
      'itemName': 'Cookies',
      'price': '100/-',
      'images': [
        'assets/img/cookies1.jpeg',
        'assets/img/cookies2.jpeg',
        'assets/img/cookies3.jpeg',
      ],
      'description': 'Cookies appear to have their origins in 7th century AD Persia, shortly after the use of sugar became relatively common in the region. They spread to Europe through the Muslim conquest of Spain. By the 14th century, they were common in all levels of society throughout Europe, from royal cuisine to street vendors.',
    },
    {
      'itemName': 'Donut',
      'price': '70/-',
      'images': [
        'assets/img/donut1.jpeg',
        'assets/img/donut2.jpeg',
        'assets/img/donut3.jpeg',
      ],
      'description': 'Hanson Gregory, an American, claimed to have invented the ring-shaped doughnut in 1847 aboard a lime-trading ship when he was 16 years old. Gregory was dissatisfied with the greasiness of doughnuts twisted into various shapes and with the raw center of regular doughnuts.',
    },
    {
      'itemName': 'Puff',
      'price': '25/-',
      'images': [
        'assets/img/puff1.jpeg',
        'assets/img/puff2.jpeg',
        'assets/img/puff3.jpeg',
      ],
      'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas rutrum tempor urna ac tempor. In porta et nunc nec mattis. Nunc placerat, lectus non pretium consectetur, orci quam imperdiet felis, maximus hendrerit erat metus at purus. Nam vel felis lobortis, aliquet lacus non, placerat velit. Morbi porta mi non dui iaculis maximus.',
    },
    {
      'itemName': 'Bread',
      'price': '30/-',
      'images': [
        'assets/img/bread1.jpeg',
        'assets/img/bread2.jpeg',
        'assets/img/bread3.jpeg',
      ],
      'description': 'Wheat was domesticated in the Fertile Crescent. Bread is found in Neolithic sites in Turkey and Europe from around 9,100 years ago. Conical loaves of bread as grave goods exactly as laid out in the Great Tomb, North Necropolis, Gebelein, 5th Dynasty (Old Kingdom), 2435–2305 BC.',
    },
    {
      'itemName': 'Buns',
      'price': '35/-',
      'images': [
        'assets/img/buns1.jpeg',
        'assets/img/buns2.jpeg',
      ],
      'description': 'A bun is a type of bread roll, typically filled with savory fillings (for example hamburger). A bun may also refer to a sweet cake in certain parts of the world. Though they come in many shapes and sizes, buns are most commonly round, and are generally hand-sized or smaller.',
    },
  ];
  List<Map<String, dynamic>> searchResults = [];

  @override
  void initState() {
    super.initState();
    searchResults = bakeryProducts; // Initialize with all products
  }

  void _performSearch(String query) {
    setState(() {
      if (query.isEmpty) {
        // If the query is empty, show all products
        searchResults = bakeryProducts;
      } else {
        // Filter products based on the search query
        searchResults = bakeryProducts
            .where((product) =>
        product['itemName']
            .toLowerCase()
            .contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade200,
        title: Text("Search Page"),
      ),
      backgroundColor: Colors.orange.shade50,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              onChanged: _performSearch,
              decoration: InputDecoration(
                labelText: "Search",
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: SearchResults(bakeryProducts: searchResults),
          ),
        ],
      ),
    );
  }
}

class SearchResults extends StatelessWidget {
  final List<Map<String, dynamic>> bakeryProducts;

  SearchResults({required this.bakeryProducts});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: bakeryProducts.length,
      itemBuilder: (context, index) {
        // Build your UI for each search result item
        return ListTile(
          title: Text(bakeryProducts[index]['itemName']),

          onTap: () {

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(
                  images: bakeryProducts[index]['images'],
                  title: bakeryProducts[index]['itemName'],
                  description: bakeryProducts[index]['description'],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
