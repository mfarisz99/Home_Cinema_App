import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Payment/PurchasedPage.dart';
import 'MovieListScreen.dart';
import 'ProfileScreen.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;

  List<Widget> _pages = [
    MovieListScreen(),
    PurchasedPage(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: SizedBox(
        height: 45,
        child: BottomNavigationBar(
          selectedItemColor: Colors.yellow[700],
          unselectedItemColor: Colors.white24,
          backgroundColor: Colors.black87,
          iconSize: 15.0,
          selectedFontSize: 13,
          unselectedFontSize: 9,


          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.movie_filter_outlined, size: 15),
              label: 'Movie',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt_long_outlined, size: 15),
              label: 'Purchased',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 15),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}

