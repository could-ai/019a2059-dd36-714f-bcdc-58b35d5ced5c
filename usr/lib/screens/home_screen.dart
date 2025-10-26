import 'package:flutter/material.dart';
import '../models/vegetable.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Vegetable> _vegetables = [
    Vegetable(name: 'Tomato', price: 2.5, imagePath: 'assets/images/tomato.png'),
    Vegetable(name: 'Broccoli', price: 1.8, imagePath: 'assets/images/broccoli.png'),
    Vegetable(name: 'Carrot', price: 1.2, imagePath: 'assets/images/carrot.png'),
    Vegetable(name: 'Cucumber', price: 1.0, imagePath: 'assets/images/cucumber.png'),
    Vegetable(name: 'Bell Pepper', price: 2.0, imagePath: 'assets/images/bell_pepper.png'),
    Vegetable(name: 'Spinach', price: 3.0, imagePath: 'assets/images/spinach.png'),
    Vegetable(name: 'Onion', price: 0.8, imagePath: 'assets/images/onion.png'),
    Vegetable(name: 'Potato', price: 1.5, imagePath: 'assets/images/potato.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vegetables'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: _vegetables.length,
        itemBuilder: (context, index) {
          final vegetable = _vegetables[index];
          return Card(
            elevation: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Image for ${vegetable.name}',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    vegetable.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 8.0),
                  child: Text(
                    '\$${vegetable.price.toStringAsFixed(2)} / kg',
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to cart or show cart details
        },
        tooltip: 'Shopping Cart',
        child: const Icon(Icons.shopping_cart),
      ),
    );
  }
}
