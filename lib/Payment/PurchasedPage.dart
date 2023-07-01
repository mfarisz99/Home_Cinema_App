import 'package:flutter/material.dart';

import '../MovieWatchingPage.dart';

class PurchasedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.black87,
      body: ListView(
        children: [
          PurchasedCard(
            poster: 'assets/movieposter1.jpg',
            title: 'Avengers: End Game',
            subscriptionPeriod: '24 Hours',
            price: '\Rm24.99',
            onWatchPressed: () {
              // Perform action when watch button is pressed
              // e.g., navigate to the watching page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MovieWatchingPage()),
              );
            },
          ),
          PurchasedCard(
            poster: 'assets/035806bf16d1b69.jpg',
            title: 'It Boys The Movie',
            subscriptionPeriod: '46 Hours',
            price: 'Rm20.50',
            onWatchPressed: () {
              // Perform action when watch button is pressed
              // e.g., navigate to the watching page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MovieWatchingPage()),
              );
            },
          ),
          // Add more PurchasedCard widgets for other movies
        ],
      ),
    );
  }
}

class PurchasedCard extends StatelessWidget {
  final String poster;
  final String title;
  final String subscriptionPeriod;
  final String price;
  final VoidCallback onWatchPressed;

  PurchasedCard({
    required this.poster,
    required this.title,
    required this.subscriptionPeriod,
    required this.price,
    required this.onWatchPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.asset(
            poster,
            width: 50,
            height: 120,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(title),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Subscription Period: $subscriptionPeriod'),
            Text('Price: $price'),
          ],
        ),
        trailing: ElevatedButton(
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.red.shade700),),
          onPressed: onWatchPressed,
          child: Text('Watch Now !'),
        ),
      ),
    );
  }
}