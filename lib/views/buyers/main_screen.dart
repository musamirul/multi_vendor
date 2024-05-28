import 'package:flutter/material.dart';
import 'package:multi_vendor/views/buyers/nav_screens/account_screen.dart';
import 'package:multi_vendor/views/buyers/nav_screens/cart_screen.dart';
import 'package:multi_vendor/views/buyers/nav_screens/category_screen.dart';
import 'package:multi_vendor/views/buyers/nav_screens/home_screen.dart';
import 'package:multi_vendor/views/buyers/nav_screens/search_screen.dart';
import 'package:multi_vendor/views/buyers/nav_screens/store_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex = 0;

  List<Widget> _pages = [
    HomeScreen(),
    CategoryScreen(),
    StoreScreen(),
    CartScreen(),
    SearchScreen(),
    AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          currentIndex: _pageIndex,
          onTap: (value) {
            setState(() {
              _pageIndex = value;
            });
          },
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.yellow.shade900,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore), label: 'CATEGORIES'),
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'STORE'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'CART'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'SEARCH'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: 'ACCOUNT'),
          ]),
      body: _pages[_pageIndex],
    );
  }
}
